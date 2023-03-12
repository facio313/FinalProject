package kr.or.ddit.help.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.help.dao.AskDAO;
import kr.or.ddit.help.vo.AskVO;
import kr.or.ddit.vo.PagingVO;

@Service
public class AskServiceImpl implements AskService {

	@Inject
	private AskDAO dao;

	// 상세 조회
	@Override
	public AskVO retrieveAsk(String askNo) {
		AskVO ask = dao.selectAsk(askNo);
		return ask;
	}

	// 전체 조회 + 페이징
	@Override
	public void retrieveAskList(PagingVO<AskVO> pagingVO) {
		pagingVO.setTotalRecord(dao.selectTotalRecord(pagingVO));
		pagingVO.setDataList(dao.selectAskList(pagingVO));
	}

	// 등록
	@Override
	public int createAsk(AskVO ask) {
		int rowcnt = dao.insertAsk(ask);
		return rowcnt;
	}

	// 삭제(관리자만 가능)
	@Override
	public int removeAsk(AskVO ask) {
		int rowcnt = dao.deleteAsk(ask);
		return rowcnt;
	}

	// 수정
	@Override
	public int modifyRef(AskVO ask) {
		int rowcnt = dao.updateRef(ask);
		return rowcnt;
	}

	
	
	
	//전체 리스트(시스템 관리
	@Override
	public void retrieveAllList(PagingVO<AskVO> pagingVO) {
		pagingVO.setTotalRecord(dao.selectTotalRecord(pagingVO));
		pagingVO.setDataList(dao.selectAllList(pagingVO));
	}

}
