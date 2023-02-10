package kr.or.ddit.member.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import kr.or.ddit.vo.IncruiterVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SeekerVO;
/**
 * 
 * @author 공통(수정한 부분 밑에 추가로 적어 주세용~)
 * @since 2023. 2. 6.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일              수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 6.    박형준             아이디, 비번 찾기 추가
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Mapper
public interface MemberDAO{
	public int selectTotalRecord(PagingVO<MemberVO> pagingVO);
	
	/**
	 * 회원 신규 등록
	 * @param member
	 * @return 등록된 레코드 수 (rowcnt) > 0 : 성공, <= 0 : 실패 
	 */
	public int insertMember(MemberVO member);
	public int insertMemberIN(MemberVO member);
	
	/**
	 * 일반회원 신규 등록
	 * @param member
	 * @return 등록된 레코드 수 (rowcnt) > 0 : 성공, <= 0 : 실패 
	 */
	public int insertSeeker(SeekerVO seeker);
	
	/**
	 * 기업회원 신규 등록
	 * @param member
	 * @return 등록된 레코드 수 (rowcnt) > 0 : 성공, <= 0 : 실패 
	 */
	public int insertIncruiter(IncruiterVO incruiter);
	/**
	 * 회원 목록 조회
	 * @param pagingVO TODO
	 * @return size == 0 인 경우, 조건에 맞는 레코드 없음. 
	 */
	public List<MemberVO> selectMemberList(PagingVO<MemberVO> pagingVO);
	/** 회원 상세 조회
	 * @param memId
	 * @return 조건에 맞는 레코드 없는 경우, null 반환
	 */
	public MemberVO selectMember(@Param("memId") String memId);
	
	/**
	 * 회원 정보 수정
	 * @param member
	 * @return 수정된 레코드 수(rowcnt) > 0 : 성공, <= 0 : 실패  
	 */
	public int updateMember(MemberVO member);
	/**
	 * 회원 정보 삭제(?)
	 * @param memId
	 * @return 삭제된 레코드 수(rowcnt) > 0 : 성공, <= 0 : 실패  
	 */
	public int deleteMember(String memId);
	
	
	/*=======================================아이디,비번 찾기 부분======================================*/
	/**
	 * 일반회원 아이디 찾기
	 * @param seekerVO
	 * @return
	 */
	public List<SeekerVO> seekerFindId(SeekerVO seeker);
	
	/**
	 * 일반회원의 비밀번호를 찾기위한 회원존재 확인
	 * @param memberVO
	 * @return
	 */
	public int getSeekerFindResult(SeekerVO seeker);
	
	/**
	 * 기업회원 아이디 찾기
	 * @param incruiter
	 * @return
	 */
	public MemberVO incruiterFindId(IncruiterVO incruiter);
	
	/**
	 * 기업회원의 비밀번호를 찾기위한 회원존재 확인
	 * @param incruiter
	 * @return
	 */
	public int getIncruiterFindResult(IncruiterVO incruiter);
	
	/**
	 * 비밀번호 수정
	 * @param seekerVO
	 * @return
	 */
	public int updatePw(MemberVO member);
	
}






