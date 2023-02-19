package kr.or.ddit.board.controller;

import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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

	@ModelAttribute("simpleCondition")
	public SearchVO searchVO() {
		return new SearchVO();
	}

	// ui
	@GetMapping("/boardTotal")
	public String totalBoardUI() {
		return "board/boardTotal";
	}

	// 게시판 메인
	@GetMapping("/boardMain")
	public String board(
			Model model
	) {
		List<BoardVO> boardList = service.retrieveBoardList();
		model.addAttribute("boardList", boardList);
		return "board/boardMain";
	}

	// 게시판글 전체조회 + 페이징 + 검색
	@GetMapping(value="/boardTotal", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String totalBoard(
			Model model,
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage,
			@ModelAttribute("simpleCondition") SearchVO searchVO,
			@RequestParam("boardNo") String boardNo
	) {
		log.info("왓나");
		PagingVO<BoardVO> pagingVO = new PagingVO<>();
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);

		service.retrieveBoardList(pagingVO);

		model.addAttribute("pagingVO", pagingVO);

		if(!pagingVO.getDataList().isEmpty())
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));

		// System.out.println(pagingVO);

		return "jsonView";
	}

	// 상세조회
	@GetMapping("/boardDetail")
	public String detailBoard(
			Model model,
			@RequestParam("boardNo") String boardNo
//			Authentication authentication
//			// @PathVariable : 해당 글번호로 이동(URI에 글번호가 들어감)
//			@PathVariable("boardNo") String boardNo
	) {
		BoardVO board = service.retrieveBoard(boardNo);
		service.updateHits(boardNo);
//		String memId = authentication.getName();
//		if(memId!=null && memId.length()>0) {
			/*String likeOn = service.likeOn(boardNo, memId);
			model.addAttribute("likeOn",likeOn);*/
//		}
		model.addAttribute("board", board);
		return "board/boardDetail";
	}

	// 좋아요 추가
	@PostMapping(value="likeInsert",produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody // 자바객체를 마샬링해서 응답데이터로 넘겨야 함
	public HashMap<String, Object> boardLike(
			@RequestParam String boardNo,
			@RequestParam String likeType,
			Authentication authentication
	) {
		HashMap<String, Object> m = new HashMap<>();
		m.put("boardNo", boardNo);
		m.put("likeType", likeType);
		m.put("memId", authentication.getName());
		try {
			service.likeInsert(m);

		} catch (Exception e) {
			m.put("error",e.getMessage());
		}
		return m;
	}

	// 좋아요 개수
	@PostMapping(value="likeCount",produces=MediaType.TEXT_PLAIN_VALUE)
	@ResponseBody
	public String boardCount(@RequestParam String boardNo) {
		int likeCnt = service.likeCount(boardNo);
		return likeCnt + "";
	}

}
