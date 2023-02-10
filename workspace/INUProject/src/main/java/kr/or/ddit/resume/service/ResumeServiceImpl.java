package kr.or.ddit.resume.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.resume.dao.ActivityDAO;
import kr.or.ddit.resume.dao.AwardDAO;
import kr.or.ddit.resume.dao.CareerDAO;
import kr.or.ddit.resume.dao.CertificationDAO;
import kr.or.ddit.resume.dao.CourseDAO;
import kr.or.ddit.resume.dao.EducationDAO;
import kr.or.ddit.resume.dao.FacilityDAO;
import kr.or.ddit.resume.dao.ResumeDAO;
import kr.or.ddit.resume.vo.FacilityVO;
import kr.or.ddit.resume.vo.ResumeItemVO;
import kr.or.ddit.resume.vo.ResumeVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
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

		return null;
	}

	@Override
	public ServiceResult modifyResume(ResumeVO resume) {

		return null;
	}

	@Override
	public void retrieveItemList(String resumeSn, ResumeVO resume) {
		List<ResumeItemVO> itemList = dao.selectItemList(resumeSn);
		for (ResumeItemVO item : itemList) {
			String sn = item.getResumeItemSn();
			switch (sn.substring(0, 3)) {
			case "EDU": // 나중에 enum으로 바꾸
				resume.getEduList().add(edu.selectEducation(sn));
				break;
			case "CRR":
				resume.getCareerList().add(career.selectCareer(sn));
				break;
			case "CRT":
				resume.getCertList().add(cert.selectCertification(sn));
				break;
			case "FAC":
				resume.getFacilityList().add(facility.selectFacility(sn));
				break;
			case "ACT":
				resume.getActivityList().add(activity.selectActivity(sn));
				break;
			case "CRS":
				resume.getCourseList().add(course.selectCourse(sn));
				break;
			case "AWD":
				resume.getAwardList().add(award.selectAward(sn));
				break;
			}
		}
	}

}
