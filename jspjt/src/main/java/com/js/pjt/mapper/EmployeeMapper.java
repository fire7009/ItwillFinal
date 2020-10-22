package com.js.pjt.mapper;

import java.util.List;
import java.util.Map;

import com.js.pjt.vo.EmployeeVO;

public interface EmployeeMapper {
	int insertEmployee(EmployeeVO employee);
	int updateEmployee(EmployeeVO employee);
	EmployeeVO selectEmployee(Map<String, Object> map);
	List<EmployeeVO> selectEmployeeList();
}
