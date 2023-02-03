package kr.or.ddit.admin;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class SystemManagementController {

	@RequestMapping("/systemManagement")
	public String system(HttpServletRequest req) {
		return "admin/systemManagement";
	}
}
