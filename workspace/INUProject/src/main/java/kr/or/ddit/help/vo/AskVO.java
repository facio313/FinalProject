package kr.or.ddit.help.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class AskVO {
	private String askNo;
	private String memId;
	private String askCate;
	private String askTitle;
	private String askContent;
	private String attSn;
	private String askDate;
	private String refContent;
	private String consent;
	private String askType;
	private String askStatus;

}
