package kr.or.ddit.announcement.service;

import java.util.List;

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
 * 2023. 2. 17.     최경수       회원아이디로 공고 찾기
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface AnnoService {
	public void retrieveAnnoList(PagingVO<AnnoVO> pagingVO);
	public AnnoVO retrieveAnno(String annoNo);
	public int createAnno(AnnoVO anno);
	
	public int selectLikeAnno(String annoNo, String memId);
	public int insertLikeAnno(String annoNo, String memId);
	public int deleteLikeAnno(String annoNo, String memId);

	public int selectLikeCmp(String cmpId, String memId);
	public int insertLikeCmp(String cmpId, String memId);
	public int deleteLikeCmp(String cmpId, String memId);
	
	public List<AnnoVO> retrieveMyAnnoList(String memId);
}
