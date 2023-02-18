package kr.or.ddit.selfpr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.selfpr.vo.SelfprVO;
import kr.or.ddit.vo.PagingVO;

@Mapper
public interface SelfprDAO {

//	검색 관련

	public List<Map<String, Object>> selectRegionList(@Param("regionRef") String regionRef);
	public List<Map<String, Object>> selectIndustry(@Param("industryRef") String industryRef);
	
//	리스트 뽑기
	
	public List<SelfprVO> selectSelfprList(PagingVO<SelfprVO> pagingVO);
	
	public int selectTotalRecord(PagingVO<SelfprVO> pagingVO);
	
	public SelfprVO selectSelfpr(int prNo);
	
	
	
}
