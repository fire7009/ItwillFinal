package com.js.pjt.service_serviceimp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.js.pjt.dao_daoimp.OrderDAO;
import com.js.pjt.vo.OrderVO;

@Service
public class OrderServiceImp implements OrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	@Transactional
	@Override
	public OrderVO addOrder(OrderVO order) {
		
		orderDAO.insertOrder(order);
		
		return orderDAO.selectOrder(order.getOrdNo());
	}
	
	@Transactional
	@Override
	public OrderVO updateOrder(String orderNo) {
		// TODO Auto-generated method stub
		return null;
	}
	
	@Transactional
	@Override
	public OrderVO deleteOrder(String orderNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	@Override
	public OrderVO selectOrder(String orderNo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	@Override
	public List<OrderVO> selectOrderList() {
		
		return orderDAO.selectOrderList();
	}

}
