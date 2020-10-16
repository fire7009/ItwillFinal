package com.js.pjt.dao_daoimp;


import java.util.HashMap;
import java.util.List;


import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.TestMapper;
import com.js.pjt.vo.MailVO;
import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;


@Repository
public class TestDAOImp implements TestDAO {
	
	@Inject
	private SqlSession sqlSession;

	
	@Override
	public List<TestVO> getList1() throws Exception {
		// TODO Auto-generated method stub
		
		return sqlSession.getMapper(TestMapper.class).getList1();
	}


	@Override
	public List<HashMap<String, Object>> getList() throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(TestMapper.class).getList();
	}


	@Override
	public void addEvent(ScheduleVO vo) throws Exception {
		sqlSession.getMapper(TestMapper.class).addEvent(vo);
		
	}


	@Override
	public List<HashMap<String, Object>> getMail() throws Exception {
		
		return sqlSession.getMapper(TestMapper.class).getMail1();
	}


	@Override
	public void sendMail(MailVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.getMapper(TestMapper.class).sendMail(vo);
	}


	@Override
	public List<HashMap<String, Object>> getSendMailList() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(TestMapper.class).getSendMailList();
	}


	@Override
	public HashMap<String, Object> getSendMailCount() {
		
		return sqlSession.getMapper(TestMapper.class).getSendMailCount();
	}


	@Override
	public HashMap<String, Object> getMailCount() {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(TestMapper.class).getMailCount();
	}


	
	
  
}
