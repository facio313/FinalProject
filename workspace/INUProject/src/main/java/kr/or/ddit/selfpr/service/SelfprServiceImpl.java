package kr.or.ddit.selfpr.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.selfpr.dao.SelfprDAO;
import kr.or.ddit.selfpr.vo.SelfprVO;
import kr.or.ddit.vo.PagingVO;

@Service
public class SelfprServiceImpl implements SelfprService {
	
	@Inject
	private SelfprDAO selfprDAO;
	
	@Override
	public void retrieveSelfprList(PagingVO<SelfprVO> pagingVO) {
		pagingVO.setTotalRecord(selfprDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(selfprDAO.selectSelfprList(pagingVO));
		
	}

	
	
}
