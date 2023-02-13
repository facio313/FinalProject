package kr.or.ddit.expert.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.expert.dao.ExprodDAO;
import kr.or.ddit.expert.vo.ExprodVO;
@Service
public class ExprodServiceImpl implements ExprodService {
	
	@Inject
	private ExprodDAO exprodDAO;
	
	@Override
	public int InsertExprod(ExprodVO exprod) {
		int rowcnt = exprodDAO.InsertExprod(exprod);
		return rowcnt;
	}

	@Override
	public ExprodVO selectExprod(String exprodId) {
		ExprodVO exprod = exprodDAO.selectExprod(exprodId);
		return exprod;
	}

	@Override
	public int updateExprod(ExprodVO exprod) {
		int rowcnt = exprodDAO.updateExprod(exprod);
		return rowcnt;
	}

}
