package kr.or.ddit.selfpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.selfpr.service.SelfprService;
import kr.or.ddit.selfpr.vo.SelfprVO;
import kr.or.ddit.vo.PagingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author 윤호연
 * @since 2023. 2. 4.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일               수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 4.  윤호연                최초작성
 * 2023. 2.13.  윤호연	   1차수정
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Slf4j
@RequiredArgsConstructor
@Controller
@RequestMapping("/selfpr")
public class selfprController {
	
	private final SelfprService service;
	

	@GetMapping
	public String selfprList(
		@RequestParam(value ="page", required=false, defaultValue="1") int currentPage
		, Model model
	) {
		PagingVO<SelfprVO> pagingVO = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		
		service.retrieveSelfprList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		System.out.println(pagingVO);
		
		return "selfpr/selfPrView";
	}
	
	@GetMapping("/Insert")
	public String selfprForm() {
		return "selfpr/selfPrForm";
	}
	
	@GetMapping("/Detail")
	public String selfprDetail() {
		return "selfpr/selfPrDetail";
	}
	
	@GetMapping("/Interest")
	public String selfprInter() {
		return "selfpr/selfPrInter";
	}
	
	@GetMapping("/Today")
	public String selfprToday() {
		return "selfpr/selfPrToday";
	}
}
