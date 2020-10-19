package com.js.pjt.controller;

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

import com.js.pjt.service_serviceimp.ProductService;
import com.js.pjt.vo.ProductVO;

@Controller
public class ProductController {
private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	@Inject
	ProductService service;
	
	
	@RequestMapping(value = "/mulryu", method = RequestMethod.GET)
	public String List(Locale locale, Model model) throws Exception {
		logger.info("Welcome delivery! The client locale is {}.", locale);
		
		List<ProductVO> vo;
		vo = service.selectListProduct();
		model.addAttribute("productList", vo);
		
		return "mulryu/mulryu";
	}
	
	@RequestMapping(value = "/mulryu_insert", method = RequestMethod.GET)
	public String insert(@ModelAttribute ProductVO product, Model model) {
		try {
			logger.info("db값 저장.");
			service.insertProduct(product);
		} catch (Exception e) {
			model.addAttribute("message", "테이블에 이미 사용중인 값을 입력 하였습니다.");
			return "mulryu/mulryu_insert";
		}
		return "redirect:/mulryu";
	}
}
