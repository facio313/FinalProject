package kr.or.ddit.help.service;

import java.util.List;

import kr.or.ddit.help.vo.AskVO;

public interface AskService {

	public AskVO retrieveAsk(String askNo);
	public List<AskVO> retrieveAskList();
}
