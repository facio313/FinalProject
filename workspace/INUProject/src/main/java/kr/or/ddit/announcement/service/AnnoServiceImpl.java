package kr.or.ddit.announcement.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.or.ddit.announcement.dao.AnnoDAO;
import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.exception.NotExistBoardException;
import kr.or.ddit.vo.PagingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

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
 * 2023. 2. 17.     최경수       회원아이디로 공고 찾기
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
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

	@Override
	public int createAnno(AnnoVO anno) {
		//공고등록
		int rowcnt = annoDAO.insertAnno(anno);
		String annoNo = anno.getAnnoNo();
		log.info("공고번호공고번호 : {}",annoNo);
		//세부공고등록
		List<AnnoDetailVO> detailList = anno.getDetailList();
		for(AnnoDetailVO vo : detailList) {
			vo.setAnnoNo(annoNo);
			rowcnt += annoDAO.insertAnnoDetail(vo);
			String daNo = vo.getDaNo();
			log.info("세부번호세부번호 : {}",daNo);

			//경력등록
			for(String careerName : vo.getCareerName()) {
//				Map<String, Object> map = new HashMap<>();
//				map.put("careerName", careerName);
//				map.put("daNo", daNo);
//				rowcnt += annoDAO.insertAnnoCareer(map);
				rowcnt += annoDAO.insertAnnoCareer(careerName,daNo);
			}
			//직무직책등록
			if(vo.getPositionCode()!=null && !vo.getPositionCode().isEmpty()) {
				for(String positionCode : vo.getPositionCode()) {
	//				Map<String, Object> map = new HashMap<>();
	//				map.put("positionCode", positionCode);
	//				map.put("daNo", daNo);
	//				rowcnt += annoDAO.insertAnnoPosition(map);
					rowcnt += annoDAO.insertAnnoPosition(positionCode,daNo);
				}
			}
		}

		//복지등록
		List<String> walfareCodeList = anno.getWalfareCodeList();
		for(String walfareCode : walfareCodeList) {
			Map<String, Object> map = new HashMap<>();
			map.put("walfareCode",walfareCode);
			map.put("annoNo",annoNo);
			rowcnt += annoDAO.insertWalfareList(map);
		}
		return rowcnt;
	}

	@Override
	public int selectLikeAnno(String annoNo, String memId) {
		return annoDAO.selectLikeAnno(annoNo, memId);
	}
	
	@Override
	public int insertLikeAnno(String annoNo, String memId) {
		return annoDAO.insertLikeAnno(annoNo, memId);
	}
	
	@Override
	public int deleteLikeAnno(String annoNo, String memId) {
		return annoDAO.deleteLikeAnno(annoNo, memId);
	}

	@Override
	public int selectLikeCmp(String cmpId, String memId) {
		return annoDAO.selectLikeCmp(cmpId, memId);
	}
	
	@Override
	public int insertLikeCmp(String cmpId, String memId) {
		return annoDAO.insertLikeCmp(cmpId, memId);
	}
	
	@Override
	public int deleteLikeCmp(String cmpId, String memId) {
		return annoDAO.deleteLikeCmp(cmpId, memId);
	}
	
	//경수
	@Override
	public List<AnnoVO> retrieveMyAnnoList(String memId) {
		List<AnnoVO> myList = annoDAO.selectMyAnnoList(memId);
		return myList;
	}
}
