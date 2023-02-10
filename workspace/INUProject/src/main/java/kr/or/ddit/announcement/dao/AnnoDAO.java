package kr.or.ddit.announcement.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.announcement.vo.AnnoVO;
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
}
