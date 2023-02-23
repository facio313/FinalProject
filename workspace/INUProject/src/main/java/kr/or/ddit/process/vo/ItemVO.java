package kr.or.ddit.process.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ItemVO {

	private String daNo;
	private String processCodeId;
	private String itemCodeId;
	private String itemCodeName;
	private String itemAsk;
	
}
