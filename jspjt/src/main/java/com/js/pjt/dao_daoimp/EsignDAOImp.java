package com.js.pjt.dao_daoimp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.EsignMapper;
import com.js.pjt.mapper.TestMapper;
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
	public List<HashMap<String, Object>> getEsignList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EsignMapper.class).getEsignList();
	}

	@Override
	public HashMap<String, Object> viewEsign(int authNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(EsignMapper.class).viewEsign(authNo);
	}

}
