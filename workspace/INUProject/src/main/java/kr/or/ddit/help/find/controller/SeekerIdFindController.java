package kr.or.ddit.help.find.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SeekerIdFindController {

	@RequestMapping("/help/find/seekerFindId")
	public String find(HttpServletRequest req) {
		return "help/find/seekerFindId";
	}
}
