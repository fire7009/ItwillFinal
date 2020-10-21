package com.js.pjt.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.NoticeService;
import com.js.pjt.util.Pager;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping("/notice")
	public String noticeList() {
		return "notice/notice";
	}
	
	@RequestMapping(value="/notice_list", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> noticeList(@RequestParam(defaultValue = "1")int pageNum){
		System.out.println(pageNum);
		int totalBoard=noticeService.getNoticeCount();
		int pageSize=5;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("restNoticeList", noticeService.getNoticeList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
}
