package kr.or.ddit.help.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.help.service.AskService;
import kr.or.ddit.help.vo.AskVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;

@Controller
@RequestMapping("/ask/askForm")
public class AskInsertController {

	@Inject
	private AskService service;

	@ModelAttribute("ask")
	public AskVO ask() {
		return new AskVO();
	}

	@GetMapping
	public String askForm() {
		return "ask/askForm";
	}

	@PostMapping
	public String writeAsk(Model model, @ModelAttribute("ask") AskVO ask, @AuthMember MemberVO authMember) {
		String viewName = null;
		ask.setMemId(authMember.getMemId());
		int rowcnt = service.createAsk(ask);
		if (rowcnt > 0) {
			viewName = "redirect:askList";
		} else {
			viewName = "ask/askForm";
		}
		return viewName;

	}

}
