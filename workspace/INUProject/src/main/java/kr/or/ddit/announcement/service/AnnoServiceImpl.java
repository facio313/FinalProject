package kr.or.ddit.announcement.service;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import kr.or.ddit.announcement.dao.AnnoDAO;
import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.exception.NotExistAnnoException;
import kr.or.ddit.expert.dao.AttachDAO;
import kr.or.ddit.process.vo.ProcessVO;
import kr.or.ddit.vo.PagingVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import oracle.net.aso.a;

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
 * 2023. 2. 20.     최경수       채용과정 포함 세부공고
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Service
@RequiredArgsConstructor
public class AnnoServiceImpl implements AnnoService {

	private final AnnoDAO annoDAO;
	private final AttachDAO attachDAO;
	
	@Override
	public void retrieveAnnoList(PagingVO<AnnoVO> pagingVO) {
		pagingVO.setTotalRecord(annoDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(annoDAO.selectAnnoList(pagingVO));
	}

	@Override
	public AnnoVO retrieveAnno(String annoNo) {
		AnnoVO anno = annoDAO.selectAnno(annoNo);
		if(anno==null)
			throw new NotExistAnnoException(annoNo);
		return anno;
	}

	//공고 추천
	@Override
	public List<AnnoVO> retrieveRecommendList(String annoNo){
		List<AnnoVO> annoList = annoDAO.selectRecommend(annoNo);
		return annoList;
	}
	
	
	@Override
	public ServiceResult createAnno(AnnoVO anno) {
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
			for(String careerName : vo.getCareerNames()) {
				rowcnt += annoDAO.insertAnnoCareer(careerName,daNo);
			}
			//직무직책등록
			List<String> positionList = vo.getInpositionCode();
			if(positionList!=null) {
				for(String positionCode : positionList) {
					rowcnt += annoDAO.insertAnnoPosition(positionCode,daNo);
				}
			}
		}

		//복지등록
		List<String> welfareCodeList = anno.getWelfareCodeList();
		for(String welfareCode : welfareCodeList) {
			Map<String, Object> map = new HashMap<>();
			map.put("welfareCode",welfareCode);
			map.put("annoNo",annoNo);
			rowcnt += annoDAO.insertWelfareList(map);
		}
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}
	
	@Override
	public ServiceResult modifyAnno(AnnoVO anno) {
		int rowcnt=0;
		String annoNo = anno.getAnnoNo();
		
		//공고 수정
		annoDAO.updateAnno(anno);
		
		//세부공고 수정
		List<AnnoDetailVO> detailList = anno.getDetailList();
		for(AnnoDetailVO vo : detailList) {
			annoDAO.updateDetailAnno(vo);
		}
		
		//복지등록..
		annoDAO.deleteAllWelfare(annoNo);
		List<String> welfareCodeList = anno.getWelfareCodeList();
		for(String welfareCode : welfareCodeList) {
			Map<String, Object> map = new HashMap<>();
			map.put("welfareCode",welfareCode);
			map.put("annoNo",annoNo);
			rowcnt += annoDAO.insertWelfareList(map);
		}
		
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}
	
	@Override
	public int removeAnno(String annoNo) {
		return annoDAO.deleteAnno(annoNo);
	}
	
	@Override
	public int terminateAnno(String annoNo) {
		return annoDAO.terminateAnno(annoNo);
	}

	@Override
	public int retrieveLikeAnno(String annoNo, String memId) {
		return annoDAO.selectLikeAnno(annoNo, memId);
	}

	@Override
	public int createLikeAnno(String annoNo, String memId) {
		return annoDAO.insertLikeAnno(annoNo, memId);
	}

	@Override
	public int removeLikeAnno(String annoNo, String memId) {
		return annoDAO.deleteLikeAnno(annoNo, memId);
	}

	@Override
	public int retrieveLikeCmp(String cmpId, String memId) {
		return annoDAO.selectLikeCmp(cmpId, memId);
	}

	@Override
	public int createLikeCmp(String cmpId, String memId) {
		return annoDAO.insertLikeCmp(cmpId, memId);
	}

	@Override
	public int removeLikeCmp(String cmpId, String memId) {
		return annoDAO.deleteLikeCmp(cmpId, memId);
	}

	@Override
	public int insertMemLog(String annoNo, String memId) {
		return annoDAO.insertMemLog(annoNo, memId);
	}

	//경수
	@Override
	public List<AnnoVO> retrieveMyAnnoList(String memId) {
		List<AnnoVO> list = annoDAO.selectMyAnnoList(memId);
		
		String now = LocalDate.now().toString().replace("-", "");
		DateFormat format = new SimpleDateFormat("yyyyMMdd");
		try {
			Date n = format.parse(now);
			double nDays = n.getTime()/(1000*60*60*24);
			for (AnnoVO vo : list) {
				Date sd = format.parse(vo.getAnnoStartdate().replace("-", ""));
				double sDays = sd.getTime()/(1000*60*60*24);
				Date ed = format.parse(vo.getAnnoEnddate().replace("-", ""));
				double eDays = ed.getTime()/(1000*60*60*24);
				double percent = 0;
				if (sDays <= nDays && nDays <= eDays) {
					percent = (double)(100/(eDays-sDays))*(nDays-sDays);
				} else if (eDays < nDays) {
					percent = 100;
				} 
				vo.setPercent(percent);
			}
		} catch ( Exception e) {
			new RuntimeException(e);
		}
		
		return list;
	}
	
	//경수
	@Override
	public AnnoVO retrieveAnnoDetailProcess(String annoNo) {
		AnnoVO anno = annoDAO.selectAnnoDetailProcess(annoNo);
		
		String now = LocalDate.now().toString().replace("-", "");
		// 선형진행도
		try {
			DateFormat format = new SimpleDateFormat("yyyyMMdd");
			Date n = format.parse(now);
			double nDays = n.getTime()/(1000*60*60*24);
			List<AnnoDetailVO> detailList = anno.getDetailList();
			for (AnnoDetailVO vo : detailList) {
				List<ProcessVO> processList = vo.getProcessList();
				double percent = 0;
				if (processList.size() > 1){
					int index = 0;
					Date sd = null;
					double sDays = 0;
					Date ed = null;
					double eDays = 0;
					for (ProcessVO pvo : processList) {
						if (index == 0) {
							sd = format.parse(pvo.getProcessStartDate().replace("-", ""));
							sDays = sd.getTime()/(1000*60*60*24);
						} else if (index == processList.size() - 1) {
							ed = format.parse(pvo.getProcessEndDate().replace("-", ""));
							eDays = ed.getTime()/(1000*60*60*24);
						}
						index++;
					}
					if (sDays <= nDays && nDays <= eDays) {
						percent = (double)(100/(eDays-sDays))*(nDays-sDays);
					} else if (eDays < nDays) {
						percent = 100;	
					}
					
				}
				vo.setPercent(percent);
			}
			
		} catch (Exception e) {
			new RuntimeException(e);
		}
		
		return anno;
	}

	//경수
	@Override
	public List<AnnoVO> retrieveLikeAnnoList(String memId) {
		List<AnnoVO> list = annoDAO.selectLikeAnnoList(memId);
		return list;
	}
	
	//근주
	@Override
	public List<AnnoVO> retrieveLikeAnnoListMypage(String memId) {
		List<AnnoVO> list = annoDAO.selectLikeAnnoListMypage(memId);
		return list;
	}

	@Override
	public List<AnnoVO> retrieveMyAnnoListSeeker(String memId) {
		List<AnnoVO> list = annoDAO.selectMyAnnoListSeeker(memId);
		return list;
	}
}
