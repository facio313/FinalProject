package kr.or.ddit.expert.controller;

import javax.inject.Inject;
import javax.websocket.server.PathParam;

import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.expert.service.ExcartService;
import kr.or.ddit.expert.vo.ExcartVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;

@Controller
@RequestMapping("/expert/pay")
public class ExpertPayController {

	@Inject
	private ExcartService excartService;
	
	@GetMapping("/{exprodId}")
	public String expertPay(
		@PathParam("exprodId")String exprodId
		) {
		return "expert/expertPay";
	}
	
	@PostMapping("/{exprodId}")
	public String excartPay(
		@PathVariable("exprodId")String exprodId
		, @ModelAttribute("excart") ExcartVO excart
		,@AuthMember MemberVO authMember
		,Errors errors
		,Model model
		) {
		excart.setMemId(authMember.getMemId());
		excart.setExprodId(exprodId);
		
		boolean valid = !errors.hasErrors();
	    String viewName = "";
	    if(valid) {
	    	int result = excartService.insertExcart(excart);
		       if(result > 0) {
		            viewName = "redirect:/mypage/seeker";
	       }
	       else {
	          model.addAttribute("message","서버 오류, 쫌다 다시");
	          viewName = "expert/prod/"+excart.getExprodId();
	       }
	    }
	    else {
	    	viewName = "expert/prod/"+excart.getExprodId();
	    }
	      return viewName;
	}
	
}
