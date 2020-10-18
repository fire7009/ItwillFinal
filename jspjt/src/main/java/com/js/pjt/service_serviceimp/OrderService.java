package com.js.pjt.service_serviceimp;

import java.util.List;

import com.js.pjt.vo.OrderVO;

public interface OrderService {
	OrderVO deleteOrder(int ordNo);
	OrderVO selectCustOrder(String ordCustNm);
	OrderVO selectProdOrder(String ordProdNm);
	List<OrderVO> selectAndOrder(String ordProdNm,String ordCustNm);
	List<OrderVO> selectOrder(String ordProdNm, String ordCustNm);
	List<OrderVO> selectOrderList();

}
