package kr.or.ddit.member.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.expert.service.ExcartService;
import kr.or.ddit.expert.service.ExpertService;
import kr.or.ddit.expert.vo.ExcartVO;
import kr.or.ddit.expert.vo.ExpertVO;
import kr.or.ddit.member.service.MemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.SeekerVO;

@Controller
@RequestMapping("/mypage")
public class MemberMypageController {
	@Inject
	private MemberService memService;
	@Inject
	private ExcartService excartService;
	@Inject
	private ExpertService expertService;
	
	
	@GetMapping("/seeker")
	public String seekerMypage(
		@AuthMember MemberVO authMember,
		Model model
		) {
		String memId = authMember.getMemId();
		SeekerVO seeker = new SeekerVO();
		List<ExcartVO> excartList = excartService.MypageSelectExcartList(memId);
		seeker = memService.retrieveSeeker(memId);
		model.addAttribute("seeker", seeker);
		model.addAttribute("excartList", excartList);
		return "mypage/seekerMypage";
	}
	@GetMapping("/incruiter")
	public String incuiterMypage() {
		return "mypage/incruiterMypage";
	}
	@GetMapping("/expert")
	public String expertMypage(
		@AuthMember MemberVO authMember,
		Model model
		) {
		String memId = authMember.getMemId();
		SeekerVO seeker = new SeekerVO();
		ExpertVO expert = new ExpertVO();
		List<ExcartVO> excartList = excartService.MypageSelectExcartList(memId);
		seeker = memService.retrieveSeeker(memId);
		expert  = expertService.retrieveMember(memId);
		model.addAttribute("seeker", seeker);
		model.addAttribute("expert", expert);
		model.addAttribute("excartList", excartList);
		return "mypage/expertMypage";
	}
}
