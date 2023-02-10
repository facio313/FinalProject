package kr.or.ddit.resume.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import kr.or.ddit.resume.vo.CertificationVO;

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
@Mapper
public interface CertificationDAO {
	/**
	 * 하나의 자격증 찾기
	 * @param certId
	 * @return 존재하지 않으면, null
	 */
	public CertificationVO selectCertification(String certSn);
	
	/**
	 * 한 회원이 쓴 모든 자격증 목록
	 * @param memId
	 * @return List
	 */
	public List<CertificationVO> selectCertificationList(String memId);
	
	/**
	 * 신규 자격증 등록
	 * @param cert
	 * @return 등록된 자격증 수
	 */
	public int insertCertification(CertificationVO cert);
	
	/**
	 * 자격증 수정
	 * @param cert
	 * @return 수정된 자격증 수
	 */
	public int updatecCertification(CertificationVO cert);

	/**
	 * 자격증 삭제, 실제로는 삭제 날짜만 바꿔준다.
	 * @param certSn
	 * @return 삭제된 자격증 수 
	 */
	public int deleteCertification(String certSn);
}
