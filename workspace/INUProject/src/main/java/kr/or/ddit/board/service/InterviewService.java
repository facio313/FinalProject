package kr.or.ddit.board.service;

import java.util.List;

import javax.inject.Inject;

import kr.or.ddit.board.dao.InterviewDAO;
import kr.or.ddit.board.vo.InterviewVO;

public interface InterviewService {

	public InterviewVO retrieveInterview(String incumNo);
	public List<InterviewVO> retrieveInterviewList();
	public int createInterview(InterviewVO interview);


}
