package com.js.pjt.mapper;

import java.util.List;

import com.js.pjt.vo.EmployeeVO;

public interface EmployeeMapper {
	int insertEmployee(EmployeeVO employee);
	int updateEmployee(EmployeeVO employee);
	EmployeeVO selectEmployee(int empNo);
	List<EmployeeVO> selectEmployeeList();
}
