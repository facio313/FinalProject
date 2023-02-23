package kr.or.ddit.system;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.company.service.CompanyService;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.member.service.MemberService;
import kr.or.ddit.vo.IncruiterVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;

/**
 * 
 * @author 박형준
 * @since 2023. 2. 4.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 4.      박형준       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Controller
@RequestMapping("/systemManagement")
public class SystemManagementController {

	@Inject
	private MemberService memberService;
	@Inject
	private CompanyService companyService;
	
	//시스템 관리페이지
	@GetMapping
	public String system() {
		return "system/systemManagement";
	}
	
	//회원 목록
	@GetMapping("/memberList")
	public String memberProcess(
		Model model
		, @RequestParam(value="memAuthCd", required=false, defaultValue="ROLE_SEEKER") String memAuthCd
	) {
		MemberVO list = new MemberVO();
		list.setMemAuthCd(memAuthCd);
		List<MemberVO> authMemberList = memberService.retrieveAuthMemberList(list);
		model.addAttribute("authMemberList", authMemberList);
		return "system/memberList";
	}
	
	//기업 목록
	@GetMapping("/companyList")
	public String companyProcess(
		@RequestParam(value="page", required=false, defaultValue="1") int currentPage
		, @ModelAttribute("simpleCondition") SearchVO searchVO
		, Model model
	) {
		PagingVO<CompanyVO> pagingVO = new PagingVO<>(20, 10);
		pagingVO.setCurrentPage(currentPage); //현재페이지
		pagingVO.setSimpleCondition(searchVO); // 검색 키워드
		
		companyService.retrieveCompanyList(pagingVO);
		
		model.addAttribute("pagingVO", pagingVO);
		return "system/companyList";
	}
	
	//승인 관리
	@GetMapping("/acceptManagement")
	public String acceptProcess(
		Model model
	) {
		List<MemberVO> incruiterList = memberService.retrieveIncruiterList();
		List<MemberVO> expertList = memberService.retrieveExpertList();
		
		model.addAttribute("incruiterList", incruiterList);
		model.addAttribute("expertList", expertList);
		return "system/acceptManagement";
	}
	
	//총괄기업회원 신청목록
	@GetMapping("/acceptManagement/appliIncruiterList")
	public String generalIncruiterProcess(
		Model model
	) {
		List<MemberVO> incruiterList = memberService.retrieveIncruiterList();
		model.addAttribute("incruiterList", incruiterList);
		return "system/appliIncruiterList";
	}
	
	//총괄기업회원 신청세부
	@GetMapping("/acceptManagement/appliIncruiterList/{memId}")
	public String incruiterAppliView(
			@PathVariable String memId,
			Model model
	) {
		MemberVO incruiter = memberService.retrieveIncruiter(memId);
		model.addAttribute("incruiter", incruiter);
		return "system/incruiterView";
	}
	
	//총괄 승인
	@PostMapping("/acceptManagement/updateAcceptInc")
	public String updateAcceptInc(
		Model model
		, @ModelAttribute("incruiter") IncruiterVO incruiter
 	) {
		int inc = memberService.modifyAcceptInc(incruiter);
		int cmp = memberService.modifyAcceptCmp(incruiter);
		String viewName = null;
		if(inc * cmp > 0) {
			viewName = "redirect:/systemManagement/acceptManagement/appliIncruiterList";
		}else {
			model.addAttribute("message", "서버 오류");
			viewName = "system/appliIncruiterList";
		}
		return viewName;
	}
	
	//차단회원 목록
	@GetMapping("/cutList")
	public String cutProcess(
		Model model
	) {
		List<MemberVO> cutList = memberService.retrieveCutList();
		model.addAttribute("cutList",cutList);
		return "system/cutList";
	}
	
	//블랙리스트 목록
	@GetMapping("/blackList")
	public String blackProcess(
		Model model
	) {
		List<MemberVO> blackList = memberService.retrieveBlackList();
		model.addAttribute("blackList",blackList);
		return "system/blackList";
	}
	
	//신고 목록
	@GetMapping("/reportList")
	public String reportProcess() {
		return "system/reportList";
	}
	
	//전문가 신청 목록
	@GetMapping("/acceptManagement/appliExpertList")
	public String acceptExpert(
		Model model
	) {
		List<MemberVO> expertList = memberService.retrieveExpertList();
		model.addAttribute("expertList", expertList);
		return "system/appliExpertList";
	}
	
	//전문가 신청 세부
	@GetMapping("/acceptManagement/appliExpertList/{memId}")
	public String expertAppliView(
		Model model
		, @PathVariable String memId
	) {
		MemberVO expert = memberService.retrieveExpert(memId);
		model.addAttribute("expert", expert);
		return "system/expertView";
	}
	
	//전문가 승인
	@PostMapping("/acceptManagement/updateAcceptExp")
	public String acceptExp(
		Model model
		, @ModelAttribute("expert") MemberVO expert
	) {
		int expRole = memberService.modifyAcceptExpRole(expert);
		int exp = memberService.modifyAcceptExp(expert);
		String viewName = null; 
		if(expRole * exp > 0) {
			viewName = "redirect:/systemManagement/acceptManagement/appliExpertList";
		}else {
			model.addAttribute("message", "서버 오류");
			viewName = "system/appliExpertList";
		}
		return viewName;
	}
}

















