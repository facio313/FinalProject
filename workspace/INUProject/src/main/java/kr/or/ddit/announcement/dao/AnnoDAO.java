package kr.or.ddit.announcement.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.announcement.vo.AnnoWalfareVO;
import kr.or.ddit.vo.PagingVO;

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
@Mapper
public interface AnnoDAO {
	/**
	 * 검색 조건과 현재 페이지에 맞는 공고 조회
	 * @param pagingVO
	 * @return
	 */
	public List<AnnoVO> selectAnnoList(PagingVO<AnnoVO> pagingVO);
	
	/**
	 * 검색 조건에 맞는 레코드 수 반환
	 * @param pagingVO
	 * @return
	 */
	public int selectTotalRecord(PagingVO<AnnoVO> pagingVO);
	
	/**
	 * @param annoNo
	 * @return 존재하지 않으면, null 반환
	 */
	public AnnoVO selectAnno(@Param("annoNo") String annoNo);
	
	/**
	 * 공고 신규 등록
	 * @param anno
	 * @return
	 */
	public int insertAnno(AnnoVO anno);
	
	/**
	 * 세부공고 신규 등록
	 * @param detail
	 * @return
	 */
	public int insertAnnoDetail(AnnoDetailVO detailVO);
	
	/**
	 * 세부공고당 경력 등록
	 * @param careerName
	 * @return
	 */
	public int insertAnnoCareer(@Param("careerName") String careerName, @Param("daNo") String daNo);
//	public int insertAnnoCareer(Map<String, Object> map);

	/**
	 * 세부공고당 직급직책조건 등록
	 * @param positionName
	 * @return
	 */
	public int insertAnnoPosition(@Param("positionCode") String positionCode, @Param("daNo") String daNo);
//	public int insertAnnoPosition(Map<String, Object> map);
	
	/**
	 * 공고당 복지 리스트 등록
	 * @param walfare
	 * @return
	 */
//	public int insertWalfareList(@Param("walfareCode") String walfareCode, @Param("annoNo") String annoNo);
//	public int insertWalfareList(AnnoWalfareVO walfareVO);
	public int insertWalfareList(Map<String, Object> map);
}
