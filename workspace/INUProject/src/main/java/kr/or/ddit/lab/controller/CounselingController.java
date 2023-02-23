package kr.or.ddit.lab.controller;

import javax.annotation.Resource;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.lab.service.CounselingService;
import kr.or.ddit.lab.vo.CounselingVO;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.PagingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author 작성자명
 * @since 2023. 2. 1.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                 수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 1.   양서연              최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Controller
@RequestMapping("/lab/counseling")
@RequiredArgsConstructor
@Slf4j
public class CounselingController {
	
	private final CounselingService service;
	
	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;
	
	@ModelAttribute("counVO")
	public CounselingVO counVO() {
		return new CounselingVO();
	}
	
	@GetMapping
	public String listUI() {
		return "lab/counList";
	}
	
	@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String counList(
		Model model
		, @RequestParam(value="page",required=false, defaultValue="1") int currentPage
	) {
		PagingVO<CounselingVO> pagingVO = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		
		service.retrieveCounList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		if(!pagingVO.getDataList().isEmpty())
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));
		
		log.info("getTotalRecord:{}",pagingVO.getTotalRecord());
		log.info("getDataList:{}",pagingVO.getDataList());
		
		return "jsonView";
	}
	
	@GetMapping("view/{counNo}")
	public String counView(
		@PathVariable String counNo
		, Model model
	) {
		CounselingVO coun = service.retrieveCoun(counNo);
		model.addAttribute("coun",coun);
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
