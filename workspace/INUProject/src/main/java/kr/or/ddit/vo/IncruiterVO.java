package kr.or.ddit.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class IncruiterVO extends MemberVO{
	
	private String cmpId;
	private String incruiterEmail;
	private String memTel;
	private String memApproval;
	private String memDate;
	private String memDelete;
	private String memEmail;
	
	private String cmpBsnsNo; //사업자 등록번호 (기업회원 아이디 찾을때 필요 - 형준)
}
