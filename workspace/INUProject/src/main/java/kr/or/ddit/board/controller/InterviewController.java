package kr.or.ddit.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.board.service.InterviewService;
import kr.or.ddit.board.vo.InterviewVO;

@Controller
@RequestMapping("/interview")
public class InterviewController {

	@Inject
	private InterviewService service;

	@GetMapping("/interviewList")
	public String interviewList(Model model) {
		List<InterviewVO> interviewList = service.retrieveInterviewList();
		model.addAttribute("interviewList", interviewList);
		return "interview/interviewList";

	}

	@GetMapping("/interviewDetail")
	public String detailInterview(
			Model model,
			@RequestParam("incumNo") String incumNo
	) {
		InterviewVO interview = service.retrieveInterview(incumNo);
		service.updateHis(incumNo);
		model.addAttribute("interview", interview);
		return "interview/interviewDetail";

	}


}
