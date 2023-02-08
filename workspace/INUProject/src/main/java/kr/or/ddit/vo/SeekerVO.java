package kr.or.ddit.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class SeekerVO extends MemberVO{
	
	private String memNickname;
	private String memBirth;
	private String memGender;
	private String memZip;
	private String memAddr1;
	private String memAddr2;
	private String memEmail;
	private String memTel;
	private String memCertification;
	private int memCarttotal;
	private int seekerAttId;
	private int memScore;
	private String memDate;
	
	private String memProfile; // 임시(경수) 
	
	
}
