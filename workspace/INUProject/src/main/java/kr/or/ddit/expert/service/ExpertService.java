package kr.or.ddit.expert.service;

import kr.or.ddit.expert.vo.ExpertVO;
import kr.or.ddit.vo.MemberVO;

public interface ExpertService {
	public int aplicationExpert(ExpertVO expert);
	
	public ExpertVO retrieveMember(String memId);
}
