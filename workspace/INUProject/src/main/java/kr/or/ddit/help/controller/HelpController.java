package kr.or.ddit.help.controller;


import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.help.service.HelpService;
import kr.or.ddit.help.vo.HelpVO;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.PagingVO;

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
	
//	@ModelAttribute("help")
//	public HelpVO help() {
//		return new HelpVO();
//	}
	
	//개별 리스트
	@GetMapping 
	public String helpList(
		Model model
		, @RequestParam(value="helpSort", required=false , defaultValue="HPS") String helpSort
	) {
		List<HelpVO> list = service.retrieveList(helpSort); //해당 구분을 받은 목록
		List<HelpVO> listName = service.retrieveListName(helpSort); //해당 구분 명 목록
		
		model.addAttribute("list",list);
		model.addAttribute("listName",listName);
		
		return "help/helpList";
	}
	
	//도움말 더보기
	@GetMapping("/helpPlus")
	public String main(Model model) {
		return "help/helpPlus";
	}
	
	//produces:생산 가능한 미디어타입의 목록을 지정해서 주요 매핑을 제한, Accept 요청헤더가 이러한 값 중 하나와 일치할 때만 요청이 매칭
	//서버에서 브라우저로 보냄
	@GetMapping(value="/helpPlus", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String helpList(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("detailCondition") HelpVO detailCondition
		, Model model
	) {
		PagingVO<HelpVO> pagingVO = new PagingVO<>(10, 5); //페이징 
		pagingVO.setCurrentPage(currentPage);	//현재페이지
		pagingVO.setDetailCondition(detailCondition); //상세검색
		
		service.retrieveHelpList(pagingVO); //전체 목록
		model.addAttribute("pagingVO", pagingVO);
		if(!pagingVO.getDataList().isEmpty())	//데이터가 있으면
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));
		
		System.out.println(pagingVO);
		
		return "jsonView";
	}
	
	//등록 폼
	@GetMapping("/helpInsert")
	public String insertForm() {
		return "help/helpForm";
	}
	//등록
	@PostMapping("/helpInsert")
	public String helpInsert(
		Model model
		, @ModelAttribute("help") HelpVO help
	) {
		String viewName = null;
		int rowcnt = service.createHelp(help);
		if(rowcnt>0) {
			viewName = "redirect:/help";
		}else {
			model.addAttribute("message", "서버오류");
			viewName = "help/helpForm";
		}
		return viewName;
	}
	
	//수정 폼
	@GetMapping("/helpUpdate")
	public String updateForm(
		@RequestParam("what") String helpSn
		, Model model
	) {
		HelpVO help = service.retrieveHelp(helpSn);
		model.addAttribute("help",help);
		return "help/helpForm";
	}
	
	//수정
	@PostMapping("/helpUpdate")
	public String helpUpdate(
		Model model
		, @ModelAttribute("help") HelpVO help
	) {
		String viewName = null;
		int rowcnt = service.modifyHelp(help);
		if(rowcnt>0) {
			viewName = "redirect:/help";
		}else {
			model.addAttribute("message", "서버 오류");
			viewName = "help/helpForm";
		}
		return viewName;
	}
}














