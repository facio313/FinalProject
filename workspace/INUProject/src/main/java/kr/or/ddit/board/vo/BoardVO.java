package kr.or.ddit.board.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@EqualsAndHashCode(of="memId")
public class BoardVO {
	private String boardNo; 	// 글번호
	private String memId; 		// 회원ID
	private String boardSub;	// 구분(신입, 취준 등)
	private String jobName;		// 직무명(정렬을 위해 사용)
	private String boardTitle;	// 제목
	private String boardContent;// 내용
	private String boardDate;	// 등록일
	private int boardHits;		// 조회수
	private int totalLike;		// 전체공감수
	private int boardLike;		// 좋아요
	private int boardFun;		// 재밌어요
	private int boardHelp;		// 도움돼요
	private int boardCheer;		// 응원해요
	private String boardStatus;	// 상태여부(삭제,미삭제)
}
