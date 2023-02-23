package kr.or.ddit.member.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;

@Controller
@RequestMapping("/mypage")
public class MemberMypageController {
	@GetMapping("/seeker")
	public String seekerMypage(
		@AuthMember MemberVO authMember,
		Model model
		) {
		model.addAttribute("authMember",authMember);
		
		return "mypage/seekerMypage";
	}
	@GetMapping("/incruiter")
	public String incuiterMypage() {
		return "mypage/incruiterMypage";
	}
	@GetMapping("/expert")
	public String expertMypage() {
		return "mypage/expertMypage";
	}
}
