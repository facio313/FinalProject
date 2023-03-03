package kr.or.ddit.lab.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.lab.dao.ContestDAO;
import kr.or.ddit.lab.vo.ContestVO;
import kr.or.ddit.vo.PagingVO;

@Service
public class ContestServiceImpl implements ContestService{

	@Inject
	private ContestDAO ContestDAO;
	
	@Override
	public void retrieveContestList(PagingVO<ContestVO> pagingVO) {
		pagingVO.setTotalRecord(ContestDAO.selectTotalRecord(pagingVO));
		pagingVO.setDataList(ContestDAO.selectContestList(pagingVO));
	}

}
