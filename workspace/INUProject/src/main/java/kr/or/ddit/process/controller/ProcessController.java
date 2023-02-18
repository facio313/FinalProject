package kr.or.ddit.process.controller;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.process.service.ProcessService;
import kr.or.ddit.process.vo.ProcessVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;

/**
 * 
 * @author 최경수
 * @since 2023. 2. 4.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일         수정자         수정내용
 * --------     --------    ----------------------
 * 2023. 2. 4.      최경수       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Controller
@RequestMapping("/process")
public class ProcessController {

	// 세부공고 작성 시 or 세부공고 작성 후 채용과정 등록 가능
	// 등록버튼을 누르면 해당 폼으로 이동하여 어떤 채용과정을 거칠지 과정 사용 여부를 결정한다.(checkBox??)
	// 등록하면 각 채용과정에서 세부항목들을 정할 수 있다. 안 정하면 그냥 기본을 다 들어가게 된다.
	// 세부항목의 경우 질문을 정할 수 있다. ex) 자기소개서 성격장단점 -> 자신의 성격의 단점을 어떻게 극복하셨나요?
	
	@Inject
	private ProcessService service;
	
	@ModelAttribute
	public ProcessVO process() {
		return new ProcessVO();
	}
	
	// 메인(일반회원)
	@GetMapping
	public String main(
		Model model
		, @AuthMember MemberVO authMember
	) {
		String memId = authMember.getMemId();
		List<ProcessVO> processList = service.retrieveProcessList(memId);
		model.addAttribute("processList", processList);
		return "process/processMain";
	}
	
	// 세부
	@GetMapping("/{daNo}")
	public String view(
		Model model
		, @PathVariable String daNo
		, @ModelAttribute("process") ProcessVO process
	) {
		
		process = service.retrieveProcess(daNo);
		model.addAttribute("process", process);
		return "process/processView";
	}
	
	// 입력폼
	@GetMapping("/form")
	public String form(
		Model model
		, @ModelAttribute("process") ProcessVO process
	) {
		return "process/processForm";
	}
	
	// 입력
	@PostMapping
	public String insert(
		Model model
		, @ModelAttribute("processList") List<ProcessVO> processList
	) {
		service.createProcess(processList);
		return "redirect:/process";
	}
	
	// 수정폼
	@GetMapping("/edit")
	public String edit(
		Model model
		, @ModelAttribute("process") ProcessVO process
		, @RequestParam("daNo") String daNo
	) {
		process = service.retrieveProcess(daNo);
		model.addAttribute("process", process);
		return "process/processEdit";
	}
	
	// 수정
	@PatchMapping("{daNo}")
	public String update(
		Model model
		, @PathVariable String daNo
		, @ModelAttribute("process") ProcessVO process
	) {
		service.modifyProcess(process);
		return "redirect:/process/" + daNo;
	}
	
	// 삭제
	@DeleteMapping("{daNo}")
	public String delete(
		Model model
		, @PathVariable String daNo
	) {
		service.removeProcess(daNo);
		return "redirect:/process";
	}
}
