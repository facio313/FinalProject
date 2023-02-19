package kr.or.ddit.expert.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.expert.service.ExprodService;
import kr.or.ddit.expert.vo.ExprodVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;

@Controller
@RequestMapping("/mission")
public class missionController {
	@Inject
	private ExprodService exprodservice;

	@GetMapping
	public String mission(
		@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage
		,@ModelAttribute("simpleCondition") SearchVO searchVO
		,Model model	
		) {
		PagingVO<ExprodVO> pagingVO = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		exprodservice.selectExprodList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		return "expert/mission";
	}
}
