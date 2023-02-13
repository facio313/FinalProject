package kr.or.ddit.expert.service;

import java.util.List;

import kr.or.ddit.expert.vo.ExcartVO;
import kr.or.ddit.resume.vo.CareerVO;

public interface ExcartService {
	public List<ExcartVO> selectExcartList(String memId);
	
	public ExcartVO slectExcart(String cartId);
}
