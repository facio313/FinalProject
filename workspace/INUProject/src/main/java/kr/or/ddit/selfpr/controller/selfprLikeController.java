package kr.or.ddit.selfpr.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.selfpr.service.LikeService;
import kr.or.ddit.selfpr.vo.LikeVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
@RequestMapping("/selfpr/like")
public class selfprLikeController {
	
	private final LikeService service;
	
	@GetMapping
	public String selfprLikeView(
		@RequestParam(value = "page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<LikeVO> pagingVO = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		
		service.retrieveLikeList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		System.out.println(pagingVO);
		return "selfpr/selfPrLike";
	}
	
	@GetMapping("/insert")
	public String insertLike(
		Model model
		, @ModelAttribute("like") LikeVO like
		, Errors errors
	) {
		String viewName = null;
		if(!errors.hasErrors()) {
			int rowcnt = service.createLike(like);
			if(rowcnt > 0) {
				viewName = "redirect:/selfpr/like";
			}else {
				model.addAttribute("message", "서버 오류");
				viewName = "selfpr/like";
			}
		}else {
			viewName = "/selfpr/like";
		}
		return viewName;
	}
	
}
