package kr.or.ddit.announcement.service;

import org.springframework.stereotype.Service;

import kr.or.ddit.announcement.dao.AnnoDAO;
import kr.or.ddit.announcement.vo.AnnoVO;
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
}
