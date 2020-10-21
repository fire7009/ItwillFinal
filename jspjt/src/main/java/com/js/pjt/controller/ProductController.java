package com.js.pjt.controller;

import java.util.List;
import java.util.Locale;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import com.js.pjt.service_serviceimp.ProductService;
import com.js.pjt.vo.DeliveryVO;
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
	
	@RequestMapping(value = "/mulryu_insert", method = RequestMethod.GET)
	public String insert() {
		return "mulryu/mulryu_insert";
	}
	
	@RequestMapping(value = "/mulryu_insert", method = RequestMethod.POST)
	public String insert(@ModelAttribute ProductVO vo, Model model) {
		try {
			service.insertProduct(vo);
		} catch (Exception e) {
			model.addAttribute("message", "이미 사용중인 학번을 입력 하였습니다.");
			return "mulryu/mulryu_insert";
		}
		return "redirect:/mulryu";
	}

	@RequestMapping(value = "/mulryu_delete/{prodNo}",method = RequestMethod.GET)
	public String delete(@PathVariable int prodNo) throws Exception {
		service.deleteProduct(prodNo);
		return "redirect:/mulryu";
	}
}
