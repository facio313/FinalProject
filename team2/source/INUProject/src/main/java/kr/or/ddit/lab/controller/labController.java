package kr.or.ddit.lab.controller;

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
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 2.      윤호연       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */


@Controller
@RequestMapping("/lab")
public class labController {
	
	@GetMapping
	public String labMainView(HttpServletRequest req) {
		return "lab/labMain";
	}
	
}
