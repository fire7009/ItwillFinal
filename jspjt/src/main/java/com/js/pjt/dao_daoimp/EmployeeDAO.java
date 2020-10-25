package com.js.pjt.dao_daoimp;

import java.util.List;
import java.util.Map;

import com.js.pjt.vo.EmployeeVO;

public interface EmployeeDAO {
	int insertEmployee(EmployeeVO employee);
	int updateEmployee(EmployeeVO employee);
	EmployeeVO selectEmployee(Map<String, Object> map);
	EmployeeVO selectIdChech(String lgnId);
	int selectEmpCount(Map<String, Object> map);
	List<EmployeeVO> selectEmployeeList(Map<String, Object> map);
}
