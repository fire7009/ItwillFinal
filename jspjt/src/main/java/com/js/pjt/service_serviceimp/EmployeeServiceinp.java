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
			throw new EmployeeExistsException(employee, "�̹� ������� ���̵� �Է� �Ͽ����ϴ�.");
		}
		employee.setPasswd(BCrypt.hashpw(employee.getPasswd(), BCrypt.gensalt()));
		employeeDAO.insertEmployee(employee);
	}
	
	@Transactional
	@Override
	public void modifyEmployee(EmployeeVO employee) throws EmployeeNotFoundException {
		if(employeeDAO.selectEmployee(employee.getEmpNo())==null) {
			throw new EmployeeNotFoundException("�ش� �����ȣ�� ��ġ�ϴ� ������ �������� �ʽ��ϴ�.");
		}
		
		employeeDAO.updateEmployee(employee);
	}

	@Override
	public EmployeeVO getEmployee(int empNo) throws EmployeeNotFoundException {
		EmployeeVO employee=employeeDAO.selectEmployee(empNo);
		if(employee==null) {
			throw new EmployeeNotFoundException("�ش� �����ȣ�� ��ġ�ϴ� ������ �������� �ʽ��ϴ�.");
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
			throw new LoginAuthFailException(employee.getLgnId(), "���̵��� ��������� �������� �ʽ��ϴ�.");
		}
		
		if(!BCrypt.checkpw(employee.getPasswd(), authEmployee.getPasswd())) {
			throw new LoginAuthFailException(employee.getLgnId(), "���̵� ���ų� ��й�ȣ�� ��ġ���� �ʽ��ϴ�.");
		}
	}
}
