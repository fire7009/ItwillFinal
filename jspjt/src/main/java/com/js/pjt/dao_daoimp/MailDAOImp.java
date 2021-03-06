package com.js.pjt.dao_daoimp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.js.pjt.mapper.MailMapper;

import com.js.pjt.vo.MailVO;


@Repository
public class MailDAOImp implements MailDAO {
	@Inject
	private SqlSession sqlSession;

	@Override
	public List<HashMap<String, Object>> getMail(int empNo) throws Exception {
		
		return sqlSession.getMapper(MailMapper.class).getMail(empNo);
	}


	@Override
	public void sendMail(MailVO vo) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.getMapper(MailMapper.class).sendMail(vo);
	}


	@Override
	public List<HashMap<String, Object>> getSendMailList(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(MailMapper.class).getSendMailList(empNo);
	}


	@Override
	public HashMap<String, Object> getSendMailCount(int empNo) {
		
		return sqlSession.getMapper(MailMapper.class).getSendMailCount(empNo);
	}


	@Override
	public HashMap<String, Object> getMailCount(int empNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(MailMapper.class).getMailCount(empNo);
	}


	@Override
	public List<HashMap<String, Object>> deptMemberList(int deptNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(MailMapper.class).deptMemberList(deptNo);
	}


	@Override
	public HashMap<String, Object> viewMail(int msgNo) {
		// TODO Auto-generated method stub
		return sqlSession.getMapper(MailMapper.class).viewMail(msgNo);
	}


	@Override
	public void mailReadCheck(int msgNo) {
		sqlSession.getMapper(MailMapper.class).mailReadCheck(msgNo);
		
	}

}
