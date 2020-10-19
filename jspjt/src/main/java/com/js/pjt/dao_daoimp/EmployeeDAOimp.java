package com.js.pjt.dao_daoimp;

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

}
