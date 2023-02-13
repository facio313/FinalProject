package kr.or.ddit.resume.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.resume.dao.EducationDAO;
import kr.or.ddit.resume.dao.ResumeDAO;
import kr.or.ddit.resume.vo.EducationVO;

/**
 * @author 최경수
 * @since 2023. 2. 6.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 	    수정일               수정자                                     수정내용
 * --------     --------    ----------------------
 * 2023. 2. 6.       최경수        최초작성
 * 2023. 2. 7.       최경수        삭제 추가
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class EducationServiceImpl implements EducationService {

	@Inject
	private EducationDAO dao;
	@Inject
	private ResumeDAO resumeDAO;
	
	@Override
	public EducationVO retrieveEducation(String eduSn) {
		EducationVO edu = dao.selectEducation(eduSn);
		return edu;
	}

	@Override
	public List<EducationVO> retrieveEducationList(String memId) {
		List<EducationVO> eduList = dao.selectEducationList(memId);
		return eduList;
	}

	@Override
	public ServiceResult createEducation(EducationVO edu) {
		int rowcnt = dao.inserteEducation(edu);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult modifyEducation(EducationVO edu) {
		int rowcnt = dao.updateEducation(edu);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult removeEducation(String eduSn) {
		int rowcnt = dao.deleteEducation(eduSn);
		rowcnt += resumeDAO.deleteItem(eduSn);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

}
