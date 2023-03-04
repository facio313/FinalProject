package kr.or.ddit.board.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.or.ddit.board.service.BoardService;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board/boardInsert")
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
		return "board/boardInsert";
	}

	// post방식으로 보내기
	@PostMapping
	public String writeBoard(Model mdel, @ModelAttribute("board") BoardVO board, @AuthMember MemberVO authMember) {
		//BoardVO(rnum=0, boardNo=null, memId=null, boardSub=신입, boardTitle=새로운 글입니당ㅇㅇㅇ
		//	, boardDate=null, boardHits=0, boardStatus=null, likeCnt=0, likeCheck=0, likeType=
		log.info("board : " + board);
		log.info("boardContent : " + board.getBoardContent());
		log.info("authMember : " + authMember);

		String gubun = "";

		if(board.getBoardSub().equals("신입")) {
			gubun = "1";
		}else if(board.getBoardSub().equals("취준")) {
			gubun = "2";
		}else if(board.getBoardSub().equals("채용공고")) {
			gubun = "3";
		}else if(board.getBoardSub().equals("자소서")) {
			gubun = "4";
		}else if(board.getBoardSub().equals("면접")) {
			gubun = "5";
		}else if(board.getBoardSub().equals("Q&A")) {
			gubun = "6";
		}else {
			gubun = "";
		}

		String viewName = null;
		board.setMemId(authMember.getMemId());
		int rowcnt = service.createBoard(board);
//		int rowcnt = 1;
		if (rowcnt > 0) {
//			viewName = "redirect:/board/detailBoard?what=" + board.getBoardNo();
			viewName = "redirect:boardTotal?gubun="+gubun;
		} else {
			viewName = "board/boardInsert";
		}
		return viewName;

	}

}
