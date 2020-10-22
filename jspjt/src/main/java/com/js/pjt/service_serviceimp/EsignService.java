package com.js.pjt.service_serviceimp;

import java.util.HashMap;
import java.util.List;

import com.js.pjt.vo.EsignVO;

public interface EsignService {
	public HashMap<String, Object> getDocTitle(int docNo);
	public void insertDoc(EsignVO vo);
	public List<HashMap<String, Object>> getEsignList();
	public HashMap<String, Object> viewEsign(int authNo);
}
