package kr.or.ddit.help.find.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 
 * @author 박형준
 * @since 2023. 2. 2.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 2.      박형준       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Controller
public class IncruiterPwFindController {

	@RequestMapping("/help/find/incruiterFindPw")
	public String find(HttpServletRequest req) {
		return "help/find/incruiterFindPw";
	}
}
