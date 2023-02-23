package kr.or.ddit.member.service;

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

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.exception.UserNotFoundException;
import kr.or.ddit.expert.dao.AttachDAO;
import kr.or.ddit.expert.dao.ExeventDAO;
import kr.or.ddit.expert.vo.ExeventVO;
import kr.or.ddit.member.dao.MemberDAO;
import kr.or.ddit.vo.AttachVO;
import kr.or.ddit.vo.IncruiterVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SeekerVO;
import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author 공통
 * @since 2023. 2. 22.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일               수정자               수정내용
 * --------      --------    ----------------------
 * 2023. 2. 22.   박형준                시스템 관리 부분 추가
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@Service
public class MemberServiceImpl implements MemberService {
	@Inject
	private MemberDAO memberDAO;
	@Resource(name="authenticationManager")
	private AuthenticationManager authenticationManager;
	@Inject
	private PasswordEncoder encoder;
	@Inject
	private AttachDAO attachDAO;
	
	@Value("#{appInfo.saveFiles}")
	private File saveFiles;

	private int processAttatchList(MemberVO member) {
		
		List<AttachVO> attatchList = member.getAttatchList();
		if (attatchList == null || attatchList.isEmpty())
			return 0;
		// 1. metadata 저장 - DB (ATTATCH)
		log.info("member : {}", member);
		log.info("attactchList : {}" , attatchList);
		// 2. binary 저장 - Middle Tier : (D:\saveFiles)
		try {
			for (AttachVO attatch : attatchList) {
				attatch.saveTo(saveFiles);
			}
			int rowcnt = attachDAO.insertAttatches(member);
			return rowcnt;
		} catch (IOException e) {
			throw new RuntimeException(e);
		}
	}	
	@PostConstruct
	public void init() throws IOException {
		log.info("주입된 객체 : {}, {}, {}", memberDAO, authenticationManager, encoder);
		log.info("EL로 주입된 첨부파일 저장 경로 : {}", saveFiles.getCanonicalPath());
	}
	
//	member테이블 insert
	@Override
	public ServiceResult createSeeker(SeekerVO member) {
		ServiceResult result = null;
		try {
			retrieveMember(member.getMemId());
			result = ServiceResult.PKDUPLICATED;
		}catch (UserNotFoundException e) {
			String encoded = encoder.encode(member.getMemPass());
			member.setMemPass(encoded);
			int rowcnt = processAttatchList(member);
			rowcnt = memberDAO.insertMember(member);
			rowcnt = memberDAO.insertSeeker(member);
			result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
		}
		return result;
	}

//  incruiter테이블 insert
	@Override
	public ServiceResult createIcruiter(IncruiterVO member) {
		ServiceResult result = null;
		try {
			retrieveMember(member.getMemId());
			result = ServiceResult.PKDUPLICATED;
		}catch (UserNotFoundException e) {
			String encoded = encoder.encode(member.getMemPass());
			member.setMemPass(encoded);
			int rowcnt = processAttatchList(member);
			rowcnt = memberDAO.insertMemberIN(member);
			rowcnt = memberDAO.insertIncruiter(member);
			result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
		}
		return result;
	}

	
	@Override
	public MemberVO retrieveMember(String memId) {
		MemberVO member = memberDAO.selectMember(memId);
		if(member==null)
			throw new UserNotFoundException(String.format(memId+"에 해당하는 사용자 없음."));
		return member;
	}

	@Override
	public ServiceResult modifyMember(MemberVO member) {
//		MemberVO inputData = new MemberVO();
//		inputData.setMemId(member.getMemId());
//		inputData.setMemPass(member.getMemPass());
//		
//		ServiceResult result = authenticationManager.authenticate(inputData);
//		if(ServiceResult.OK.equals(result)) {
//			int rowcnt = memberDAO.updateMember(member);
//			result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
//		}
//		return result;
//		
		ServiceResult result = null;
		Authentication inputData = new UsernamePasswordAuthenticationToken(member.getMemId(), member.getMemPass());
		try {
			authenticationManager.authenticate(inputData);
			int rowcnt = memberDAO.updateMember(member);
			result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
		}catch (UsernameNotFoundException e) {
			result = ServiceResult.NOTEXIST;
		}catch (AuthenticationException e) {
			result = ServiceResult.INVALIDPASSWORD;
		}
		return result;
	}

	@Override
	public ServiceResult removeMember(MemberVO member) {
//		ServiceResult result = authService.authenticate(member);
//		if(ServiceResult.OK.equals(result)) {
//			int rowcnt = memberDAO.deleteMember(member.getMemId());
//			result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
//		}
//		return result;
		
		ServiceResult result = null;
		Authentication inputData = 
				new UsernamePasswordAuthenticationToken(member.getMemId(), member.getMemPass());
		
		try {
			authenticationManager.authenticate(inputData);
			int rowcnt = memberDAO.deleteMember(member.getMemId());
			result = rowcnt > 0 ? ServiceResult.OK : ServiceResult.FAIL;
		}catch (UsernameNotFoundException e) {
			result = ServiceResult.NOTEXIST;
		}catch (AuthenticationException e) {
			result = ServiceResult.INVALIDPASSWORD;
		}
		return result;
	}

	/*=======================================시스템 관리 부분======================================*/
	//권한별 회원 목록
	@Override
	public List<MemberVO> retrieveAuthMemberList(MemberVO member) {
		return memberDAO.selectAuthMemberList(member);
	}
	
	//차단 회원 목록
	@Override
	public List<MemberVO> retrieveCutList() {
		return memberDAO.selectCutList();
	}
	
	//블랙 회원 목록
	@Override
	public List<MemberVO> retrieveBlackList() {
		return memberDAO.selectBlackList();
	}
	
	//총괄기업 회원 목록
	@Override
	public List<MemberVO> retrieveIncruiterList() {
		return memberDAO.selectIncruiterList();
	}
	
	//총괄기업 회원 세부
	@Override
	public MemberVO retrieveIncruiter(String memId) {
		return memberDAO.selectIncruiter(memId);
	}

	//총괄 승인
	@Override
	public int modifyAcceptInc(IncruiterVO incruiter) {
		int rowcnt = memberDAO.updateAcceptInc(incruiter);
		return rowcnt;
	}
	//회사 승인
	@Override
	public int modifyAcceptCmp(IncruiterVO incruiter) {
		int rowcnt = memberDAO.updateAcceptCmp(incruiter);
		return rowcnt;
	}
	
	//전문가 신청 목록
	@Override
	public List<MemberVO> retrieveExpertList() {
		return memberDAO.selectExpertList();
	}
	
	//전문가 신청 세부
	@Override
	public MemberVO retrieveExpert(String memId) {
		return memberDAO.selectExpert(memId);
	}
	
	//전문가 승인
	@Override
	public int modifyAcceptExpRole(MemberVO member) {
		int rowcnt = memberDAO.updateAcceptExpRole(member);
		return rowcnt;
	}
	@Override
	public int modifyAcceptExp(MemberVO member) {
		int rowcnt = memberDAO.updateAcceptExp(member);
		return rowcnt;
	}
	
	/*=======================================아이디,비번 찾기 부분======================================*/
	//일반회원 아이디 찾기
	@Override
	public List<SeekerVO> searchSeekerId(SeekerVO seeker) {
		return memberDAO.seekerFindId(seeker);
	}
	//일반회원의 비밀번호를 찾기위한 회원존재 확인
	@Override
	public int retrieveGetSeekerResult(SeekerVO seeker) {
		return memberDAO.getSeekerFindResult(seeker);
	}
	//기업회원 아이디 찾기
	@Override
	public MemberVO retrieveIncruiterId(IncruiterVO incruiter) {
		return memberDAO.incruiterFindId(incruiter);
	}
	//기업회원의 비밀번호를 찾기위한 회원존재 확인
	@Override
	public int retrieveGetIncruiterResult(IncruiterVO incruiter) {
		return memberDAO.getIncruiterFindResult(incruiter);
	}
	
	//비밀번호 수정
	@Override
	public int modifyPw(MemberVO member) {
		String encoded = encoder.encode(member.getMemPass());
		member.setMemPass(encoded); 
		return memberDAO.updatePw(member);
		
	}
	
	
	
}




















