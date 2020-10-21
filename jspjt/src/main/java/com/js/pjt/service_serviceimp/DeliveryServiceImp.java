package com.js.pjt.service_serviceimp;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.js.pjt.dao_daoimp.DeliveryDAO;
import com.js.pjt.vo.DeliveryVO;

@Service
public class DeliveryServiceImp implements DeliveryService {

	@Inject
	private DeliveryDAO dao;

	@Override
	public int insertDelivery(DeliveryVO delivery) throws Exception {
		return dao.insertDelivery(delivery);
	}

	@Override
	public DeliveryVO selectDelivery(int dlvrNo) throws Exception {
		return dao.selectDelivery(dlvrNo);
	}

	@Override
	public List<DeliveryVO> selectListDelivery() throws Exception {
		return dao.selectListDelivery();
	}



	@Override
	public int deleteDelivery(int dlvrNo) throws Exception {
		return dao.deleteDelivery(dlvrNo);
	}

	@Override
	public int updateDelivery(DeliveryVO delivery) throws Exception {
		return dao.updateDelivery(delivery);
	}
	
}
