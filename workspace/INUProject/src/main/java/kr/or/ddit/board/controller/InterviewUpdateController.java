package kr.or.ddit.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.board.service.InterviewService;
import kr.or.ddit.board.vo.InterviewVO;

@Controller
@RequestMapping("interview/interviewUpdate")
public class InterviewUpdateController {

	@Inject
	private InterviewService service;

	@GetMapping
	public String InterviewForm(
			Model model,
			@RequestParam("what") String incumNo
	) {
		InterviewVO interview = service.retrieveInterview(incumNo);
		model.addAttribute("interview", interview);
		return "interview/interviewUpdate";
	}

	@PostMapping
	public String InterviewUpdate(
			Model model,
			@ModelAttribute("interview") InterviewVO interview
	) {
		String viewName = null;
		int rowcnt = service.modifyInterview(interview);
		if (rowcnt > 0) {
			viewName = "redirect:interviewList";
		} else {
			viewName = "interview/interviewUpdate";
		}
		return viewName;
	}

}
