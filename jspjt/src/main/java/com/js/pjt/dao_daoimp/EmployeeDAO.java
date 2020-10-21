package com.js.pjt.dao_daoimp;

import java.util.List;

import com.js.pjt.vo.EmployeeVO;

public interface EmployeeDAO {
	int insertEmployee(EmployeeVO employee);
	int updateEmployee(EmployeeVO employee);
	EmployeeVO selectEmployee(int empNo);
	List<EmployeeVO> selectEmployeeList();
}
