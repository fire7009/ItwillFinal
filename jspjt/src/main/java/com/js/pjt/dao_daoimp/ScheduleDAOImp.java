package com.js.pjt.dao_daoimp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.ScheduleMapper;

import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;

@Repository
public class ScheduleDAOImp implements ScheduleDAO{
	@Inject
	private SqlSession sqlSession;
	
	@Override
	public List<TestVO> getList1() throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSession.getMapper(ScheduleMapper.class).getList1();
	}


	@Override
	public List<HashMap<String, Object>> getList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(ScheduleMapper.class).getList();
	}


	@Override
	public void addEvent(ScheduleVO vo) throws Exception {
		sqlSession.getMapper(ScheduleMapper.class).addEvent(vo);
		
	}

}
