package kr.or.ddit.selfpr.service;

import java.util.List;

import kr.or.ddit.selfpr.vo.SelfprVO;
import kr.or.ddit.vo.PagingVO;

public interface SelfprService {

	public void retrieveSelfprList(PagingVO<SelfprVO> pagingVO);
	
//	세부사항 가져오는 메소드
	public SelfprVO retrieveSelfprMember(int prNo);
	public List<SelfprVO> retrieveSelfprEducation(int prNo);
	
	
}
