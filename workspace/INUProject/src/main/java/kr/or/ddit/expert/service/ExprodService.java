package kr.or.ddit.expert.service;

import kr.or.ddit.expert.vo.ExprodVO;

public interface ExprodService {
	public int InsertExprod(ExprodVO exprod);
	
	public ExprodVO selectExprod(String exprodId);
	
	public int updateExprod(ExprodVO exprod);
}
