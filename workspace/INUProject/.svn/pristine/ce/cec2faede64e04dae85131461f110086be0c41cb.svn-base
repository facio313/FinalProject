package kr.or.ddit.resume.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.resume.vo.ResumeVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.SeekerVO;

@Controller
@RequestMapping("/resume")
public class ResumeController {

	@ModelAttribute("resume")
	public ResumeVO resume() {
		ResumeVO ex = new ResumeVO();
		
		SeekerVO exMem = new SeekerVO();
		exMem.setMemId("cks1111");
		exMem.setMemName("최경수");
		exMem.setMemGender("남");
		exMem.setMemBirth("1995-03-13");
		exMem.setMemEmail("aaa@aaa.com");
		exMem.setMemTel("010-1111-2222");
		exMem.setMemAddr1("부산광역시 금정구");
		exMem.setMemProfile("/resources/images/Dementor.jpg");
		
		ex.setResumeNo("1");
		ex.setSeeker(exMem);
		
		return ex;
	}
	
	@GetMapping
	public String resumeMain(@ModelAttribute("resume") ResumeVO resume) {
		return "resume/resumeMain";
	}
}
