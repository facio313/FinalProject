package kr.or.ddit.help.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/ask")
public class AskController {

	@GetMapping
	public String ask() {
		return "ask/ask";
	}

	@GetMapping("/askList")
	public String askList() {
		return "ask/askList";
	}

	@GetMapping("/detailAsk")
	public String detailAsk() {
		return "ask/detailAsk";
	}
}
