package com.js.pjt.dao_daoimp;

import java.util.List;

import com.js.pjt.vo.OrderVO;

public interface OrderDAO {
	int deleteOrder(int orderNo);
	OrderVO selectCustOrder(String ordCustNm);
	OrderVO selectProdOrder(String ordProdNm);
	List<OrderVO> selectAndOrder(String ordProdNm,String ordCustNm);
	List<OrderVO> selectOrder(String ordProdNm, String ordCustNm);
	List<OrderVO> selectOrderList();
}
