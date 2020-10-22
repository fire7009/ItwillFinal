package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import com.js.pjt.dao_daoimp.ScheduleDAO;

import com.js.pjt.vo.ScheduleVO;
import com.js.pjt.vo.TestVO;

@Service
public class ScheduleServiceImp implements ScheduleService{
	@Inject
	private ScheduleDAO dao;
	
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

}
