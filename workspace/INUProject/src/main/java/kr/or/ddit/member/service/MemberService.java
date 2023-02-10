package kr.or.ddit.member.service;

import java.util.List;

import kr.or.ddit.enumpkg.ServiceResult;
import kr.or.ddit.exception.UserNotFoundException;
import kr.or.ddit.vo.IncruiterVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SeekerVO;

/**
 * 
 * @author 공통
 * @since 2023. 2. 6.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일              수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 6.    박형준            아이디 찾기 추가
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
public interface MemberService {

	/**
	 * 회원 가입
	 * @param seeker
	 * @return 아이디 중복으로 인한 실패(PKDUPLICATED), 가입 성공(OK), 가입 실패(FAIL)
	 */
	public ServiceResult createSeeker(SeekerVO seeker);
	/**
	 * 회원 가입
	 * @param incruiter
	 * @return 아이디 중복으로 인한 실패(PKDUPLICATED), 가입 성공(OK), 가입 실패(FAIL)
	 */
	public ServiceResult createIcruiter(IncruiterVO incruiter);
	
	public List<MemberVO> retrieveMemberList(PagingVO<MemberVO> pagingVO);
	/**
	 * 회원 정보 상세 조회
	 * @param memId
	 * @return 존재하지 않는 경우, {@link UserNotFoundException} 발생.
	 */
	public MemberVO retrieveMember(String memId);
	/**
	 * 회원 수정
	 * @param member
	 * @return 존재 부(NOTEXIST), 비번 인증 실패(INVALIDPASSWORD), 성공(OK), 실패(FAIL)
	 */
	public ServiceResult modifyMember(MemberVO member);
	/**
	 * 회원 탈퇴
	 * @param memId
	 * @return 존재 부(NOTEXIST), 비번 인증 실패(INVALIDPASSWORD), 성공(OK), 실패(FAIL)
	 */
	public ServiceResult removeMember(MemberVO member);
	
	
	
	/*=======================================아이디,비번 찾기 부분======================================*/
	/**
	 * 일반회원 아이디 찾기
	 * @param seeker
	 * @return
	 */
	public List<SeekerVO> searchSeekerId(SeekerVO seeker);
	
	/**
	 * 일반회원의 비밀번호를 찾기위한 회원존재 확인
	 * @param seeker
	 * @return
	 */
	public int retrieveGetSeekerResult(SeekerVO seeker);
	
	/**
	 * 기업회원 아이디 찾기
	 * @param incruiter
	 * @return
	 */
	public MemberVO retrieveIncruiterId(IncruiterVO incruiter);
	
	/**
	 * 기업회원의 비밀번호를 찾기위한 회원존재 확인
	 * @param incruiter
	 * @return
	 */
	public int retrieveGetIncruiterResult(IncruiterVO incruiter);
	
	/**
	 * 비밀번호 수정
	 * @param seeker
	 * @return
	 */
	public int modifyPw(MemberVO member);
}


















