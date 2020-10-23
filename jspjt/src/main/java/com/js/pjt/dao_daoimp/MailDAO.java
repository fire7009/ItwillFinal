package com.js.pjt.dao_daoimp;

import java.util.HashMap;
import java.util.List;

import com.js.pjt.vo.MailVO;

public interface MailDAO {
	public List<HashMap<String, Object>> getMail(int empNo) throws Exception;
	public void sendMail(MailVO vo)throws Exception;
	public List<HashMap<String, Object>> getSendMailList(int empNo);
	public HashMap<String, Object> getSendMailCount(int empNo);
	public HashMap<String, Object> getMailCount(int empNo);
	public List<HashMap<String, Object>> deptMemberList(int deptNo);
	public HashMap<String, Object> viewMail(int msgNo);
	public void mailReadCheck(int msgNo);
}
