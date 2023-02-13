package kr.or.ddit.board.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.board.service.BoardService;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/board")
public class BoardController {

	@Inject
	private BoardService service;

	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;

	// 게시판 메인 + 검색
	@GetMapping("/boardMain")
	public String board(
			Model model,
			@ModelAttribute("simpleCondition") SearchVO searchVO
	) {
		List<BoardVO> boardList = service.retrieveBoardList();
		model.addAttribute("boardList", boardList);
		return "board/boardMain";
	}

	@GetMapping("/boardTotal")
	public String totalBoardUI() {
		return "board/boardTotal";
	}


	// 게시판글 전체조회 + 페이징
	@GetMapping(value="/boardTotal", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String totalBoard(
			Model model,
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage
	) {
		log.info("왓나");
		PagingVO<BoardVO> pagingVO = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		service.retrieveBoardList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);

		if(!pagingVO.getDataList().isEmpty())
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));

		System.out.println(pagingVO);

		return "jsonView";
	}

	// 상세조회
	@GetMapping("/boardDetail")
	public String detailBoard(
			Model model,
			@RequestParam("boardNo") String boardNo
//			// @PathVariable : 해당 글번호로 이동(URI에 글번호가 들어감)
//			@PathVariable("boardNo") String boardNo
	) {
		BoardVO board = service.retrieveBoard(boardNo);
		service.updateHits(boardNo);
		model.addAttribute("board", board);
		return "board/boardDetail";

	}


}
