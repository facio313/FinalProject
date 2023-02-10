package kr.or.ddit.resume.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.resume.service.ResumeService;
import kr.or.ddit.resume.vo.ActivityVO;
import kr.or.ddit.resume.vo.ResumeVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;

/**
 * @author 최경수
 * @since 2023. 2. 5.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 	    수정일               수정자                                     수정내용
 * --------     --------    ----------------------
 * 2023. 2. 5.     최경수        최초작성
 * 2023. 2. 8.     최경수        각 이력서
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Controller
@RequestMapping("/resume")
public class ResumeController {
	
	@Inject
	private ResumeService service;
	
	@ModelAttribute("resume")
	public ResumeVO resume() {
		return new ResumeVO();
	}
	
	@GetMapping
	public String resumeMain() {
		return "resume/resumeMain";
	}
	
	@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String listData(
		Model model
		, @AuthMember MemberVO authMember
	){
		List<ResumeVO> resumeList = service.retrieveResumeList(authMember.getMemId());
		model.addAttribute("resumeList", resumeList);
		return "jsonView";
	}
	
	@GetMapping("/{resumeSn}")
	public String activityView(@PathVariable String resumeSn, Model model) {
		ResumeVO resume = service.retrieveResume(resumeSn);
		model.addAttribute("resume", resume);
		return "resume/resumeView";
	}
	
	
}
