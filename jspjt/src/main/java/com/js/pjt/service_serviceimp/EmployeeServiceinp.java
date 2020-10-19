package com.js.pjt.service_serviceimp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.js.pjt.dao_daoimp.EmployeeDAO;
import com.js.pjt.vo.EmployeeVO;

@Service
public class EmployeeServiceinp implements EmployeeService {
	@Autowired
	private EmployeeDAO employeeDAO;
	
	@Transactional
	@Override
	public void addEmployee(EmployeeVO employee) {
		employeeDAO.insertEmployee(employee);
	}

}
