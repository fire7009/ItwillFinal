package com.js.pjt.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller

public class mulryuController {
	
	private static final Logger logger = LoggerFactory.getLogger(mulryuController.class);
	
	
	@RequestMapping(value = "/mulryu", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		return "mulryu/mulryu";
	}
	
	@RequestMapping(value = "/mulryu", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, Object> mtevent(){
		Map<String, Object> map = new HashMap<String, Object>();
		
		return map;
	}
	
	
}
