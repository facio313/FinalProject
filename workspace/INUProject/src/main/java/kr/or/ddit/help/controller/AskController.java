package kr.or.ddit.help.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.help.service.AskService;
import kr.or.ddit.help.vo.AskVO;

@Controller
@RequestMapping("/ask")
public class AskController {

	@Inject
	private AskService service;

	@GetMapping
	public String ask() {
		return "ask/ask";
	}

	@GetMapping("/askList")
	public String askList(Model model) {
		List<AskVO> askList = service.retrieveAskList();
		model.addAttribute("askList", askList);
		return "ask/askList";
	}

	@GetMapping("/detailAsk")
	public String detailAsk(Model model, @RequestParam("askNo") String askNo) {
		AskVO ask = service.retrieveAsk(askNo);
		model.addAttribute("ask", ask);
		return "ask/detailAsk";
	}
}
