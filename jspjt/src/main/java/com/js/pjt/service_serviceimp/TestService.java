package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;


import com.js.pjt.vo.MailVO;
import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;

public interface TestService {
	
	public   List<HashMap<String, Object>> getList() throws Exception;
	public List<TestVO> getList1()throws Exception ;
	public void addEvent(ScheduleVO vo)throws Exception;
	
	public List<HashMap<String, Object>> getMail() throws Exception;
	public void sendMail(MailVO vo)throws Exception;
	public List<HashMap<String, Object>> getSendMailList();
	public HashMap<String, Object> getSendMailCount();
	public HashMap<String, Object> getMailCount();
	public List<HashMap<String, Object>> deptMemberList(int deptNo);
	public HashMap<String, Object> viewMail(int msgNo);
	public void mailReadCheck(int msgNo);
	
	public HashMap<String, Object> getDocTitle(int docNo);
}
