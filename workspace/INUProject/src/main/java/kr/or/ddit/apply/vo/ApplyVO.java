package kr.or.ddit.apply.vo;

import java.util.List;

import kr.or.ddit.resume.vo.ResumeVO;
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
	private String processCodeId;
	private String applyResult;
	private Integer applyTotal;
	private String applyResultDate;
	private String annoNo;
	
	private ResumeVO resume;
	
	private Object selected;
	
	private ScoreResumeVO scoreResume;
	private ScoreIntroVO scoreIntro;
	private ScoreTestVO scoreTest;
	private ScoreCompVO scoreComp;
	private ScoreDiscussVO scoreDiscuss;
	private ScorePracticeVO scorePractice;
	private ScoreInternVO scoreIntern;
	private ScoreIndepthVO scoreIndepth;
	
}