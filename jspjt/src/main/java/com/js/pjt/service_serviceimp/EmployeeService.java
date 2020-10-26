package com.js.pjt.service_serviceimp;

import java.util.List;
import java.util.Map;

import com.js.pjt.exception.EmployeeExistsException;
import com.js.pjt.exception.EmployeeNotFoundException;
import com.js.pjt.exception.LoginAuthFailException;
import com.js.pjt.vo.EmployeeVO;


public interface EmployeeService {
	void addEmployee(EmployeeVO employee) throws EmployeeExistsException;
	void modifyEmployee(EmployeeVO employee) throws EmployeeNotFoundException;
	EmployeeVO getEmployee(Map<String, Object> map) throws EmployeeNotFoundException;
	EmployeeVO selectIdChech(String lgnId);
	String selectLoginCheck(Map<String, Object> map);
	int selectEmpCount(Map<String, Object> map);
	List<EmployeeVO> getEmployeeList(Map<String, Object> map);
	void loginAuth(Map<String, Object> map) throws LoginAuthFailException;
}
