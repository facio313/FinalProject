package kr.or.ddit.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class IncruiterVO extends MemberVO{
	
	private String cmpId;
	private String memEmail;
	private String memTel;
	private String memApproval;
	private String memDate;
	private String memDelete;
}
