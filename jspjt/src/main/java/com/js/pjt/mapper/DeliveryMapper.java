package com.js.pjt.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.js.pjt.vo.DeliveryVO;

public interface DeliveryMapper {
	public int insertDelivery(DeliveryVO delivery);
	public DeliveryVO selectDeliveryVO(int dlvrNo);
	public List<DeliveryVO> selectListDelivery();
	public int updateDelivery(String dlvrCmplYn);
	public int deleteDelivery(int dlvrNo);
	
}
