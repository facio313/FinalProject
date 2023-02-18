package kr.or.ddit.expert.controller;

import javax.websocket.server.PathParam;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/expert/pay")
public class ExpertPayController {

	@GetMapping("/{exprodId}")
	public String expertPay(
		@PathParam("exprodId")String exprodId
		) {
		return "expert/expertPay";
	}
	
}
