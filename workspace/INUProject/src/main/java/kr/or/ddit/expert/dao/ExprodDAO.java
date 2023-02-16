package kr.or.ddit.expert.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.expert.vo.ExprodVO;
import kr.or.ddit.vo.PagingVO;

@Mapper
public interface ExprodDAO {
	public int InsertExprod(ExprodVO exprod);
	
	public ExprodVO selectExprod(String exprodId);
	
	public int updateExprod(ExprodVO exprod);
	
	public List<ExprodVO> selectExprodList(PagingVO<ExprodVO> pagingVO);
	
	public int selectTotalRecord(PagingVO<ExprodVO> pagingVO);
	
	
}
