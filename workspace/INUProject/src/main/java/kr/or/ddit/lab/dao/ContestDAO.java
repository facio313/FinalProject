package kr.or.ddit.lab.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.lab.vo.ContestVO;
import kr.or.ddit.vo.PagingVO;

@Mapper
public interface ContestDAO {
	
	public List<ContestVO> selectContestList(PagingVO<ContestVO> pagingVO);
	public int selectTotalRecord(PagingVO<ContestVO> pagingVO);
}
