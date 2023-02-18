package kr.or.ddit.apply.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ApplyVO {
	private String applySn;
	private String daNo;
	private String memId;
	private String resumeSn;
	private String myintroSn;
	private String applyDate;
	private String applyUpdateDate;
	private String applyDeleteDate;
	private Integer applyTotal;
	private String applyResult;
	private String applyResultDate;
	private String annoNo;
}
