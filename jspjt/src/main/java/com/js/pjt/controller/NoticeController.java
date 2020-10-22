package com.js.pjt.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.util.HtmlUtils;

import com.js.pjt.service_serviceimp.NoticeService;
import com.js.pjt.util.Pager;
import com.js.pjt.vo.NoticeVO;

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
		Map<String, Object> pagerMap=new HashMap<String, Object>();
		int totalBoard=noticeService.getNoticeCount(pagerMap);
		int pageSize=5;
		int blockSize=5;
		
		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		
		pagerMap.put("startRow", pager.getStartRow());
		pagerMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("restNoticeList", noticeService.getNoticeList(pagerMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	
	@RequestMapping(value="/notice_search", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> noticeSearchList(@RequestParam(defaultValue = "1")int pageNum,
			@RequestParam String search, @RequestParam(defaultValue = "") String keyword){
		Map<String, Object> searchMap= new HashMap<String, Object>();
		searchMap.put("search", search);
		searchMap.put("keyword", keyword);
		System.out.println(searchMap.get("search")); //여기들어간 값부터가 null임...
		System.out.println(searchMap.get("keyword")); //여기들어간 값부터가 null임...
		int totalBoard=noticeService.getNoticeCount(searchMap);
		int pageSize=5;
		int blockSize=5;

		Pager pager=new Pager(pageNum, totalBoard, pageSize, blockSize);
		searchMap.put("startRow", pager.getStartRow());
		searchMap.put("endRow", pager.getEndRow());
		
		Map<String, Object> returnMap=new HashMap<String, Object>();
		returnMap.put("restNoticeList", noticeService.getNoticeList(searchMap));
		returnMap.put("pager", pager);
		
		return returnMap;
	}
	
	@RequestMapping(value = "/notice_add", method = RequestMethod.POST)
	@ResponseBody
	public String addNotice(@RequestBody NoticeVO notice) {
		notice.setContent(HtmlUtils.htmlEscape(notice.getContent()));
		noticeService.addNotice(notice);
		return "success";
	}
	
	@RequestMapping(value = "/notice_modify/{noticeNo}", method = RequestMethod.GET)
	@ResponseBody
	public NoticeVO modifyNotice(@PathVariable int noticeNo) {
		return noticeService.getNotice(noticeNo);
	}
	
	@RequestMapping(value = "/notice_modify", method = {RequestMethod.PUT, RequestMethod.PATCH})
	@ResponseBody
	public String noticeModify(@RequestBody NoticeVO notice) {
		noticeService.modifyNotice(notice);
		return "success";
	}
	
	@RequestMapping(value = "/notice_remove/{noticeNo}", method = RequestMethod.DELETE)
	@ResponseBody
	public String noticeRemove(@PathVariable int noticeNo) {
		noticeService.removeNotice(noticeNo);
		return "success";
	}
}

