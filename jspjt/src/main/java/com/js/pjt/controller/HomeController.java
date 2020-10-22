package com.js.pjt.controller;


import java.util.HashMap;
import java.util.List;
import java.util.Locale;


import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.TestService;
import com.js.pjt.vo.TestVO;



@Controller

public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	TestService service;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) throws Exception {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		//List<TestVO> vo= service.getL ist1();
		//model.addAttribute("list", vo);
		return "home";
	}
	
	@RequestMapping(value = "/order", method = RequestMethod.GET)
	public String getOrderList(Locale locale, Model model) {
		
		return "order/order";
	}
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void getmain(Locale locale, Model model) {
		
		
	}
	
	
	
	@RequestMapping(value = "/myevent", method = RequestMethod.GET)
	@ResponseBody
	public List<HashMap<String, Object>> mtevent() throws Exception{
		logger.info("Welcome myevent! The client locale is {}.");
		List<HashMap<String, Object>> map = service.getList();
		
		return map;
	}
	@RequestMapping(value = "/addEvent", method = RequestMethod.GET)
	@ResponseBody
	public void addEvent(@ModelAttribute TestVO vo) throws Exception {
		//System.out.println(vo.isAllDay());
		if(vo.isAllDay()==true) {
			vo.setAllday("true");
		}else if(vo.isAllDay()==false) {
			vo.setAllday("false");
		}
		//service.addEvent(vo);
		
	}
	
	@RequestMapping(value = "/editEvent", method = RequestMethod.GET)
	@ResponseBody
	public void editEvent(@ModelAttribute TestVO vo){
		System.out.println(vo.getTitle());
		
	}
	
	
}
