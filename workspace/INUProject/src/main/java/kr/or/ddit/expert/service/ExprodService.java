package kr.or.ddit.expert.service;

import java.util.List;

import kr.or.ddit.expert.vo.ExprodVO;
import kr.or.ddit.vo.PagingVO;

public interface ExprodService {
	public int InsertExprod(ExprodVO exprod);
	
	public ExprodVO selectExprod(String exprodId);
	
	public int updateExprod(ExprodVO exprod);
	
	public void selectExprodList(PagingVO<ExprodVO> pagingVO);
	
	
}
