package com.js.pjt.service_serviceimp;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.js.pjt.dao_daoimp.DeliveryDAO;
import com.js.pjt.vo.DeliveryVO;

@Repository
public class DeliveryServiceImp implements DeliveryService {

	@Inject
	private DeliveryDAO dao;

	@Override
	public void insertDelivery(DeliveryVO delivery) throws Exception {
		dao.insertDelivery(delivery);
	}

	@Override
	public DeliveryVO selectDelivery(int dlvr_no) throws Exception {
		return dao.selectDelivery(dlvr_no);
	}

	@Override
	public List<DeliveryVO> selectListDelivery() throws Exception {
		return dao.selectListDelivery();
	}

	@Override
	public void updateDelivery(String dlvrCmplYn) throws Exception {
		dao.updateDelivery(dlvrCmplYn);
	}

	@Override
	public void deleteDelivery(int dlvrNo) throws Exception {
		dao.deleteDelivery(dlvrNo);
	}
}
