package kr.or.ddit.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.board.service.InterviewService;
import kr.or.ddit.board.vo.InterviewVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/interview/interviewInsert")
public class InterviewInsertController {

	@Inject
	private InterviewService service;

	@ModelAttribute("interview")
	public InterviewVO interview() {
		return new InterviewVO();
	}

	@GetMapping
	public String interviewForm(Model model,@ModelAttribute("interview") InterviewVO interview) {
		// 회사 이름이랑 아이디 가져와서 모델에다가 담아서 보내기

		return "interview/interviewInsert";
	}

//	@AuthMember MemberVO authMember
	@PostMapping
	public String writeInterview(Model model,
			@ModelAttribute("interview") InterviewVO interview) {
		log.info("interview : " + interview);

		String viewName = null;

		int rowcnt = service.createInterview(interview);
		if (rowcnt > 0) {
			viewName = "redirect:interviewList";
		} else {
			viewName = "interview/interviewInsert";
		}
		return viewName;

	}

}
