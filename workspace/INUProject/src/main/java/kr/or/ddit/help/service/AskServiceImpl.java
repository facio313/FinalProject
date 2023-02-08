package kr.or.ddit.help.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import kr.or.ddit.help.dao.AskDAO;
import kr.or.ddit.help.vo.AskVO;

@Service
public class AskServiceImpl implements AskService {

	@Inject
	private AskDAO dao;

	@Override
	public AskVO retrieveAsk(String askNo) {
		AskVO ask = dao.selectAsk(askNo);
		return ask;
	}

	@Override
	public List<AskVO> retrieveAskList() {
		List<AskVO> askList = dao.selectAskList();
		return askList;
	}

}
