package kr.or.ddit.expert.dao;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.expert.vo.ExprodVO;

@Mapper
public interface ExprodDAO {
	public int InsertExprod(ExprodVO exprod);
	
	public ExprodVO selectExprod(String exprodId);
	
	public int updateExprod(ExprodVO exprod);
}
