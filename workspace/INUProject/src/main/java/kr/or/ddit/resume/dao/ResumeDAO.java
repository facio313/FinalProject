package kr.or.ddit.resume.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.resume.vo.ResumeItemVO;
import kr.or.ddit.resume.vo.ResumeVO;

/**
 * 
 * @author 최경수
 * @since 2023. 2. 6.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                      수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 6.      최경수              최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface ResumeDAO {
	
	/**
	 * 하나의 이력서 찾기
	 * @param resumeId
	 * @return 존재하지 않으면, null
	 */
	public ResumeVO selectResume(String resumeSn);
	
	/**
	 * 한 회원이 쓴 모든 이력서 찾기
	 * @param memId
	 * @return List
	 */
	public List<ResumeVO> selectResumeList(String memId);
	
	/**
	 * 신규 이력서 등록
	 * @param resume
	 * @return 등록된 이력서 수
	 */
	public int insertResume(ResumeVO resume);
	
	/**
	 * 이력서 수정
	 * @param resume
	 * @return 수정된 이력서 수
	 */
	public int updateResume(ResumeVO resume);
	
	/**
	 * 이력서에 쓰인 항목 목록 찾기
	 * @param resumeId
	 * @return 항목(ResumeItemVO)가 들어있는 목록(List)
	 */
	public List<ResumeItemVO> selectItemList(String resumeSn);
}
