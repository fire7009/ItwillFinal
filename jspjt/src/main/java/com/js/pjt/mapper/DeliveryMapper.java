package com.js.pjt.mapper;

import java.util.List;

import com.js.pjt.vo.DeliveryVO;

public interface DeliveryMapper {
	public int insertDelivery(DeliveryVO delivery);
	public DeliveryVO selectDelivery(int dlvrNo);
	public List<DeliveryVO> selectListDelivery();
	public int updateDelivery(DeliveryVO delivery);
	public int deleteDelivery(int dlvrNo);
}
