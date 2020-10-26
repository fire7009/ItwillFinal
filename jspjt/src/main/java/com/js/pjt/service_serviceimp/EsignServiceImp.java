package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import com.js.pjt.dao_daoimp.EsignDAO;
import com.js.pjt.vo.EsignAprVO;
import com.js.pjt.vo.EsignVO;

@Service
public class EsignServiceImp implements EsignService {
	
	@Inject
	private EsignDAO dao;

	public HashMap<String, Object> getDocTitle(int docNo) {
		// TODO Auto-generated method stub
		return dao.getDocTitle(docNo);

	}

	@Override
	public void insertDoc(EsignVO vo) {
		dao.insertDoc(vo);
		
	}

	@Override
	public List<HashMap<String, Object>> getEsignList(int empNo) {
		// TODO Auto-generated method stub
		return dao.getEsignList(empNo);
	}

	@Override
	public HashMap<String, Object> viewEsign(int authNo) {
		// TODO Auto-generated method stub
		return dao.viewEsign(authNo);
	}

	@Override
	public List<HashMap<String, Object>> reqApproveList(int empNo) {
		// TODO Auto-generated method stub
		return dao.reqApproveList(empNo);
	}
	

	@Override
	public void updateApprove(EsignAprVO vo) {
		dao.updateApprove(vo);
		
	}

	@Override
	public void addApproveEsign(EsignAprVO vo) {
		// TODO Auto-generated method stub
		dao.addApproveEsign(vo);
	}

	@Override
	public HashMap<String, Object> waitCount(int empNo) {
		// TODO Auto-generated method stub
		return dao.waitCount(empNo);
	}

	@Override
	public HashMap<String, Object> returnCount(int empNo) {
		// TODO Auto-generated method stub
		return dao.returnCount(empNo);
	}

	

	

}
