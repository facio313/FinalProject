package kr.or.ddit.board.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class InterviewVO {
	private String department;
	private String incumNo;
	private String cmpId;
	private String jobName;
	private String incumTitle;
	private String incumContent;
	private String incumName;
	private String incumDate;
	private Integer incumHit;
}
