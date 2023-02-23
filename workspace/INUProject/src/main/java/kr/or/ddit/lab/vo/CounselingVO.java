package kr.or.ddit.lab.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@EqualsAndHashCode
@ToString
@NoArgsConstructor
public class CounselingVO {
	private String counNo;
	private String memId;
	private String memName;
	private String counTitle;
	private String counContent;
	private String counDate;
	private String counState;
	private String refCoun;
	private int isrefed;
	
	private CounselingVO reCoun;
}
