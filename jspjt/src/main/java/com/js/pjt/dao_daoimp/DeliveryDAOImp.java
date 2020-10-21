package com.js.pjt.dao_daoimp;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.DeliveryMapper;
import com.js.pjt.vo.DeliverySearchVO;
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
		return sqlSession.getMapper(DeliveryMapper.class).selectDelivery(dlvrNo);
	}

	@Override
	public List<DeliveryVO> selectListDelivery() throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).selectListDelivery();
	}

	@Override
	public int updateDelivery(DeliveryVO delivery) throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).updateDelivery(delivery);
	}

	@Override
	public int deleteDelivery(int dlvrNo) throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).deleteDelivery(dlvrNo);
	}

	@Override
	public List<DeliveryVO> ListDO() throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).ListDO();
	}

	@Override
	public List<DeliveryVO> searchListDO(DeliverySearchVO vo) throws Exception {
		return sqlSession.getMapper(DeliveryMapper.class).searchListDO(vo);
	}

	
	
}