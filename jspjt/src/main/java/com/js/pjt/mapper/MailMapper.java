package com.js.pjt.mapper;

import java.util.HashMap;
import java.util.List;

import com.js.pjt.vo.MailVO;

public interface MailMapper {
	public List<HashMap<String, Object>> getMail(int empNo); 
	public void sendMail(MailVO vo);
	public List<HashMap<String, Object>> getSendMailList(int empNo);
	public HashMap<String, Object> getSendMailCount(int empNo);
	public HashMap<String, Object> getMailCount(int empNo);
	public List<HashMap<String, Object>> deptMemberList(int deptNo);
	public HashMap<String, Object> viewMail(int msgNo);
	public void mailReadCheck(int msgNo);
}
