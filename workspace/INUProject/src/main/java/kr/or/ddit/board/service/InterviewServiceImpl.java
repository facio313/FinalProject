package kr.or.ddit.board.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.board.dao.InterviewDAO;
import kr.or.ddit.board.vo.InterviewVO;

@Service
public class InterviewServiceImpl implements InterviewService {

	@Inject
	private InterviewDAO dao;

	@Override
	public InterviewVO retrieveInterview(String incumNo) {
		InterviewVO interview = dao.selectInterview(incumNo);
		return interview;
	}

	@Override
	public List<InterviewVO> retrieveInterviewList() {
		List<InterviewVO> interviewList =  dao.selectInterviewList();
		return interviewList;
	}

	@Override
	public int createInterview(InterviewVO interview) {
		int rowcnt = dao.insertInterview(interview);
		return rowcnt;
	}

}
