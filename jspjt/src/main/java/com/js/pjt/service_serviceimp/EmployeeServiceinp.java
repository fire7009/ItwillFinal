package com.js.pjt.service_serviceimp;

import java.util.List;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.js.pjt.dao_daoimp.EmployeeDAO;
import com.js.pjt.exception.EmployeeExistsException;
import com.js.pjt.exception.EmployeeNotFoundException;
import com.js.pjt.exception.LoginAuthFailException;
import com.js.pjt.vo.EmployeeVO;

@Service
public class EmployeeServiceinp implements EmployeeService {
	@Autowired
	private EmployeeDAO employeeDAO;

	@Transactional
	@Override
	public void addEmployee(EmployeeVO employee) throws EmployeeExistsException {
		if(employeeDAO.selectEmployee(employee.getEmpNo())!=null) {
			throw new EmployeeExistsException(employee, "이미 사용중인 아이디를 입력 하였습니다.");
		}
		employee.setPasswd(BCrypt.hashpw(employee.getPasswd(), BCrypt.gensalt()));
		employeeDAO.insertEmployee(employee);
	}
	
	@Transactional
	@Override
	public void modifyEmployee(EmployeeVO employee) throws EmployeeNotFoundException {
		if(employeeDAO.selectEmployee(employee.getEmpNo())==null) {
			throw new EmployeeNotFoundException("해당 사원번호와 일치하는 정보가 존재하지 않습니다.");
		}
		
		employeeDAO.updateEmployee(employee);
	}

	@Override
	public EmployeeVO getEmployee(int empNo) throws EmployeeNotFoundException {
		EmployeeVO employee=employeeDAO.selectEmployee(empNo);
		if(employee==null) {
			throw new EmployeeNotFoundException("해당 사원번호와 일치하는 정보가 존재하지 않습니다.");
		}
		return employee;
	}

	@Override
	public List<EmployeeVO> getEmployeeList() {
		return employeeDAO.selectEmployeeList();
	}

	@Override
	public void loginAuth(EmployeeVO employee) throws LoginAuthFailException {
		EmployeeVO authEmployee=employeeDAO.selectEmployee(employee.getEmpNo());
		if(authEmployee==null) {
			throw new LoginAuthFailException(employee.getLgnId(), "아이디의 사원정보가 존재하지 않습니다.");
		}
		
		if(!BCrypt.checkpw(employee.getPasswd(), authEmployee.getPasswd())) {
			throw new LoginAuthFailException(employee.getLgnId(), "아이디가 없거나 비밀번호가 일치하지 않습니다.");
		}
	}
}
