package kr.or.ddit.help.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.exception.NotExistNoticeException;
import kr.or.ddit.help.dao.NoticeDAO;
import kr.or.ddit.help.vo.NoticeVO;
import kr.or.ddit.vo.PagingVO;

/**
 * 
 * @author 박형준
 * @since 2023. 2. 7.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일              수정자              수정내용
 * --------     --------    ----------------------
 * 2023. 2. 7.    박형준             최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class NoticeServiceImpl implements NoticeService{
	@Inject
	private NoticeDAO noticeDAO;
	
	//공지사항 목록
	@Override
	public void retrieveNoticeList(PagingVO<NoticeVO> pagingVO) {
		pagingVO.setTotalRecord(noticeDAO.selectTotalRecord(pagingVO));	//검색 페이징
		pagingVO.setDataList(noticeDAO.selectNoticeList(pagingVO));	//목록 페이징
	}

	//공지사항 조회
	@Override
	public NoticeVO retrieveNotice(String noticeSn) {
		NoticeVO notice = noticeDAO.selectNotice(noticeSn);
		if(notice==null)
			throw new NotExistNoticeException(noticeSn);
		noticeDAO.incrementHit(notice);
		return notice;
	}

	//공지사항 생성
	@Override
	public int createNotice(NoticeVO notice) {
		int rowcnt = noticeDAO.insertNotice(notice);
		return rowcnt;
	}

	//공지사항 수정
	@Override
	public int modifyNotice(NoticeVO notice) {
		NoticeVO savedNotice = noticeDAO.selectNotice(notice.getNoticeSn());
		if(savedNotice==null)
			throw new NotExistNoticeException(notice.getNoticeSn());
		int rowcnt = noticeDAO.updateNotice(notice);
		
		return rowcnt;
	}

	//공지사항 삭제
	@Override
	public int removeNotice(String noticeSn) {
		int rowcnt = noticeDAO.deleteNotice(noticeSn);
		return rowcnt;
	}

}



















