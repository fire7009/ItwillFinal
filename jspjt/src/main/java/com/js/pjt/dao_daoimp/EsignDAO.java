package com.js.pjt.dao_daoimp;

import java.util.HashMap;
import java.util.List;

import com.js.pjt.vo.EsignVO;

public interface EsignDAO {
	public HashMap<String, Object> getDocTitle(int docNo);
	public void insertDoc(EsignVO vo);
	public List<HashMap<String, Object>> getEsignList();
	public HashMap<String, Object> viewEsign(int authNo);
}
