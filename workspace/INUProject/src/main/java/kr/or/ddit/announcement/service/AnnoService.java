package kr.or.ddit.announcement.service;

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
public interface AnnoService {
	public void retrieveAnnoList(PagingVO<AnnoVO> pagingVO);
	public AnnoVO retrieveAnno(String annoNo);
}
