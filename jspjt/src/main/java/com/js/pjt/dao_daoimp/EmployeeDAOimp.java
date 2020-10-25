package com.js.pjt.dao_daoimp;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.EmployeeMapper;
import com.js.pjt.vo.EmployeeVO;

@Repository
public class EmployeeDAOimp implements EmployeeDAO {
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public int insertEmployee(EmployeeVO employee) {
		return sqlSession.getMapper(EmployeeMapper.class).insertEmployee(employee);
	}

	@Override
	public int updateEmployee(EmployeeVO employee) {
		return sqlSession.getMapper(EmployeeMapper.class).updateEmployee(employee);
	}

	@Override
	public EmployeeVO selectEmployee(Map<String, Object> map) {
		return sqlSession.getMapper(EmployeeMapper.class).selectEmployee(map);
	}

	@Override
	public List<EmployeeVO> selectEmployeeList(Map<String, Object> map) {
		return sqlSession.getMapper(EmployeeMapper.class).selectEmployeeList(map);
	}

	@Override
	public EmployeeVO selectIdChech(String lgnId) {
		return sqlSession.getMapper(EmployeeMapper.class).selectIdChech(lgnId);
	}

	@Override
	public int selectEmpCount(Map<String, Object> map) {
		return sqlSession.getMapper(EmployeeMapper.class).selectEmpCount(map);
	}

}
