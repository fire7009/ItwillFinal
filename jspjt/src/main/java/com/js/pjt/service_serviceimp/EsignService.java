package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;

import com.js.pjt.vo.EsignAprVO;
import com.js.pjt.vo.EsignVO;

public interface EsignService {
	public HashMap<String, Object> getDocTitle(int docNo);
	public void insertDoc(EsignVO vo);
	public List<HashMap<String, Object>> getEsignList(int empNo);
	public List<HashMap<String, Object>> reqApproveList(int empNo);
	public HashMap<String, Object> viewEsign(int authNo);
	public void updateApprove(EsignAprVO vo);
	public void addApproveEsign(EsignAprVO vo);
}
