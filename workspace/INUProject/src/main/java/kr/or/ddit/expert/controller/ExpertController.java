package kr.or.ddit.expert.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.expert.service.ExeventService;
import kr.or.ddit.expert.service.ExprodService;

@Controller
@RequestMapping("/expert")
public class ExpertController {
	
	@Inject
	private ExeventService eventservice;
	@Inject
	private ExprodService exprodservice;
	
	@GetMapping
	public String expertMain() {
		return "expert/expertMain";
	} 
 
	@GetMapping("/class")
	public String expertClassList() {
		return "expert/expertList";
	} 
	@GetMapping("/product")
	public String expertProductList() {
		return "expert/expertList";
	} 

}
