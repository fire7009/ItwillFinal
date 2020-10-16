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
	public int insertOrder(OrderVO order) {
		return sqlSession.getMapper(OrderMapper.class).insertOrder(order);
	}

	@Override
	public int updateOrder(int orderNo, OrderVO order) {
		return sqlSession.getMapper(OrderMapper.class).updateOrder(orderNo, order);
	}

	@Override
	public int deleteOrder(int orderNo) {
		return sqlSession.getMapper(OrderMapper.class).deleteOrder(orderNo);
	}

	@Override
	public OrderVO selectOrder(int orderNo) {
		return sqlSession.getMapper(OrderMapper.class).selectOrder(orderNo);
	}

	@Override
	public List<OrderVO> selectOrderList() {
		return sqlSession.getMapper(OrderMapper.class).selectOrderList();
	}

	
}
