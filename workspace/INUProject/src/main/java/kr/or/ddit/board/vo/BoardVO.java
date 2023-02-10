package kr.or.ddit.board.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class BoardVO {
	private String boardNo;
	private String memId;
	private Integer attSn;
	private String boardSub;
	private String jobName;
	private String boardTitle;
	private String boardContent;
	private String boardDate;
	private Integer boardHit;
	private Integer totalLike;
	private Integer boardLike;
	private Integer boardFun;
	private Integer boardHelp;
	private Integer boardCheer;
}
