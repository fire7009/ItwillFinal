package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("lgnId", employee.getLgnId());
		map.put("empNo", employee.getEmpNo());
		if(employeeDAO.selectEmployee(map)!=null) {
			throw new EmployeeExistsException(employee, "이미 사용중인 아이디를 입력 하였습니다.");
		}
		employee.setPasswd(BCrypt.hashpw(employee.getPasswd(), BCrypt.gensalt()));
		employeeDAO.insertEmployee(employee);
	}
	
	@Transactional
	@Override
	public void modifyEmployee(EmployeeVO employee) throws EmployeeNotFoundException {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("lgnId", employee.getLgnId());
		map.put("empNo", employee.getEmpNo());
		if(employeeDAO.selectEmployee(map)==null) {
			throw new EmployeeNotFoundException("해당 사원번호와 일치하는 정보가 존재하지 않습니다.");
		}
		
		employeeDAO.updateEmployee(employee);
	}

	@Override
	public EmployeeVO getEmployee(Map<String, Object> map) throws EmployeeNotFoundException {
		EmployeeVO employee=employeeDAO.selectEmployee(map);
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
	public void loginAuth(Map<String, Object> map) throws LoginAuthFailException {
		EmployeeVO authEmployee=employeeDAO.selectEmployee(map);
		if(authEmployee==null) {
			throw new LoginAuthFailException((String)map.get("lgnId"), "아이디의 사원정보가 존재하지 않습니다.");
		}
		if(!BCrypt.checkpw((String)map.get("passwd"), authEmployee.getPasswd())) {
			throw new LoginAuthFailException((String)map.get("lgnId"), "아이디가 없거나 비밀번호가 일치하지 않습니다.");
		}
	}

	@Override
	public EmployeeVO selectIdChech(String lgnId) {
		return employeeDAO.selectIdChech(lgnId);
	}

	@Override
	public String selectLoginCheck(Map<String, Object> map) {
		System.out.println("(String)map.get(\"lgnId\") = "+(String)map.get("lgnId"));
		EmployeeVO employee=employeeDAO.selectIdChech((String)map.get("lgnId"));
		if(employee==null) {
			return "none";
		} else if(!BCrypt.checkpw((String)map.get("passwd"), employee.getPasswd())) {
			return "pwmiss";
		} else {
			return "success";
		}
	}
}
