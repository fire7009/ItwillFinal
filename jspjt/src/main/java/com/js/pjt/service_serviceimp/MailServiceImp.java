package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.js.pjt.dao_daoimp.MailDAO;
import com.js.pjt.dao_daoimp.TestDAO;
import com.js.pjt.vo.MailVO;

@Service
public class MailServiceImp  implements MailService{
	@Inject
	private MailDAO dao;

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



	@Override
	public List<HashMap<String, Object>> deptMemberList(int deptNo) {
		// TODO Auto-generated method stub
		return dao.deptMemberList(deptNo);
	}



	@Override
	public HashMap<String, Object> viewMail(int msgNo) {
		// TODO Auto-generated method stub
		return dao.viewMail(msgNo);
	}



	@Override
	public void mailReadCheck(int msgNo) {
		dao.mailReadCheck(msgNo);
		
	}

	
}
