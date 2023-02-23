package kr.or.ddit.company.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Value;
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
import kr.or.ddit.expert.dao.AttachDAO;
import kr.or.ddit.member.dao.MemberDAO;
import kr.or.ddit.vo.AttachVO;
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
	
	@Inject
	private AttachDAO attachDAO;
	
	@Value("#{appInfo.saveFiles}")
	private File saveFiles;

	private int processAttatchList(CompanyVO company) {
		
		List<AttachVO> attatchList = company.getAttatchList();
		if (attatchList == null || attatchList.isEmpty())
			return 0;
		// 1. metadata 저장 - DB (ATTATCH)
		log.info("member : {}", company);
		log.info("attactchList : {}" , attatchList);
		// 2. binary 저장 - Middle Tier : (D:\saveFiles)
		try {
			for (AttachVO attatch : attatchList) {
				attatch.saveTo(saveFiles);
			}
			int rowcnt = attachDAO.insertAttatches(company);
			return rowcnt;
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}	

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

	@Override
	public int createCompany(CompanyVO company) {
		int rowcnt = companyDAO.insertCompany(company);
		rowcnt = processAttatchList(company);
		return rowcnt;
	}

	
}




















