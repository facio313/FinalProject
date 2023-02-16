package kr.or.ddit.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.board.dao.InterviewDAO;
import kr.or.ddit.board.vo.BoardVO;
import kr.or.ddit.board.vo.InterviewVO;
import kr.or.ddit.vo.PagingVO;

@Service
public class InterviewServiceImpl implements InterviewService {

	@Inject
	private InterviewDAO dao;

	// 상세조회
	@Override
	public InterviewVO retrieveInterview(String incumNo) {
		InterviewVO interview = dao.selectInterview(incumNo);
		return interview;
	}

	// 전체조회
	@Override
	public void retrieveInterviewList(PagingVO<InterviewVO> pagingVO) {
		pagingVO.setTotalRecord(dao.selectTotalRecord(pagingVO));
		pagingVO.setDataList(dao.selectInterviewList(pagingVO));
	}

	// 등록
	@Override
	public int createInterview(InterviewVO interview) {
		int rowcnt = dao.insertInterview(interview);
		return rowcnt;
	}

	// 수정
	@Override
	public int modifyInterview(InterviewVO interview) {
		int rowcnt = dao.updateInterview(interview);
		return rowcnt;
	}

	// 삭제
	@Override
	public int removeInterview(InterviewVO interview) {
		int rowcnt = dao.deleteInterview(interview);
		return rowcnt;
	}

	// 조회수
	@Override
	public int updateHis(String incumNo) {
		int rowcnt = dao.updateHits(incumNo);
		return rowcnt;
	}



}
