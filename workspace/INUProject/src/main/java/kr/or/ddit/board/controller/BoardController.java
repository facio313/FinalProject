package kr.or.ddit.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {

	@GetMapping("/boardMain")
	public String board() {
		return "board/boardMain";

	}

	@GetMapping("/totalBoard")
	public String totalBoard() {
		return "board/totalBoard";

	}

	@GetMapping("/detailBoard")
	public String detailBoard() {
		return "board/detailBoard";

	}

	@GetMapping("/writeBoard")
	public String writeBoard() {
		return "board/writeBoard";

	}
}
