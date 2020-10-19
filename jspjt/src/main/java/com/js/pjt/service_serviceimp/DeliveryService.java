package com.js.pjt.service_serviceimp;

import java.util.List;

import com.js.pjt.vo.DeliveryVO;


public interface DeliveryService {
	public void insertDelivery(DeliveryVO delivery)throws Exception;
	public DeliveryVO selectDelivery(int dlvrNo)throws Exception;
	public List<DeliveryVO>selectListDelivery()throws Exception;
	public void updateDelivery(String dlvrCmplYn)throws Exception;
	public void deleteDelivery(int dlvrNo)throws Exception;
}
