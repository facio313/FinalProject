package kr.or.ddit.selfPr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author 작성자명
 * @since 2023. 2. 1.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                  수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 1.      윤호연       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Controller
@RequestMapping("/selfPr")
public class selfPrListController {

	@GetMapping
	public String selfPrView(HttpServletRequest req) {
		return "selfpr/selfPrView";
	}
	@GetMapping("/insertForm")
	public String selfPrForm(HttpServletRequest req) {
		return "selfpr/selfPrForm";
	}
	@GetMapping("/detail")
	public String selfPrDetail(HttpServletRequest req) {
		return "selfpr/selfPrDetail";
	}
	@GetMapping("/today")
	public String todayselfPr(HttpServletRequest req) {
		return "selfpr/selfPrToday";
	}
	@GetMapping("/interest")
	public String interestselfPr(HttpServletRequest req) {
		return "selfpr/selfPrInter";
	}
	
	
}
