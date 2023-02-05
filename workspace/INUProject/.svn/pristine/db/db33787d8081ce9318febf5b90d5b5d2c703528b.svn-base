package kr.or.ddit.expert.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/expert")
public class ExpertController {
	
	@GetMapping
	public String expertMain() {
		return "expert/expertMain";
	} 
	@GetMapping("/category")
	public String expertDetail() {
		return "expert/expertDetail";
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
