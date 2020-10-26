package com.js.pjt.dao_daoimp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.EsignMapper;
import com.js.pjt.mapper.TestMapper;
import com.js.pjt.vo.EsignAprVO;
import com.js.pjt.vo.EsignVO;

@Repository
public class EsignDAOImp implements EsignDAO {

	@Inject
	private SqlSession sqlSession;
	
	@Override
	public HashMap<String, Object> getDocTitle(int docNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EsignMapper.class).getDocTitle(docNo);
	}

	@Override
	public void insertDoc(EsignVO vo) {
		sqlSession.getMapper(EsignMapper.class).insertDoc(vo);
		
	}

	@Override
	public List<HashMap<String, Object>> getEsignList(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EsignMapper.class).getEsignList(empNo);
	}

	@Override
	public HashMap<String, Object> viewEsign(int authNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EsignMapper.class).viewEsign(authNo);
	}

	@Override
	public List<HashMap<String, Object>> reqApproveList(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EsignMapper.class).reqApproveList(empNo);
	}

	
	@Override
	public void updateApprove(EsignAprVO vo) {
		// TODO Auto-generated method stub
		sqlSession.getMapper(EsignMapper.class).updateApprove(vo);
	}

	@Override
	public void addApproveEsign(EsignAprVO vo) {
		// TODO Auto-generated method stub
		sqlSession.getMapper(EsignMapper.class).addApproveEsign(vo);
	}

	@Override
	public HashMap<String, Object> waitCount(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EsignMapper.class).waitCount(empNo);
	}

	@Override
	public HashMap<String, Object> returnCount(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EsignMapper.class).returnCount(empNo);
	}

}
