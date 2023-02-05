package kr.or.ddit.expert.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/expert/pay")
public class ExpertPayController {

	@GetMapping
	public String expertPay() {
		return "expert/expertPay";
	}
}
