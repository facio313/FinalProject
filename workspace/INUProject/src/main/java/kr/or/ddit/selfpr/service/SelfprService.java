package kr.or.ddit.selfpr.service;

import kr.or.ddit.selfpr.vo.SelfprVO;
import kr.or.ddit.vo.PagingVO;

public interface SelfprService {

	public void retrieveSelfprList(PagingVO<SelfprVO> pagingVO);
	
	public SelfprVO retrieveSelfpr(int prNo);
	
}
