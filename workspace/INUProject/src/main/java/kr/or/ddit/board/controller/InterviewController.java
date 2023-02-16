package kr.or.ddit.board.controller;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.board.service.InterviewService;
import kr.or.ddit.board.vo.InterviewVO;
import kr.or.ddit.ui.PaginationRenderer;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
@RequestMapping("/interview")
public class InterviewController {

	@Inject
	private InterviewService service;

	@Resource(name="bootstrapPaginationRender")
	private PaginationRenderer renderer;

	@ModelAttribute("simpleCondition")
	public SearchVO searchVO() {
		return new SearchVO();
	}

	// ui
	@GetMapping("/interviewList")
	public String interviewUI() {
		return "interview/interviewList";
	}

	// 인터뷰글 전체조회 + 페이징 + 검색
	@GetMapping(value="/interviewList", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String interviewList(
			Model model,
			@RequestParam(value="page", required=false, defaultValue="1") int currentPage,
			@ModelAttribute("simpleCondition") SearchVO searchVO
	) {
		log.info("왔나?");
		PagingVO<InterviewVO> pagingVO = new PagingVO<>(9,5);
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);

		service.retrieveInterviewList(pagingVO);

		model.addAttribute("pagingVO", pagingVO);

		if(!pagingVO.getDataList().isEmpty())
			model.addAttribute("pagingHTML", renderer.renderPagination(pagingVO));

		// System.out.println(pagingVO);

		return "jsonView";
	}

	// 상세조회
	@GetMapping("/interviewDetail")
	public String detailInterview(
			Model model,
			@RequestParam("incumNo") String incumNo
	) {
		InterviewVO interview = service.retrieveInterview(incumNo);
		service.updateHis(incumNo);
		model.addAttribute("interview", interview);
		return "interview/interviewDetail";

	}


}
