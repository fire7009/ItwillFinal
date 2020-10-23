package com.js.pjt.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Locale;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.MailService;
import com.js.pjt.service_serviceimp.TestService;
import com.js.pjt.vo.TestVO;



@Controller

public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	MailService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		//List<TestVO> vo= service.getL ist1();
		//model.addAttribute("list", vo);
		return "main";
	}
	
	
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public String getmain(HttpSession session, Model model) {
		
		if(session.getAttribute("loginUserInfo")==null) {
			return "redirect:/";
		}
		
		return "/main";
	}
	
	// ajax���� ����Ʈ �޼ҵ�
		@RequestMapping(value = "/myevent", method = RequestMethod.GET)
		public @ResponseBody List<HashMap<String, Object>> mtevent(@RequestParam int empNo) throws Exception {
			logger.info("Welcome myevent! The client locale is {}.");
			System.out.println("ddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd"+empNo);
			List<HashMap<String, Object>> map = service.getMail(empNo);
			//System.out.println(map.get(0));
			return map;
		}
	
	
	
	
	
	
}
