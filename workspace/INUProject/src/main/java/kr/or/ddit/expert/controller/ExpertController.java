package kr.or.ddit.expert.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.expert.dao.OtherDAO;
import kr.or.ddit.expert.service.ExeventService;
import kr.or.ddit.expert.service.ExprodService;
import kr.or.ddit.expert.service.ExreviewService;
import kr.or.ddit.expert.vo.ExeventVO;
import kr.or.ddit.expert.vo.ExlprodVO;
import kr.or.ddit.expert.vo.ExprodVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;

@Controller
@RequestMapping("/expert")
public class ExpertController {
	@Inject
	private OtherDAO otherDAO;	
	@Inject
	private ExeventService exventservice;
	@Inject
	private ExprodService exprodservice;
	@Inject
	private ExreviewService exreviewService;
	@GetMapping
	public String expertMain(
		@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage
		,@ModelAttribute("simpleCondition") SearchVO searchVO
		,Model model
		) {
		PagingVO<ExprodVO> pagingVO = new PagingVO<>();
		PagingVO<ExeventVO> pagingVO2 = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		pagingVO2.setCurrentPage(currentPage);
		pagingVO2.setSimpleCondition(searchVO);
		exventservice.retrieveExeventList(pagingVO2);
		exprodservice.selectExprodList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		model.addAttribute("pagingVO2", pagingVO2);
		return "expert/expertMain";
	} 
 
	@GetMapping("/CLASS")
	public String expertClassList(
		@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage
		,@ModelAttribute("simpleCondition") SearchVO searchVO
		,Model model
		) {
		PagingVO<ExprodVO> pagingVO = new PagingVO<ExprodVO>(6,5);
		searchVO.setSearchType("EL001");
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		exprodservice.selectExprodList(pagingVO);
		List<ExlprodVO> exlprod = new ArrayList<>();
		exlprod = otherDAO.selectExlprodList("EL001");
		model.addAttribute("pagingVO", pagingVO);	
		model.addAttribute("exlprod", exlprod);	
		return "expert/expertList";
	} 
	@GetMapping("/CONSULTING")
	public String expertProductList(
		@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage
		,@ModelAttribute("simpleCondition") SearchVO searchVO
		,Model model
		) {
		PagingVO<ExprodVO> pagingVO = new PagingVO<ExprodVO>(6,5);
		searchVO.setSearchType("EL002");
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		exprodservice.selectExprodList(pagingVO);
		List<ExlprodVO> exlprod = new ArrayList<>();
		exlprod = otherDAO.selectExlprodList("EL002");
		model.addAttribute("pagingVO", pagingVO);	
		model.addAttribute("exlprod", exlprod);		
		return "expert/expertList";
	} 

}
