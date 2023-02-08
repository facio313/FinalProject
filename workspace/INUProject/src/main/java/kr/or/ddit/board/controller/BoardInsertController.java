package kr.or.ddit.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.board.service.BoardService;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;

@Controller
@RequestMapping("/board/writeBoard")
public class BoardInsertController {

	@Inject
	private BoardService service;

	// attribute 보내기
	@ModelAttribute("board")
	public BoardVO board() {
		return new BoardVO();
	}

	// get방식으로 폼 보내기
	@GetMapping
	public String boardForm() {
		return "board/writeBoard";
	}

	// post방식으로 받기
	@PostMapping
	public String writeBoard(
		Model mdel
		, @ModelAttribute("board") BoardVO board
		, @AuthMember MemberVO authMember
	) {
		String viewName = null;
		board.setMemId(authMember.getMemId());
		int rowcnt = service.createBoard(board);
		if (rowcnt > 0) {
//			viewName = "redirect:/board/detailBoard?what=" + board.getBoardNo();
			viewName = "redirect:totalBoard";
		} else {
			viewName = "board/writeBoard";
		}
		return viewName;

	}

}
