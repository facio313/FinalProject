package kr.or.ddit.process.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ProcessVO {

	private String processLimit;
	private String daNo;
	private String processCodeId;
	private Integer processSn;
	private String processStartDate;
	private String processEndDate;
	private String processWay;
	private Integer processScore;
	private String tblId;
	private String processDeleteDate;
	private String processInsertDate;
}
