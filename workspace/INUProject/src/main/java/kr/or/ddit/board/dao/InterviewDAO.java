package kr.or.ddit.board.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.board.vo.InterviewVO;

@Mapper
public interface InterviewDAO {

	// 상세조회
	public InterviewVO selectInterview(String incumNo);

	// 전체조회
	public List<InterviewVO> selectInterviewList();

	// 등록
	public int insertInterview(InterviewVO interview);

	// 수정
	public int updateInterview(InterviewVO interview);

	// 삭제
	public int deleteInterview(InterviewVO interview);

	// 조회수
	public int updateHits(String incumNo);
}
