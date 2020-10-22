package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;

import com.js.pjt.dao_daoimp.EsignDAO;
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
	public List<HashMap<String, Object>> getEsignList() {
		// TODO Auto-generated method stub
		return dao.getEsignList();
	}

	@Override
	public HashMap<String, Object> viewEsign(int authNo) {
		// TODO Auto-generated method stub
		return dao.viewEsign(authNo);
	}

}
