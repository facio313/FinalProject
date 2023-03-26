package kr.or.ddit.resume.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.resume.dao.ActivityDAO;
import kr.or.ddit.resume.dao.AwardDAO;
import kr.or.ddit.resume.dao.CareerDAO;
import kr.or.ddit.resume.dao.CertificationDAO;
import kr.or.ddit.resume.dao.CourseDAO;
import kr.or.ddit.resume.dao.EducationDAO;
import kr.or.ddit.resume.dao.FacilityDAO;
import kr.or.ddit.resume.dao.ResumeDAO;
import kr.or.ddit.resume.vo.ActivityVO;
import kr.or.ddit.resume.vo.AwardVO;
import kr.or.ddit.resume.vo.CareerVO;
import kr.or.ddit.resume.vo.CertificationVO;
import kr.or.ddit.resume.vo.CourseVO;
import kr.or.ddit.resume.vo.EducationVO;
import kr.or.ddit.resume.vo.FacilityVO;
import kr.or.ddit.resume.vo.ResumeItemVO;
import kr.or.ddit.resume.vo.ResumeVO;

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
 * 2023. 2. 10.      최경수        이력서 항목 추가, 선택, 삭제
 * 2023. 2. 13.      최경수        이력서 추가, 수정, 삭제
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Service
public class ResumeServiceImpl implements ResumeService {
	@Inject
	private ResumeDAO dao;
	
	@Inject
	private EducationDAO edu;
	@Inject
	private CareerDAO career;
	@Inject
	private CertificationDAO cert;
	@Inject
	private FacilityDAO facility;
	@Inject
	private ActivityDAO activity;
	@Inject
	private CourseDAO course;
	@Inject
	private AwardDAO award;
	
	@Override
	public ResumeVO retrieveResume(String resumeSn) {
		ResumeVO resume = dao.selectResume(resumeSn);
		retrieveItemList(resumeSn, resume);
		return resume;
	}

	@Override
	public List<ResumeVO> retrieveResumeList(String memId) {
		List<ResumeVO> resumeList = dao.selectResumeList(memId);
		return resumeList;
	}

	@Override
	public ServiceResult createResume(ResumeVO resume) {
		int rowcnt = dao.insertResume(resume);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult modifyResume(ResumeVO resume) {
		int rowcnt = dao.updateResume(resume);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}
	
	@Override
	public ServiceResult removeResume(String resumeSn) {
		int rowcnt = dao.deleteResume(resumeSn);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public void retrieveItemList(String resumeSn, ResumeVO resume) {
		List<ResumeItemVO> itemList = dao.selectItemList(resumeSn);
		String sn = null;
		for (ResumeItemVO item : itemList) {
			sn = item.getResumeItemSn();
			switch (sn.substring(0, 3)) {
				case "EDU": // 나중에 enum으로 바꾸
					if (resume.getEduList() == null) {
						resume.setEduList(new ArrayList<EducationVO>());
					}
					resume.getEduList().add(edu.selectEducation(sn));
					break;
				case "CRR":
					if (resume.getCareerList() == null) {
						resume.setCareerList(new ArrayList<CareerVO>());
					}
					resume.getCareerList().add(career.selectCareer(sn));
					break;
				case "CRT":
					if (resume.getCertList() == null) {
						resume.setCertList(new ArrayList<CertificationVO>());
					}
					resume.getCertList().add(cert.selectCertification(sn));
					break;
				case "FAC":
					if (resume.getFacilityList() == null) {
						resume.setFacilityList(new ArrayList<FacilityVO>());
					}
					resume.getFacilityList().add(facility.selectFacility(sn));
					break;
				case "ACT":
					if (resume.getActivityList() == null) {
						resume.setActivityList(new ArrayList<ActivityVO>());
					}
					resume.getActivityList().add(activity.selectActivity(sn));
					break;
				case "CRS":
					if (resume.getCourseList() == null) {
						resume.setCourseList(new ArrayList<CourseVO>());
					}
					resume.getCourseList().add(course.selectCourse(sn));
					break;
				case "AWD":
					if (resume.getAwardList() == null) {
						resume.setAwardList(new ArrayList<AwardVO>());
					}
					resume.getAwardList().add(award.selectAward(sn));
					break;
			}
		}
	}

	@Override
	public ServiceResult createItem(String resumeSn, Map<String, String> vo) {
		int rowcnt = 0;
		String resumeItemSn = "";
		ObjectMapper objectMapper = new ObjectMapper();
		if (vo.containsKey("eduName")) {
			EducationVO eduVO = objectMapper.convertValue(vo, EducationVO.class);
			rowcnt += edu.inserteEducation(eduVO);
			resumeItemSn = eduVO.getEduSn();
		} else if (vo.containsKey("careerTask")) {
			CareerVO carVO = objectMapper.convertValue(vo, CareerVO.class);
			rowcnt += career.insertCareer(carVO);
			resumeItemSn = carVO.getCareerSn();
		} else if (vo.containsKey("certName")) {
			CertificationVO certVO = objectMapper.convertValue(vo,  CertificationVO.class);
			rowcnt += cert.insertCertification(certVO);
			resumeItemSn = certVO.getCertSn();
		} else if (vo.containsKey("facilityName")) {
			FacilityVO facVO = objectMapper.convertValue(vo, FacilityVO.class);
			rowcnt += facility.insertFacility(facVO);
			resumeItemSn = facVO.getFacilitySn();
		} else if (vo.containsKey("actName")) {
			ActivityVO actVO = objectMapper.convertValue(vo, ActivityVO.class);
			rowcnt += activity.insertActivity(actVO);
			resumeItemSn = actVO.getActSn();
		} else if (vo.containsKey("courseName")) {
			CourseVO crsVO = objectMapper.convertValue(vo, CourseVO.class);
			rowcnt += course.insertCourse(crsVO);
			resumeItemSn = crsVO.getCourseSn();
		} else if (vo.containsKey("awardName")) {
			AwardVO awdVO = objectMapper.convertValue(vo, AwardVO.class);
			rowcnt += award.insertAward(awdVO);
			resumeItemSn = awdVO.getAwardSn();
		}
		ResumeItemVO item = new ResumeItemVO(resumeSn, resumeItemSn);
		rowcnt += dao.insertItem(item);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}
	
	@Override
	public ServiceResult removeItem(String resumeItemSn) {
		int rowcnt = dao.deleteItem(resumeItemSn);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ResumeVO retrieveItemForResume(String memId, String resumeSn) {
		ResumeVO resume = new ResumeVO();
		if (resume.getEduList() == null) {
			resume.setEduList(edu.selectEducationForResume(memId, resumeSn));
		}
		if (resume.getCareerList() == null) {
			resume.setCareerList(career.selectCareerForResume(memId, resumeSn));
		}
		if (resume.getCertList() == null) {
			resume.setCertList(cert.selectCertificationForResume(memId, resumeSn));
		}
		if (resume.getFacilityList() == null) {
			resume.setFacilityList(facility.selectFacilityForResume(memId, resumeSn));
		}
		if (resume.getActivityList() == null) {
			resume.setActivityList(activity.selectActivityForResume(memId, resumeSn));
		}
		if (resume.getCourseList() == null) {
			resume.setCourseList(course.selectCourseForResume(memId, resumeSn));
		}
		if (resume.getAwardList() == null) {
			resume.setAwardList(award.selectAwardForResume(memId, resumeSn));
		}
		
		return resume;
	}

	@Override
	public ServiceResult createResumeItemListForResume(ResumeVO resume) {
		int rowcnt = dao.insertItemList(resume);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult removeItemInResume(ResumeItemVO item) {
		int rowcnt = dao.deleteItemInResume(item);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

}
