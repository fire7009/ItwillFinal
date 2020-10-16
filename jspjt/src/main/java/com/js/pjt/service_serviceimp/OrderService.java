package com.js.pjt.service_serviceimp;

import java.util.List;

import com.js.pjt.vo.OrderVO;

public interface OrderService {
	OrderVO addOrder(OrderVO order);
	OrderVO updateOrder(String orderNo);
	OrderVO deleteOrder(String orderNo);
	OrderVO selectOrder(String orderNo);
	List<OrderVO> selectOrderList();
}
