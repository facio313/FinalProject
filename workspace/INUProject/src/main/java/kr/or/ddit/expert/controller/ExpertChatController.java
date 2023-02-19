package kr.or.ddit.expert.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/expert/chat")
public class ExpertChatController {
	
	@GetMapping
	public String getExpertChat() {
		return "expert/exprodChat";
	}
}
