package com.js.pjt.mapper;

import java.util.HashMap;
import java.util.List;

import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;

public interface ScheduleMapper {
	public List<HashMap<String, Object>> getList(int empNo);
	public List<TestVO> getList1();
	public void addEvent(ScheduleVO vo);
}
