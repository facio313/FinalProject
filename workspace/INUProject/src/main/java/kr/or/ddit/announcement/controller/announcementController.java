package kr.or.ddit.announcement.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.http.MediaType;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.announcement.dao.AnnoSearchDAO;
import kr.or.ddit.announcement.service.AnnoService;
import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.validate.InsertGroup;
import kr.or.ddit.vo.MemberVOWrapper;
import kr.or.ddit.vo.PagingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 작성자명
 * @since 2023. 2. 1.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 1.      양서연       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Controller
@RequestMapping("/announcement")
@RequiredArgsConstructor
public class announcementController {
	private final AnnoService service;
	private final AnnoSearchDAO annoSearchDAO;

	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;

	@ModelAttribute("anno")
	public AnnoVO annoVO() {
		return new AnnoVO();
	}
	
	@GetMapping
	public String listUI() {
		return "announcement/annoList";
	}

	@GetMapping(produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String annoList(
		@RequestParam(value="page",required=false, defaultValue="1") int currentPage
//		, PagingVO<AnnoVO> pagingVO
		, @ModelAttribute("detailCondition") AnnoVO detailCondition
		, @RequestParam Map<String, Object> map
		, Model model
	) {
		//map : {page=, regionCode=, industryCode=10803, job=, careerName=, searchWord0=}
		log.info("map : " + map);
		
		PagingVO<AnnoVO> pagingVO = new PagingVO<>(10,5);
		pagingVO.setCurrentPage(currentPage);
        
		pagingVO.setDetailCondition(detailCondition);
		
		//검색조건저장
		AnnoVO vo = pagingVO.getDetailCondition();
		vo.setKeyword(map);
		pagingVO.setDetailCondition(vo);

		//쿼리실행
		service.retrieveAnnoList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
		if(!pagingVO.getDataList().isEmpty())
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));

		return "jsonView";
	}

	@GetMapping("view/{annoNo}")
	public String annoView(
		@PathVariable String annoNo
		, Model model
	) {
		AnnoVO anno = service.retrieveAnno(annoNo);
		model.addAttribute("anno",anno);
		return "announcement/annoView";
	}   

	@GetMapping("insert")
	public String insertAnno(Model model) {
		return "announcement/annoForm";
	}
   
	@PostMapping("insert")
	public String insertAnnoProcess(
		@Validated(InsertGroup.class) @ModelAttribute("anno") AnnoVO anno
		, @RequestParam String salaryDetail
		, Errors errors
		, Model model
	) {
		String salary = anno.getAnnoSalary();
		if(!salary.equals("면접후결정")) {
			salary = salary + " " + salaryDetail;
		}
		anno.setAnnoSalary(salary);
		log.info("anno : {}",anno);
		
		//혹은 annoView
		return "redirect:/announcement";
	}

	@PostMapping("select")
	public String selectList(
		Model model
		, @RequestBody(required = false) List<Map<String, Object>> param
	){
		List<Map<String, Object>> regionList = null;
		List<Map<String, Object>> industryList = null;
		List<Map<String, Object>> jobList = null;
		List<Map<String, Object>> eduList = null;
		List<Map<String, Object>> walfareList = null;
		List<Map<String, Object>> positionList = null;
		List<Map<String, Object>> empltypeList = null;
	  
		for(Map<String, Object> list : param) {
			String type = (String)list.get("type");
			String code = (String)list.get("code");
			
			if(type.equals("region")) {
				regionList = annoSearchDAO.selectRegionList(code);
			}
			if(type.equals("industry")) {
				industryList = annoSearchDAO.selectIndustry(code);
			}
			if(type.equals("job")) {
				jobList = annoSearchDAO.selectJob(code);
			}
			if(type.equals("edu")) {
				eduList = annoSearchDAO.selectEduCd();
			}
			if(type.equals("walfare")) {
				walfareList = annoSearchDAO.selectWalfareList(code);
			}
			if(type.equals("position")) {
				positionList = annoSearchDAO.selectPositionList(code);
			}
			if(type.equals("empltype")) {
				empltypeList = annoSearchDAO.selectEmpltypeList();
			}
		}
		model.addAttribute("regionList", regionList);
		model.addAttribute("industryList", industryList);
		model.addAttribute("jobList", jobList);
		model.addAttribute("eduList", eduList);
		model.addAttribute("walfareList", walfareList);
		model.addAttribute("positionList", positionList);
		model.addAttribute("empltypeList", empltypeList);
		
		return "jsonView";
	}
}