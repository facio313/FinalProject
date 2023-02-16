package kr.or.ddit.apply.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.apply.dao.ApplyDAO;
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
@Service
public class ApplyServiceImpl implements ApplyService {

	@Inject
	private ApplyDAO dao;
	
	@Override
	public ApplyVO retrieveApply(String applySn) {
		ApplyVO apply = dao.selectApply(applySn);
		return apply;
	}

	@Override
	public List<ApplyVO> retrieveApplyList(String memId) {
		List<ApplyVO> list = dao.selectApplyList(memId);
		return list;
	}

	@Override
	public ServiceResult createApply(ApplyVO apply) {
		int rowcnt = dao.insertApply(apply);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult modifyApply(ApplyVO apply) {
		int rowcnt = dao.updateApply(apply);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

	@Override
	public ServiceResult removeApply(String applySn) {
		int rowcnt = dao.deleteApply(applySn);
		return rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
	}

}
