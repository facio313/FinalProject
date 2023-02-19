package kr.or.ddit.lab.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author 작성자명
 * @since 2023. 2. 1.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 1.      양서연       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Controller
@RequestMapping("/lab/counseling")
public class CounselingController {
	
	@GetMapping
	public String counList(Model model) {
		return "lab/counList";
	}
	
	@GetMapping("view/{counId}")
	public String counView(
		@PathVariable String counId
		, Model model
	) {
		model.addAttribute("counId",counId);
		return "lab/counView";
	}
	
	@GetMapping("insert")
	public String insertCoun(Model model) {
		return "lab/counForm";
	}
	
	@PostMapping("insert")
	public String insertCounProcess(Model model) {
		//insert
		
		//혹은 counView로 이동시켜주기
		return "lab/counList";
	}
}
