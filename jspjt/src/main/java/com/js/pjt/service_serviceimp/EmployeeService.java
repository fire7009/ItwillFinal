package com.js.pjt.service_serviceimp;

import java.util.List;

import com.js.pjt.exception.EmployeeExistsException;
import com.js.pjt.exception.EmployeeNotFoundException;
import com.js.pjt.exception.LoginAuthFailException;
import com.js.pjt.vo.EmployeeVO;


public interface EmployeeService {
	void addEmployee(EmployeeVO employee) throws EmployeeExistsException;
	void modifyEmployee(EmployeeVO employee) throws EmployeeNotFoundException;
	EmployeeVO getEmployee(int empNo) throws EmployeeNotFoundException;
	List<EmployeeVO> getEmployeeList();
	void loginAuth(EmployeeVO employee) throws LoginAuthFailException;
}
