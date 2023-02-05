package kr.or.ddit.company.service;

import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import kr.or.ddit.company.dao.CompanyDAO;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.exception.UserNotFoundException;
import kr.or.ddit.member.dao.MemberDAO;
import kr.or.ddit.vo.IncruiterVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SeekerVO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Service
public class CompanyServiceImpl implements CompanyService {

	@Inject
	private CompanyDAO companyDAO;

	@Override
	public CompanyVO retrieveCompany(String cmpName) {
		CompanyVO company = companyDAO.selectCompany(cmpName);
		if(company==null) 
			throw new UsernameNotFoundException(String.format(cmpName+"에 해당하는 회사 없음."));
		return company;
		
	}

	@Override
	public void retrieveCompanyList(PagingVO<CompanyVO> pagingVO) {
		pagingVO.setTotalRecord(companyDAO.selectTotalRecord(pagingVO));
		List<CompanyVO> companyList = companyDAO.selectCompanyList(pagingVO);
		pagingVO.setDataList(companyList);
		companyList.stream().forEach(System.out::println);
	}
	
	
}




















