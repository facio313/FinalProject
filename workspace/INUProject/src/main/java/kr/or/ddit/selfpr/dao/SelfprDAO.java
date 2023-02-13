package kr.or.ddit.selfpr.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.selfpr.vo.SelfprVO;
import kr.or.ddit.vo.PagingVO;

@Mapper
public interface SelfprDAO {

	public List<SelfprVO> selectSelfprList(PagingVO<SelfprVO> pagingVO);
	
	public int selectTotalRecord(PagingVO<SelfprVO> pagingVO);
	
}
