package kr.or.ddit.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.board.service.BoardService;
import kr.or.ddit.board.vo.BoardVO;

@Controller
@RequestMapping("/board")
public class BoardController {

	@Inject
	private BoardService service;

	@GetMapping("/boardMain")
	public String board(Model model) {
		List<BoardVO> boardList = service.retrieveBoardList();
		model.addAttribute("boardList", boardList);
		return "board/boardMain";

	}

	@GetMapping("/totalBoard")
	public String totalBoard(Model model) {
		List<BoardVO> boardList = service.retrieveBoardList();
		model.addAttribute("boardList", boardList);
		return "board/totalBoard";

	}

	@GetMapping("/detailBoard")
	public String detailBoard(Model model, @RequestParam("boardNo") String boardNo) {
		BoardVO board = service.retrieveBoard(boardNo);
		model.addAttribute("board", board);
		return "board/detailBoard";

	}


}
