package kr.or.ddit.help.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.help.service.NoticeService;
import kr.or.ddit.help.vo.NoticeVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;

/**
 * 
 * @author 작성자명
 * @since 2023. 2. 1.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                  수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 1.      박형준       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Controller
@RequestMapping("/help/notice")
public class NoticeController {
	@Inject
	private NoticeService service;
	
	
	//공지사항 목록
	@GetMapping
	public String noticeList(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<NoticeVO> pagingVO = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		service.retrieveNoticeList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		
		return "help/notice/noticeList";
	}
	
	@RequestMapping("/noticeView")
	public String noticeView(
		@RequestParam("what") String noticeSn,
		Model model
	) {
		NoticeVO notice = service.retrieveNotice(noticeSn);
		model.addAttribute("notice", notice);
		return "help/notice/noticeView";
	}
	
	
	//공지사항 생성
	@PostMapping("/noticeInsert")
	public String noticeInsert() {
		return "";
	}

	//공지사항 수정폼
	@GetMapping("/noticeUpdate")
	public String updateForm(
		@RequestParam("what") String noticeSn
		, Model model
	) {
		NoticeVO notice = service.retrieveNotice(noticeSn);
		model.addAttribute("notice", notice);
		return "help/notice/noticeUpdate";
	}
	
	//공지사항 수정
	@PostMapping("/noticeUpdate")
	public String noticeUpdate(
		@ModelAttribute("notice") NoticeVO notice
		, Model model
	) {
		String viewName = null;
		int rowcnt = service.modifyNotice(notice);
		if(rowcnt>0) {
			viewName = "redirect:/help/notice/noticeView?what="+notice.getNoticeSn();
		}else {
			model.addAttribute("message", "서버 오류");
			viewName = "help/notice/noticeUpdate";
		}
		return viewName;
	}
	
	
}









