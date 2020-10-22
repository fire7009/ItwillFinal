package com.js.pjt.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.EsignService;
import com.js.pjt.service_serviceimp.TestService;
import com.js.pjt.vo.EsignVO;
import com.js.pjt.vo.ScheduleVO;

@Controller
@RequestMapping(value = "/esign")
public class EsignController {

	private static final Logger logger = LoggerFactory.getLogger(EsignController.class);

	// @Inject 
	// TestService service;
	@Inject
	EsignService service;

	@RequestMapping(value = "/reqSign", method = RequestMethod.GET)
	public void GetEpayment() {

	}

	@RequestMapping(value = "/eSignList", method = RequestMethod.GET)
	public void eSignList() {

	}
	
	@RequestMapping(value = "/viewEsign", method = RequestMethod.GET)
	public void viewEsign(@RequestParam int authNo,Model model) {
		System.out.println(service.viewEsign(authNo));
		model.addAttribute("Esign", service.viewEsign(authNo)); 
	}

	// ajax 해당부서 사원 가져오기
	@RequestMapping(value = "/docSelect", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> getDetpMemberList(@RequestParam int docNo) throws Exception {

		logger.info("Welcome docSelect The client locale is {}.");
		return service.getDocTitle(docNo);
	}

	// 결제문서 추가(요청)
	@RequestMapping(value = "/insertEsign", method = RequestMethod.POST)
	@ResponseBody
	public void addEvent(@ModelAttribute EsignVO vo) throws Exception {
		logger.info("Welcome insertEsign The client locale is {}.");
		System.out.println(vo.getTitle());
		service.insertDoc(vo);
	}

	// 결제문서 추가(요청)
	@RequestMapping(value = "/ReqEsignList", method = RequestMethod.GET)
	@ResponseBody
	public List<HashMap<String, Object>> getReqEsignList() throws Exception {
		logger.info("Welcome insertEsign The client locale is {}.");
		
		return service.getEsignList();
	}
	
	@RequestMapping(value = "/getEsign", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> getEsign(@RequestParam int authNo) throws Exception {

		logger.info("Welcome getEsign The client locale is {}.");
		return service.viewEsign(authNo);
	}
	
	

}
