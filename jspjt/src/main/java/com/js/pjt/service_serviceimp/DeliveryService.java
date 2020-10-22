package com.js.pjt.service_serviceimp;

import java.util.List;
import java.util.Map;


import com.js.pjt.vo.DeliveryVO;


public interface DeliveryService {
	public int insertDelivery(DeliveryVO delivery) throws Exception;
	public DeliveryVO selectDelivery(int dlvrNo) throws Exception;
	public List<DeliveryVO> selectListDelivery() throws Exception;
	public int updateDelivery(DeliveryVO delivery) throws Exception;
	public int deleteDelivery(int dlvrNo) throws Exception;
	public List<DeliveryVO> ListDO() throws Exception;
	public List<DeliveryVO> searchListDO(Map<String, Object> map) throws Exception;
}
