package com.js.pjt.mapper;

import java.util.HashMap;
import java.util.List;

import com.js.pjt.vo.EsignVO;

public interface EsignMapper {
	public HashMap<String, Object> getDocTitle(int docNo);
	public void insertDoc(EsignVO vo);
	public List<HashMap<String, Object>> getEsignList();
	public HashMap<String, Object> viewEsign(int authNo);
}
