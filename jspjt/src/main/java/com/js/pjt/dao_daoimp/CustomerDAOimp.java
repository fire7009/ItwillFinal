package com.js.pjt.dao_daoimp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.CustomerMapper;
import com.js.pjt.vo.CustomerVO;

@Repository
public class CustomerDAOimp implements CustomerDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public List<CustomerVO> selectCustomerList() {
		return sqlSession.getMapper(CustomerMapper.class).selectCustomerList();
	}
	
}
