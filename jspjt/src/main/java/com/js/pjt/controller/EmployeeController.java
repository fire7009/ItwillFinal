package com.js.pjt.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.imgscalr.Scalr;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.util.HtmlUtils;

import com.js.pjt.exception.EmployeeExistsException;
import com.js.pjt.exception.EmployeeNotFoundException;
import com.js.pjt.exception.LoginAuthFailException;
import com.js.pjt.service_serviceimp.EmployeeService;
import com.js.pjt.vo.EmployeeVO;

@Controller
public class EmployeeController {
	@Autowired
	private WebApplicationContext context;
	@Autowired
	private EmployeeService employeeService;
	
	@RequestMapping(value="/emp/signup", method = RequestMethod.GET)
	public String signIn() {
		return "emp/signup";
	}
	
	@RequestMapping(value="/emp/signup", method = RequestMethod.POST)
	public String signIn(@ModelAttribute("employee") EmployeeVO employee,HttpServletRequest request) throws IllegalStateException, IOException, EmployeeExistsException {
		if(employee.getFile().isEmpty()) {
			return "emp/signup";			
		}
		employee.setLgnId(HtmlUtils.htmlEscape(employee.getLgnId()));
		employee.setPasswd(HtmlUtils.htmlEscape(employee.getPasswd()));
		employee.setEmpNm(HtmlUtils.htmlEscape(employee.getEmpNm()));
		employee.setBirthDt(HtmlUtils.htmlEscape(employee.getBirthDt()));
		employee.setMobilePhnNo(HtmlUtils.htmlEscape(employee.getMobilePhnNo()));
		employee.setEmailAddr(HtmlUtils.htmlEscape(employee.getEmailAddr()));
		employee.setHireDt(HtmlUtils.htmlEscape(employee.getHireDt()));
		
		String uploadDir=context.getServletContext().getRealPath("/resources/upload");
		String origin=employee.getFile().getOriginalFilename();
		String upload=System.currentTimeMillis()+"";
		
		File file=new File(uploadDir, origin);
		employee.getFile().transferTo(file);
		
		employee.setFileNm(origin);
		employee.setFilePath(upload);
		
		employeeService.addEmployee(employee);
		//
		BufferedImage sourceImage=ImageIO.read(file);
		BufferedImage thumbnailImage=Scalr.resize(sourceImage, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_WIDTH,65);
		
		int index=origin.lastIndexOf(".");
		String thumbnailFilename=origin.substring(0, index)+"_s"+origin.substring(index);
		index=thumbnailFilename.lastIndexOf(".");
		
		ImageIO.write(thumbnailImage, thumbnailFilename.substring(index+1), new File(uploadDir, thumbnailFilename));
		
		return "redirect:/main";
	}
	
	@RequestMapping("/emp/login")
	public String login() {
		return "emp/login";
	}
	@RequestMapping(value = "/emp/lgncheck", method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam Map<String,Object> map) {
		System.out.println("lgnId = "+map.get("lgnId")+",/// passwd = "+map.get("passwd"));
		System.out.println("result = "+ employeeService.selectLoginCheck(map));
		return employeeService.selectLoginCheck(map);
	}
	
	@RequestMapping(value = "/emp/login", method = RequestMethod.POST)
	public String login(@RequestParam Map<String,Object> map, HttpSession session) throws LoginAuthFailException, EmployeeNotFoundException, IOException {
		employeeService.loginAuth(map);
		
		EmployeeVO employee=employeeService.getEmployee(map);
		session.setAttribute("loginUserInfo", employee);
		/*
		String uploadDir=context.getServletContext().getRealPath("/WEB-INF/upload");
		String imageFilename=employee.getFileNm();
		File file=new File(uploadDir, imageFilename);
		
		BufferedImage sourceImage=ImageIO.read(file);
		BufferedImage thumbnailImage=Scalr.resize(sourceImage, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_WIDTH,65);
		
		int index=imageFilename.lastIndexOf(".");
		String thumbnailFilename=imageFilename.substring(0, index)+"_s"+imageFilename.substring(index);
		index=thumbnailFilename.lastIndexOf("."); 
		
		ImageIO.write(thumbnailImage, thumbnailFilename.substring(index+1), new File(uploadDir, thumbnailFilename));
		session.setAttribute("imageFilename", imageFilename);
		session.setAttribute("thumbnailFilename", thumbnailFilename);
		 */
		session.setAttribute("imageFilename", employee.getFileNm());
		session.setAttribute("thumbnailFilename", employee.getFilePath());
		
		if(session.getAttribute("destURI")!=null) {
			String destURI=(String)session.getAttribute("destURI");
			session.removeAttribute("destURI");
			return "redirect:"+destURI;
		}
		
		return "redirect:/main"; 
	}
	
	@RequestMapping("/emp/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	} 
	
	@RequestMapping(value = "/emp/id_check/{lgnId}", method = RequestMethod.GET)
	@ResponseBody
	public String idCheck(@PathVariable String lgnId) throws UnsupportedEncodingException {
		System.out.println(lgnId);
		if(employeeService.selectIdChech(lgnId)!=null) {
			return "no";
		} else {
			return "success";			
		}
	}
}
