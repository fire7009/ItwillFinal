package com.js.pjt.dao_daoimp;

import java.util.HashMap;
import java.util.List;

import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;

public interface ScheduleDAO {
	public  List<HashMap<String, Object>> getList() throws Exception;
	public List<TestVO> getList1()throws Exception ;
	public void addEvent(ScheduleVO vo)throws Exception;
}
