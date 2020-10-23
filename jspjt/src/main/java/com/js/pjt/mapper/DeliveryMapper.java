package com.js.pjt.mapper;

import java.util.List;
import java.util.Map;

import com.js.pjt.vo.DeliveryVO;


public interface DeliveryMapper {
	public int insertDelivery(DeliveryVO delivery);
	public DeliveryVO selectDelivery(int dlvrNo);
	public List<DeliveryVO> selectListDelivery();
	public int updateDelivery(DeliveryVO delivery);
	public int deleteDelivery(int dlvrNo);
	public List<DeliveryVO> ListDO();
	public List<DeliveryVO> searchListDO(Map<String, Object> map);
	public int updateQty(DeliveryVO vo);
}
