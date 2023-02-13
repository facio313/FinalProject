package kr.or.ddit.expert.controller;

import javax.inject.Inject;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.expert.service.ExpertService;
import kr.or.ddit.expert.service.ExprodService;
import kr.or.ddit.expert.vo.ExpertVO;
import kr.or.ddit.expert.vo.ExprodVO;
import kr.or.ddit.member.service.MemberService;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.MemberVOWrapper;

@Controller
@RequestMapping("/expert")
public class ExpertProdController {
	
	@Inject
	private ExprodService exprodservice;
	@Inject
	private ExpertService expertService;
	@Inject 
	private MemberService memberService;
	
	@ModelAttribute("exprod")
	public ExprodVO exprodVO() {
		return new ExprodVO();
	}

	@GetMapping("/prod/{exprodId}")
	public String expertDetail(
		@PathVariable("exprodId")String exprodId
		, @ModelAttribute("exprod") ExprodVO exprod
		,Errors errors
		,Model model
		) {
		exprod =  exprodservice.selectExprod(exprodId);
		String memId = exprod.getMemId();
		ExpertVO expert = expertService.retrieveMember(memId);
		MemberVO member = memberService.retrieveMember(memId);
		
		model.addAttribute("member", member);
		model.addAttribute("expert", expert);
		model.addAttribute("exprod", exprod);
		return "expert/expertDetail";
	}
	
	
	
	
	@GetMapping("/pushprod/{exprodId}")
	public String exprodPushForm(
		@PathVariable("exprodId")String exprodId
		, @ModelAttribute("exprod") ExprodVO exprod
		,Errors errors
		,Model model
		) {
		exprod =  exprodservice.selectExprod(exprodId);
		model.addAttribute("exprod", exprod);
		return "expert/exprodForm";
	}
	@PostMapping("/pushprod/{exprodId}")
	public String exprodPush(
		@PathVariable("exprodId") String exprodId
		,@ModelAttribute("exprod") ExprodVO exprod
		,Errors errors
		,Model model
		) {
	    boolean valid = !errors.hasErrors();
	    String viewName = "";
	    if(valid) {
	       int result = exprodservice.updateExprod(exprod);
	       if(result > 0) {
	            viewName = "redirect:/expert";
	       }
	       else {
	          model.addAttribute("message","서버 오류, 쫌다 다시");
	          viewName = "expert/exprodForm";	
	       }
	    }
	    else {
	    	viewName = "expert/exprodForm";
	    }
	      return viewName;
	
	}
	
	
	
	
	@GetMapping("/newprod")
	public String exprodInsertForm(
		@ModelAttribute("exprod") ExprodVO exprod	
		) {
		return "expert/exprodForm";
	}
	@PostMapping("/newprod")
	public String exprodInsert(
		@ModelAttribute("exprod") ExprodVO exprod
		,@AuthenticationPrincipal MemberVOWrapper principal
		,Errors errors
		,Model model
		) {
		MemberVO authMember = principal.getRealMember();
		exprod.setMemId(authMember.getMemId());
		
	    boolean valid = !errors.hasErrors();
	    String viewName = "";
	    if(valid) {
	       int result = exprodservice.InsertExprod(exprod);
	       if(result > 0) {
	            viewName = "redirect:/expert";
	       }
	       else {
	          model.addAttribute("message","서버 오류, 쫌다 다시");
	          viewName = "expert/exprodForm";
	       }
	    }
	    else {
	    	viewName = "expert/exprodForm";
	    }
	      return viewName;
	
	}

}
