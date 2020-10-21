package com.js.pjt.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.js.pjt.service_serviceimp.ProductService;

import com.js.pjt.vo.ProductVO;

@Controller
public class ProductController {
private static final Logger logger = LoggerFactory.getLogger(DeliveryController.class);
	
	@Inject
	ProductService service;
	
	
	@RequestMapping(value = "/mulryu", method = RequestMethod.GET)
	public String selectListDelivery(Locale locale, Model model) throws Exception {
		logger.info("Welcome delivery! The client locale is {}.", locale);
		List<ProductVO> vo=service.selectListProduct();
		model.addAttribute("productList", vo);
		return "mulryu/mulryu";
	}
}
