package kr.or.ddit.help.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelpController {
	
	@RequestMapping("/help/helpList")
	public String help(HttpServletRequest req) {
		return "help/helpList";
	}
}
