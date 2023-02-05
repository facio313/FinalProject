package kr.or.ddit.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

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

	//시스템 관리페이지
	@GetMapping
	public String system(HttpServletRequest req) {
		return "admin/systemManagement";
	}
	
	//일반회원 목록
	@GetMapping("/seekerList")
	public String seekerProcess(HttpServletRequest req) {
		return "admin/seekerList";
	}
	
	//차단회원 목록
	@GetMapping("/cutList")
	public String cutProcess(HttpServletRequest req) {
		return "admin/cutList";
	}
	
	//블랙리스트 목록
	@GetMapping("/blackList")
	public String blackProcess(HttpServletRequest req) {
		return "admin/blackList";
	}
}
