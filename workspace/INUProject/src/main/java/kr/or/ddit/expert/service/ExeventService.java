package kr.or.ddit.expert.service;

import kr.or.ddit.expert.vo.ExeventVO;
import kr.or.ddit.vo.AttachVO;
import kr.or.ddit.vo.PagingVO;

public interface ExeventService {
	
	public void retrieveExeventList(PagingVO<ExeventVO> exevent);
	
	public ExeventVO retrieveExevent(String exeventId);
	
	public int createExevent(ExeventVO exevent);
	
	public AttachVO retrieveFordownload(String attId);
	
	public int updateHits(String exeventId);
}
