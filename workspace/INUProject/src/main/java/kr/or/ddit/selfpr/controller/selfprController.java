package kr.or.ddit.selfpr.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ctc.wstx.shaded.msv_core.reader.datatype.xsd.XSDatatypeExp.Renderer;

import kr.or.ddit.selfpr.dao.SelfprDAO;
import kr.or.ddit.selfpr.service.SelfprService;
import kr.or.ddit.selfpr.vo.SelfprVO;
import kr.or.ddit.ui.PaginationRenderer;
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
	
	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;
	
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
		PagingVO<SelfprVO> pagingVO = new PagingVO<>(12,10);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setDetailCondition(detailCondition);
		
		service.retrieveSelfprList(pagingVO);
		
		System.out.println(currentPage);
		System.out.println(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		if(!pagingVO.getDataList().isEmpty())
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));
		
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
		List<SelfprVO> selfprcareer = service.retrieveSelfprCareer(prNo);
		List<SelfprVO> selfprcert = service.retrieveSelfprCert(prNo);
		List<SelfprVO> selfpract = service.retrieveSelfprAct(prNo);
		List<SelfprVO> selfpraward = service.retrieveSelfprAward(prNo);
		List<SelfprVO> selfprcourse = service.retrieveSelfprCourse(prNo);
		model.addAttribute("selfprmem", selfprmem);
		model.addAttribute("selfpredu", selfpredu);
		model.addAttribute("selfprcareer", selfprcareer);
		model.addAttribute("selfprcert", selfprcert);
		model.addAttribute("selfpract", selfpract);
		model.addAttribute("selfpraward", selfpraward);
		model.addAttribute("selfprcourse", selfprcourse);
		
		return "selfpr/selfPrDetail";
	}
	
	// Selfpr Insert
	
	@GetMapping("/InsertForm")
	public String selfprForm(
		Model model
	) {
		return "selfpr/selfPrForm";
	}
	
	@PostMapping("/Insert")
	public String selfprInsert(
		Model model
		, @ModelAttribute("selfpr") SelfprVO selfpr 
		, Errors errors
	) {
		String viewName = null;
		if(!errors.hasErrors()) {
			int rowcnt = service.createSelfpr(selfpr);
			System.out.println(rowcnt);
			if(rowcnt > 0) {
				viewName = "redirect:/selfpr";
			}else {
				model.addAttribute("message","서버 오류");
				viewName = "selfpr/Insert";
			}
		}else {
			viewName = "selfpr/Insert";
		}
		return viewName;
	}
	
	// Selfpr Update
	
	@GetMapping("/Update")
	public String UpdateForm(
		@RequestParam(value="no") int prNo
		, Model model
	) {
		SelfprVO selfpr = service.retrieveSelfprMember(prNo);
		model.addAttribute("selfpr", selfpr);
		return "selfpr/selfPrUpdateForm";
	}
	
	@PostMapping("/Update")
	public String UpdateSelfpr(
		@ModelAttribute("selfpr") SelfprVO selfpr
		, Errors errors
		, Model model
	) {
		String viewName = null;
		if(!errors.hasErrors()) {
			int rowcnt = service.modifySelfpr(selfpr);
			if(rowcnt > 0) {
				viewName = "redirect:/selfpr/Detail/?no="+selfpr.getPrNo();
			}else {
				model.addAttribute("message", "서버 오류");
				viewName = "selfpr/selfPrUpdateForm";
			}
		}else {
			viewName = "selfpr/selfPrUpdateForm"; 
		}
		return viewName;
	}
	
	// Selfpr Delete
	@GetMapping("/Delete")
	public String deleteSelfpr(
		@RequestParam("no") int prNo
		, Model model
	) {
		service.removeSelfpr(prNo);
		return "redirect:/selfpr";
	}

	
}
