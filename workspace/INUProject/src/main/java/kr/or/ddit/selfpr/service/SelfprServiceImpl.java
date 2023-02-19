package kr.or.ddit.selfpr.service;

import java.util.List;

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
	
//	세부사항 가져오는 메소드
	@Override
	public SelfprVO retrieveSelfprMember(int prNo) {
		SelfprVO selfprmem = selfprDAO.selectSelfprMember(prNo);
		return selfprmem;
	}
	@Override
	public List<SelfprVO> retrieveSelfprEducation(int prNo) {
		List<SelfprVO> selfpredu = selfprDAO.selectSelfprEducation(prNo);
		return selfpredu;
	}

	
	
}
