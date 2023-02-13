package kr.or.ddit.expert.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.expert.vo.ExeventVO;
import kr.or.ddit.vo.PagingVO;

@Mapper
public interface ExeventDAO {
	public int selectTotalRecord(PagingVO<ExeventVO> pagingVO);
	
	public List<ExeventVO> selectEventList(PagingVO<ExeventVO> paignVo);
	
	public ExeventVO selectEvent(String exeventId);
	
	public int insertExevent(ExeventVO exevent);
	
	public int updateHits(String exeventId);
	
	public int updateExevent(ExeventVO exevent);
	
	public int deleteExevent(String exeventId);
}
