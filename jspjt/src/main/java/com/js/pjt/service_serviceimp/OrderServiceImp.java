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
	public OrderVO deleteOrder(int ordNo) {
		orderDAO.deleteOrder(ordNo);
		return null;
	}


	@Transactional
	@Override
	public List<OrderVO> selectOrderList() {
		
		return orderDAO.selectOrderList();
	}

	@Transactional
	@Override
	public OrderVO selectCustOrder(String ordCustNm) {
		return orderDAO.selectCustOrder(ordCustNm);
	}

	@Transactional
	@Override
	public OrderVO selectProdOrder(String ordProdNm) {
		return orderDAO.selectProdOrder(ordProdNm);
	}


	@Override
	public List<OrderVO> selectOrder(String ordProdNm, String ordCustNm) {
		return orderDAO.selectOrder(ordProdNm, ordCustNm);
	}


	@Override
	public List<OrderVO> selectAndOrder(String ordProdNm, String ordCustNm) {
		return orderDAO.selectAndOrder(ordProdNm, ordCustNm);
	}

}
