package kr.or.ddit.selfpr.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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
 * 2023. 2.22.  윤호연                최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */


@Controller
@RequestMapping("/selfpr/today")
public class selfprTodayController {

	@GetMapping
	public String selfprTodayView() {
		return "selfpr/selfPrToday";
	}
}
