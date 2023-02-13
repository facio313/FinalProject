package kr.or.ddit.expert.vo;

import kr.or.ddit.vo.CommonsAttachVO;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ExpertVO extends CommonsAttachVO{
	
	private String memId;
	private String expertApproval;
	private String expertApprovalDate;
	private String expertIntroduction;
	private String expertJoinpath;
	private String expertField;
	private String expertTag;
	private String expertZip;
	private String expertAddr;
	private String expertAddr2;
	private String expertTel;
	private String expertEmail;
	private String expertBank;
	private String expertAccount;
	private String expertHolder;
	private String exfieldId;
	private String exjobId;
	//자격증(certificate)+ memId
	@Override
	public String getTblId() {
		// TODO Auto-generated method stub
		return "C"+memId;
	}
}

