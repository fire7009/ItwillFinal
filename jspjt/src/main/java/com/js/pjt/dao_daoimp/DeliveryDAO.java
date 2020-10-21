package com.js.pjt.dao_daoimp;

import java.util.List;

import com.js.pjt.vo.DeliverySearchVO;
import com.js.pjt.vo.DeliveryVO;


public interface DeliveryDAO {
	public int insertDelivery(DeliveryVO delivery) throws Exception;
	public DeliveryVO selectDelivery(int dlvrNo) throws Exception;
	public List<DeliveryVO> selectListDelivery() throws Exception;
	public int updateDelivery(DeliveryVO delivery) throws Exception;
	public int deleteDelivery(int dlvrNo) throws Exception;
	public List<DeliveryVO> ListDO() throws Exception;
	public List<DeliveryVO> searchListDO(DeliverySearchVO vo) throws Exception;
}
