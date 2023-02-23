package kr.or.ddit.lab.service;

import org.springframework.stereotype.Service;

import kr.or.ddit.exception.NotExistBoardException;
import kr.or.ddit.lab.dao.CounselingDAO;
import kr.or.ddit.lab.vo.CounselingVO;
import kr.or.ddit.vo.PagingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 작성자명
 * @since 2023. 2. 19.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                 수정자               수정내용
 * --------     --------    ----------------------
 * 2023.02.19.   양서연               최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class CounselingServiceImpl implements CounselingService {
	private final CounselingDAO counDAO;
	@Override
	public void retrieveCounList(PagingVO<CounselingVO> pagingVO) {
		pagingVO.setTotalRecord(counDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(counDAO.selectCounList(pagingVO));
	}

	@Override
	public CounselingVO retrieveCoun(String counNo) {
		CounselingVO coun = counDAO.selectCoun(counNo);
		if(coun==null)
			throw new NotExistBoardException(counNo);
		return coun;
	}

	@Override
	public int createCoun(CounselingVO coun) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int deleteCoun(String counNo) {
		// TODO Auto-generated method stub
		return 0;
	}
}
