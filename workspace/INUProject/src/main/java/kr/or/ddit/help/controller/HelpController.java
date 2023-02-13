package kr.or.ddit.help.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.help.service.HelpService;
import kr.or.ddit.help.vo.HelpVO;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;

/**
 * 
 * @author 박형준
 * @since 2023. 2. 10.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                  수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 10.   박형준              최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Controller
@RequestMapping("/help")
public class HelpController {
	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;
	
	@Inject
	private HelpService service;
	
	@ModelAttribute("help")
	public HelpVO help() {
		return new HelpVO();
	}
	
	/*@GetMapping
	public String helpListUI() {
		return "help/helpList"; 
	}*/
	
	/*@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String helpListPaging(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("detailCondition") HelpVO detailCondition
		, Model model
	) {
		PagingVO<HelpVO> pagingVO = new PagingVO<>(10, 10);
		pagingVO.setCurrentPage(currentPage); //현재페이지
		pagingVO.setDetailCondition(detailCondition);
		
		service.retrieveHelpList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		
		if(!pagingVO.getDataList().isEmpty())	//데이터가 있으면
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));	
		
		return "jsonView";
	}*/
	
	//페이징된 리스트
	@GetMapping 
	public String helpListPaging(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, Model model
//		, @ModelAttribute("simpleCondition") SearchVO searchVO
	) {
		PagingVO<HelpVO> pagingVO = new PagingVO<>(10, 10);
		pagingVO.setCurrentPage(currentPage); //현재페이지
//		pagingVO.setSimpleCondition(searchVO); // 검색 키워드
//		pagingVO.setDetailCondition(detailCondition);
		
		service.retrieveHelpList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		
		return "help/helpList";
	}
}














