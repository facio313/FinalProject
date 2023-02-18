package kr.or.ddit.help.service;

import java.util.List;

import kr.or.ddit.help.vo.AskVO;
import kr.or.ddit.vo.PagingVO;

public interface AskService {

	// 상세조회
	public AskVO retrieveAsk(String askNo);

	// 문의내역 전체 조회
	public void retrieveAskList(PagingVO<AskVO> pagingVO);

	// 등록
	public int createAsk(AskVO ask);

	// 삭제(관리자만 가능)
	public int removeAsk(AskVO ask);
}
