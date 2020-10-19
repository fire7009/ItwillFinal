package com.js.pjt.mapper;


import java.util.HashMap;
import java.util.List;


import com.js.pjt.vo.MailVO;
import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;

public interface TestMapper {
	public List<HashMap<String, Object>> getList();
	public List<TestVO> getList1();
	public void addEvent(ScheduleVO vo);
	public List<HashMap<String, Object>> getMail1(); 
	public void sendMail(MailVO vo);
	public List<HashMap<String, Object>> getSendMailList();
	public HashMap<String, Object> getSendMailCount();
	public HashMap<String, Object> getMailCount();
	public List<HashMap<String, Object>> deptMemberList(int deptNo);
	public HashMap<String, Object> viewMail(int msgNo);
	public void mailReadCheck(int msgNo);
}
