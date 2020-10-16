package com.js.pjt.dao_daoimp;

import java.util.HashMap;
import java.util.List;


import com.js.pjt.vo.MailVO;
import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;

public interface TestDAO {
	public  List<HashMap<String, Object>> getList() throws Exception;
	public List<TestVO> getList1()throws Exception ;
	public void addEvent(ScheduleVO vo)throws Exception;
	public List<HashMap<String, Object>> getMail() throws Exception;
	public void sendMail(MailVO vo)throws Exception;
	public List<HashMap<String, Object>> getSendMailList();
	public HashMap<String, Object> getSendMailCount();
	public HashMap<String, Object> getMailCount();
}
