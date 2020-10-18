package com.js.pjt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.js.pjt.vo.OrderVO;

public interface OrderMapper {
	int deleteOrder(int orderNo);
	OrderVO selectCustOrder(String ordCustNm);
	OrderVO selectProdOrder(String ordProdNm);
	List<OrderVO> selectAndOrder(@Param("ordProdNm") String ordProdNm, @Param("ordCustNm") String ordCustNm);
	List<OrderVO> selectOrder(@Param("ordProdNm") String ordProdNm, @Param("ordCustNm") String ordCustNm);
	List<OrderVO> selectOrderList();
}
