package kr.or.ddit.announcement.service;

import java.util.List;

import org.springframework.stereotype.Service;

import kr.or.ddit.announcement.dao.AnnoDAO;
import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.announcement.vo.AnnoWalfareVO;
import kr.or.ddit.exception.NotExistBoardException;
import kr.or.ddit.vo.PagingVO;
import lombok.RequiredArgsConstructor;

/**
 * @author 작성자명
 * @since 2023. 2. 7.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                          수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 7.      양서연       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
@RequiredArgsConstructor
public class AnnoServiceImpl implements AnnoService {

	private final AnnoDAO annoDAO;
	
	@Override
	public void retrieveAnnoList(PagingVO<AnnoVO> pagingVO) {
		pagingVO.setTotalRecord(annoDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(annoDAO.selectAnnoList(pagingVO));
	}

	@Override
	public AnnoVO retrieveAnno(String annoNo) {
		AnnoVO anno = annoDAO.selectAnno(annoNo);
		if(anno==null)
			throw new NotExistBoardException(annoNo);
		return anno;
	}
	
	public int createAnno(AnnoVO anno) {
		//공고등록
		int rowcnt = annoDAO.insertAnno(anno);
		//세부공고등록
		List<AnnoDetailVO> detailList = anno.getDetailList();
		rowcnt += annoDAO.insertAnnoDetail(detailList);
		//복지등록
		List<AnnoWalfareVO> walfareList = anno.getWalfareList();
		rowcnt += annoDAO.insertWalfareList(walfareList);
		//경력등록
		for(AnnoDetailVO i : detailList) {
			rowcnt += annoDAO.insertAnnoCareer(i.getCareerName());
		}
		//직무직책등록
		for(AnnoDetailVO i : detailList) {
			rowcnt += annoDAO.insertAnnoPosition(i.getPositionCode());
		}
		return rowcnt;
	}
}
