package kr.or.ddit.company.service;


import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.exception.UserNotFoundException;
import kr.or.ddit.vo.PagingVO;

/**
 * 회사(CRUD)를 위한 Business Logic Layer
 */
public interface CompanyService {

	public void retrieveCompanyList(PagingVO<CompanyVO> company);
	/**
	 * 회사 정보 상세 조회
	 * @param comId
	 * @return 존재하지 않는 경우, {@link UserNotFoundException} 발생.
	 */
	public CompanyVO retrieveCompany(String cmpName);
	
	public int createCompany(CompanyVO company);
	
}


















