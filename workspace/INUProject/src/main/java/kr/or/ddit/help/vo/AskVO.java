package kr.or.ddit.help.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AskVO {
	private String askNo;		// 글번호
	private String memId;		// 회원ID
	private String askCate;		// 회원구분(개인,기업)
	private String askTitle;	// 제목
	private String askContent;	// 내용
	private String askDate;		// 작성일
	private String refContent;	// 답글내용
	private String consent;		// 동의여부
	private String askType;		// 문의종류
	private String askStatus = "확인중";	// 답변상태
	private String askDelDate; // 삭제여부

}
