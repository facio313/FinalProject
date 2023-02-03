package kr.or.ddit.expert.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/expert/event")
public class ExpertEventController {
	
	@GetMapping
	public String expertEventList() {
		return "expert/expertEventList";
				
	}
	@GetMapping("/detail")
	public String expertEventDetail() {
		return "expert/expertEventDetail";
		
	}
	@GetMapping("/write")
	public String expertEventWrite() {
		return "expert/expertEventWrite";
		
	}
}
