package kr.or.ddit.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.board.vo.InterviewVO;

@Mapper
public interface InterviewDAO {
	public InterviewVO selectInterview(String incumNo);
	public List<InterviewVO> selectInterviewList();
	public int insertInterview(InterviewVO interview);
}
