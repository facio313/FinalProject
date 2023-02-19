package kr.or.ddit.announcement.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.http.MediaType;
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
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.announcement.dao.AnnoSearchDAO;
import kr.or.ddit.announcement.service.AnnoService;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.validate.InsertGroup;
import kr.or.ddit.vo.MemberVO;
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
 * 수정일                 수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 1.   양서연               최초작성
 * 2023. 2. 17.  최경수               회원별 공고 목록 추가
 * 2023. 2. 19.  양서연               컨트롤러 이름 변경
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Controller
@RequestMapping("/announcement")
@RequiredArgsConstructor
public class AnnouncementController {
	private final AnnoService service;
	private final AnnoSearchDAO annoSearchDAO;

	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;

	@ModelAttribute("anno")
	public AnnoVO annoVO() {
		return new AnnoVO();
	}
	
	/**
	 * 공고 목록으로 이동
	 * @return
	 */
	@GetMapping
	public String listUI() {
		return "announcement/annoList";
	}

	/**
	 * 페이징 처리
	 * @param currentPage
	 * @param detailCondition
	 * @param map
	 * @param model
	 * @return
	 */
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

	/**
	 * 공고 view
	 * @param annoNo
	 * @param model
	 * @param principal
	 * @return
	 */
	@GetMapping("view/{annoNo}")
	public String annoView(
		@PathVariable String annoNo
		, Model model
//		, @AuthMember MemberVO authMember
//		, @AuthenticationPrincipal MemberVOWrapper principal
	) {
//      String memId = principal.getRealMember().getMemId();
		AnnoVO anno = service.retrieveAnno(annoNo);
		model.addAttribute("anno",anno);
		String memId = "asdf";
		String cmpId = anno.getCmpId();
		int selectLikeAnno = service.selectLikeAnno(annoNo, memId);
		int selectLikeCmp = service.selectLikeCmp(cmpId, memId);
		model.addAttribute("selectLikeAnno", selectLikeAnno);
		model.addAttribute("selectLikeCmp", selectLikeCmp);
		return "announcement/annoView";
	}

	@GetMapping("insert")
	public String insertAnno(
		Model model
	) {
//		String memId = authMember.getMemId();
//		log.info("memId : {}",memId);
		return "announcement/annoForm";
	}

	/**
	 * 공고 등록 프로세스
	 * @param anno
	 * @param errors
	 * @param salaryDetail
	 * @param model
	 * @return
	 */
	@PostMapping("insert")
	public String insertAnnoProcess(
		@Validated(InsertGroup.class) @ModelAttribute("anno") AnnoVO anno
		, Errors errors
		, @RequestParam String salaryDetail
		, Model model
	) {
		String salary = anno.getAnnoSalary();
		if(!salary.equals("면접후결정")) {
			salary = salary + " " + salaryDetail + "만원";
		}
		anno.setAnnoSalary(salary);
		log.info("anno : {}",anno);
		
		service.createAnno(anno);
		
		//혹은 annoView
		return "redirect:/announcement";
	}
	
	/**
	* 관심공고
	* @param annoNo
	* @param memId
	* @return
	*/
	@PostMapping("likeAnno")
	@ResponseBody
	public String insertLikeAnno(
		@RequestBody Map<String,String> map
		, Model model
	) {
		int cnt = 0;
		String result = "";
		String annoNo = map.get("annoNo");
		String memId = map.get("memId");
		int selectLikeAnno = service.selectLikeAnno(annoNo, memId);
		if(selectLikeAnno>0) {
			cnt = service.deleteLikeAnno(annoNo, memId);
			if(cnt>0) result = "delete";
		} else {
			cnt = service.insertLikeAnno(annoNo, memId);
			if(cnt>0) result = "insert";
		}
		return result;
	}
	
	/**
	 * 관심기업
	 * @param map
	 * @param model
	 * @return
	 */
	@PostMapping("likeCmp")
	@ResponseBody
	public String insertLikeCmp(
		@RequestBody Map<String,String> map
		, Model model	
	) {
		int cnt = 0;
		String result= "";
		
		String cmpId = map.get("cmpId");
		String memId = map.get("memId");
		int selectLikeCmp = service.selectLikeCmp(cmpId, memId);
		if(selectLikeCmp>0) {
			cnt = service.deleteLikeCmp(cmpId, memId);
			if(cnt>0) result = "delete";
		} else {
			cnt = service.insertLikeCmp(cmpId, memId);
			if(cnt>0) result = "insert";
		}
		return result;
	}


	/**
	 * DB 코드 가져오기
	 * @param model
	 * @param param
	 * @return
	 */
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
	

	//경수
	@GetMapping("/myList")
	public String myList(
		Model model
		, @AuthMember MemberVO authMember
	) {
		String memId = authMember.getMemId();
		List<AnnoVO> list = service.retrieveMyAnnoList(memId);
		model.addAttribute("list", list);
		return "announcement/annoMyList";
	}
}