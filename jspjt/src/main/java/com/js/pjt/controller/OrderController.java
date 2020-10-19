package com.js.pjt.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.js.pjt.service_serviceimp.CustomerService;
import com.js.pjt.service_serviceimp.OrderService;
import com.js.pjt.service_serviceimp.ProductService;
import com.js.pjt.vo.OrderVO;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService orderService;
	@Autowired
	private ProductService productService;
	@Autowired
	private CustomerService customerService;
	
	@RequestMapping(value = "/order_delete/{ordNo}")
	public String deleteOrder(@PathVariable int ordNo,Model model) {
		orderService.deleteOrder(ordNo);
		model.addAttribute("orderList", orderService.selectOrderList()); 
		return "redirect:/orderList";
	}
	
	@RequestMapping("/order_list")
	@ResponseBody
	public List<OrderVO> orderJSONList(){
		return orderService.selectOrderList();
	}
	
	@RequestMapping(value="/orderList")
	public String display(Model model) {
		model.addAttribute("productList", productService.selectProductList()); 
		model.addAttribute("customerList", customerService.selectCustomerList());	
		return "order/order";
	}
	@RequestMapping(value="/search_order", method = RequestMethod.POST)
	@ResponseBody
	public List<OrderVO> display1(@RequestParam(value="ordCustNm",required=false) String ordCustNm,
			@RequestParam(value="ordProdNm",required=false) String ordProdNm) {
		if(!ordCustNm.equals("") && !ordProdNm.equals("")) {
			return orderService.selectAndOrder(ordProdNm, ordCustNm);
		} else if(!ordCustNm.equals("") || !ordProdNm.equals("")) {
			return orderService.selectOrder(ordProdNm, ordCustNm);			
		} else {
			return orderService.selectOrderList();
		}
	}
}
