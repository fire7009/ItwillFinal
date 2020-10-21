package com.js.pjt.controller;

import java.util.HashMap;
import java.util.List;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.TestService;

@Controller
@RequestMapping(value = "/esign")
public class EsignController {
	
	private static final Logger logger = LoggerFactory.getLogger(EsignController.class);
	
	@Inject
	TestService service;

	@RequestMapping(value = "/reqSign", method = RequestMethod.GET)
	public void GetEpayment() {

	}
	
	@RequestMapping(value = "/docSelect", method = RequestMethod.GET)
	@ResponseBody
	public HashMap<String, Object> getDetpMemberList(@RequestParam int docNo) throws Exception {
		
		logger.info("Welcome detpMemberList The client locale is {}.");
		System.out.println("deptNO==================================="+docNo);
		
		return service.getDocTitle(docNo);
	}
	
}
