package kr.or.ddit.apply.service;

import java.util.List;

import kr.or.ddit.apply.vo.ApplyVO;
import kr.or.ddit.enumpkg.ServiceResult;

/**
 * 
 * @author 최경수
 * @since 2023. 2. 13.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일         수정자        수정내용
 * --------     --------    ----------------------
 * 2023. 2. 13.      최경수       최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface ApplyService {

	public ApplyVO retrieveApply(String applySn);
	public List<ApplyVO> retrieveApplyList(String memId);
	public ServiceResult createApply(ApplyVO apply);
	public ServiceResult modifyApply(ApplyVO apply);
	public ServiceResult removeApply(String applySn);
}
