package kr.or.ddit.expert.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.expert.vo.ExcartVO;

@Mapper
public interface ExcartDAO {
	
	public List<ExcartVO> selectExcartList(String memId);
	
	public int updateReviewState(String excartId);
	
	public ExcartVO selectExcart(String excartId);
}
