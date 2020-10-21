package com.js.pjt.controller;

import java.io.File;
import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;

import com.js.pjt.exception.EmployeeExistsException;
import com.js.pjt.service_serviceimp.EmployeeService;
import com.js.pjt.vo.EmployeeVO;

@Controller
public class EmployeeController {
	@Autowired
	private WebApplicationContext context;
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value="/emp/pages-sign-up", method = RequestMethod.GET)
	public String signIn() {
		return "emp/pages-sign-up";
	}
	
	@RequestMapping(value="/emp/pages-sign-up", method = RequestMethod.POST)
	public String signIn(@ModelAttribute("employee") EmployeeVO employee) throws IllegalStateException, IOException, EmployeeExistsException {
		if(employee.getFile().isEmpty()) {
			return "emp/pages-sign-up";			
		}
		
		String uploadDir=context.getServletContext().getRealPath("/WEB-INF/upload");
		String origin=employee.getFile().getOriginalFilename();
		String upload=System.currentTimeMillis()+"";
		
		employee.getFile().transferTo(new File(uploadDir, upload));
		
		employee.setFileNm(origin);
		employee.setFilePath(upload);
		
		employeeService.addEmployee(employee);
		
		return "emp/pages-sign-up";
	}
	
}
