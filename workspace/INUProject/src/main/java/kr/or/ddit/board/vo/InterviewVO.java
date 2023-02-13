package kr.or.ddit.board.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class InterviewVO {
	private String incumNo;		// 글번호
	private String cmpId;		// 회사ID
	private String jobName;		// 직무명(정렬을 위해 사용)
	private String incumTitle;	// 제목
	private String incumContent;// 내용
	private String incumName;	// 작성자
	private String incumDate;	// 작성일
	private Integer incumHits;	// 조회수
	private String subTitle;	// 서브제목
	private String department;	// 부서명
	private String incumDelDate;// 삭제여부(삭제, 미삭제)
}
