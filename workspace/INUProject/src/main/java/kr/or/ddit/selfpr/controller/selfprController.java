package kr.or.ddit.selfpr.controller;

import java.util.List;
import java.util.Map;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.selfpr.dao.SelfprDAO;
import kr.or.ddit.selfpr.service.SelfprService;
import kr.or.ddit.selfpr.vo.SelfprVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
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
	private final SelfprDAO selfprDAO;
	
	@GetMapping
	public String selfprMain() {
		return "selfpr/selfPrView";
	}
	
	@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String selfprData(
		@RequestParam(value = "page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("detailCondition") SelfprVO detailCondition
		, Model model
	) {
		PagingVO<SelfprVO> pagingVO = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setDetailCondition(detailCondition);
		
		service.retrieveSelfprList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		
		System.out.println(detailCondition);
		return "jsonView";
	}
	
	@PostMapping("search")
	public String selfprSearch(
		Model model
		, @RequestBody(required = false) List<Map<String, Object>> param
	) {
		List<Map<String, Object>> regionList = null;
		List<Map<String, Object>> industryList = null;
		
		for(Map<String, Object> list : param) {
			String type = (String)list.get("type");
			String code = (String)list.get("code");
			
			if(type.equals("region")) {
				regionList = selfprDAO.selectRegionList(code);
			}
			if(type.equals("industry")) {
				industryList = selfprDAO.selectIndustry(code);
			}
		}
		model.addAttribute("regionList", regionList);
		model.addAttribute("industryList", industryList);
		
		return "jsonView";
	}
	
	@GetMapping("/Detail")
	public String selfprDetail(
		@RequestParam(value="no") int prNo
		, @ModelAttribute("detailCondition") SelfprVO detailCondition
		, Model model
	) {
		PagingVO<SelfprVO> pagingVO = new PagingVO<>();
		pagingVO.setDetailCondition(detailCondition);
		
		SelfprVO selfprmem = service.retrieveSelfprMember(prNo);
		List<SelfprVO> selfpredu = service.retrieveSelfprEducation(prNo);
		model.addAttribute("selfprmem", selfprmem);
		model.addAttribute("selfpredu", selfpredu);
		System.out.println(selfprmem);
		
		return "selfpr/selfPrDetail";
	}
	
	@GetMapping("/Insert")
	public String selfprForm() {
		return "selfpr/selfPrForm";
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
