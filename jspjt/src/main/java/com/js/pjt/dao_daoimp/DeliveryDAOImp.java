package com.js.pjt.dao_daoimp;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.DeliveryMapper;
import com.js.pjt.vo.DeliveryVO;

@Repository
public class DeliveryDAOImp implements DeliveryDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public int insertDelivery(DeliveryVO delivery) throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).insertDelivery(delivery);
	}

	@Override
	public DeliveryVO selectDelivery(int dlvrNo) throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).selectDeliveryVO(dlvrNo);
	}

	@Override
	public List<DeliveryVO> selectListDelivery() throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).selectListDelivery();
	}

	@Override
	public int updateDelivery(String dlvrCmplYn) throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).updateDelivery(dlvrCmplYn);
	}

	@Override
	public int deleteDelivery(int dlvrNo) throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).deleteDelivery(dlvrNo);
	}

}
