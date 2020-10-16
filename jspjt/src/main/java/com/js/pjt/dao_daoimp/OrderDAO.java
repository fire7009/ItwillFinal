package com.js.pjt.dao_daoimp;

import java.util.List;

import com.js.pjt.vo.OrderVO;

public interface OrderDAO {
	int insertOrder(OrderVO order);
	int updateOrder(int orderNo,OrderVO order);
	int deleteOrder(int orderNo);
	OrderVO selectOrder(int orderNo);
	List<OrderVO> selectOrderList();
}
