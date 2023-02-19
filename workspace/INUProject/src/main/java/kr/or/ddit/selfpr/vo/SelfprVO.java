package kr.or.ddit.selfpr.vo;

import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class SelfprVO {
	
	@NotNull
	private int prNo;
	private String prName;
	private String prContent;
	private String prDate;
	private String memId;
	private String prWantjob;
	private String memName;
	private String prWantmn;	// 연봉
	
	// 검색
	private String industryCode;// 직무검색 대분류
	private String industry1;   // 직무검색 중분류
	private String metro;		// 지역검색 대분류
	private String regionCode;	// 지역검색 소분류
	private String prAnnual;	// 경력
	private String prWanttype;  // 직급  
	private String prEdu;		// 학력
	
	// detail 개인정보
	private String memGender;
	private String memEmail;
	private String memTel;
	private String memAddr1;
	
	// detail 학력 
	private String eduName;
	private String eduDepart;
	private String eduMajor;
	private String eduStatus;
	private String eduScore;
	private String eduEntered;
	private String eduGraduated;
	
	
	
}
