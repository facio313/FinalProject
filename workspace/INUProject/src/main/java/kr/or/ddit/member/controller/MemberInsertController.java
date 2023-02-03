package kr.or.ddit.member.controller;

import java.io.IOException;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.member.service.MemberService;
import kr.or.ddit.member.service.MemberServiceImpl;
import kr.or.ddit.validate.InsertGroup;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.SeekerVO;
import lombok.extern.slf4j.Slf4j;

/**
 *  Backend controller(command handler) --> Plain Old Java Object
 */
@Slf4j
@Controller
@RequestMapping("/join")
public class MemberInsertController{
	@Inject
	private MemberService service;
	
	@ModelAttribute("member")
	public SeekerVO member() {
		log.info("@ModelAttribute 메소드 실행 -> member 속성 생성");
		return new SeekerVO();
	}
	
	@GetMapping("/seeker")
	public String seekerForm(){
		return "join/seekerJoin";
	}
	@GetMapping("/incruiter")
	public String incruiterForm(){
		return "join/incruiterJoin";
	}
	
	@PostMapping("/seeker")
	public String seekerInsert(
		HttpServletRequest req 
		, @Validated(InsertGroup.class) @ModelAttribute("member") SeekerVO member	
		, Errors errors
	)throws ServletException, IOException {
		
		boolean valid = !errors.hasErrors();
		
		String viewName = null;
		 
		if(valid) {
			ServiceResult result = service.createMember(member);
			switch (result) {
			case PKDUPLICATED:
				req.setAttribute("message", "아이디 중복");
				viewName = "join/seekerJoin";
				break;
			case FAIL:
				req.setAttribute("message", "서버에 문제 있음. 쫌따 다시 하셈.");
				viewName = "join/seekerJoin";
				break;

			default:
				viewName = "redirect:/";
				break;
			}
		}else {
			viewName = "join/seekerJoin";
		}
		return viewName;
	}
}




















