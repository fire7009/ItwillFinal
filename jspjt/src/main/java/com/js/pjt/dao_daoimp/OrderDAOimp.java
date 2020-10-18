package com.js.pjt.dao_daoimp;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.OrderMapper;
import com.js.pjt.vo.OrderVO;

@Repository
public class OrderDAOimp implements OrderDAO {
	@Autowired
	private SqlSession sqlSession;

	@Override
	public int deleteOrder(int ordNo) {
		return sqlSession.getMapper(OrderMapper.class).deleteOrder(ordNo);
	}

	@Override
	public List<OrderVO> selectOrderList() {
		return sqlSession.getMapper(OrderMapper.class).selectOrderList();
	}

	@Override
	public OrderVO selectCustOrder(String ordCustNm) {
		return sqlSession.getMapper(OrderMapper.class).selectCustOrder(ordCustNm);
	}

	@Override
	public OrderVO selectProdOrder(String ordProdNm) {
		return sqlSession.getMapper(OrderMapper.class).selectProdOrder(ordProdNm);
	}

	@Override
	public List<OrderVO> selectOrder(String ordProdNm, String ordCustNm) {
		return sqlSession.getMapper(OrderMapper.class).selectOrder(ordProdNm, ordCustNm);
	}

	@Override
	public List<OrderVO> selectAndOrder(String ordProdNm, String ordCustNm) {
		return sqlSession.getMapper(OrderMapper.class).selectAndOrder(ordProdNm, ordCustNm);
	}

	
	
}
