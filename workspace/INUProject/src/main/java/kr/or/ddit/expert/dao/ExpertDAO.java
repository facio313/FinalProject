package kr.or.ddit.expert.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.expert.vo.ExpertVO;
import kr.or.ddit.expert.vo.ExprodVO;

@Mapper
public interface ExpertDAO {
	public int aplicationExpert(ExpertVO expert);
	
	public ExpertVO selectExpert(String memId); 
	
	
}