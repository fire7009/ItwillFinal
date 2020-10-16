package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;


import javax.inject.Inject;

import org.springframework.stereotype.Repository;

import com.js.pjt.dao_daoimp.TestDAO;
import com.js.pjt.vo.MailVO;
import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;



@Repository
public class TsetServiceImp implements TestService {
	
	@Inject
	private TestDAO dao;

	

	@Override
	public List<TestVO> getList1() throws Exception {
		// TODO Auto-generated method stub
		return dao.getList1();
	}



	@Override
	public List<HashMap<String, Object>> getList() throws Exception {
		// TODO Auto-generated method stub
		return dao.getList();
	}



	@Override
	public void addEvent(ScheduleVO vo) throws Exception {
		
		dao.addEvent(vo);
	}



	@Override
	public List<HashMap<String, Object>> getMail() throws Exception {
		// TODO Auto-generated method stub
		return dao.getMail();
	}



	@Override
	public void sendMail(MailVO vo) throws Exception {
		dao.sendMail(vo);
		
	}



	@Override
	public List<HashMap<String, Object>> getSendMailList() {
		// TODO Auto-generated method stub
		return dao.getSendMailList();
	}



	@Override
	public HashMap<String, Object> getSendMailCount() {
		// TODO Auto-generated method stub
		return dao.getSendMailCount();
	}



	@Override
	public HashMap<String, Object> getMailCount() {
		// TODO Auto-generated method stub
		return dao.getMailCount();
	}
	
	

}
