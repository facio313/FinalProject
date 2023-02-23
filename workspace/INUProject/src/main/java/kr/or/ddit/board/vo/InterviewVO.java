package kr.or.ddit.board.vo;

import java.io.Serializable;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

import javax.validation.constraints.NotBlank;

import org.springframework.web.multipart.MultipartFile;

import kr.or.ddit.validate.DeleteGroup;
import kr.or.ddit.validate.UpdateGroup;
import kr.or.ddit.vo.AttachVO;
import kr.or.ddit.vo.CommonsAttachVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Data
@NoArgsConstructor
@EqualsAndHashCode(of="cmpId")
@ToString(exclude= {"incumContent"})
public class InterviewVO extends CommonsAttachVO implements Serializable{
	private int rnum;			// 순번
	@NotBlank(groups = { UpdateGroup.class, DeleteGroup.class })
	private String incumNo;		// 인터뷰번호
	private String cmpId;		// 회사ID
	@NotBlank
	private String jobName;		// 직무명(정렬을 위해 사용)
	@NotBlank
	private String incumTitle;	// 제목
	private String incumContent;// 내용
	@NotBlank
	private String incumName;	// 작성자
	private String incumDate;	// 작성일
	private Integer incumHits;	// 조회수
	@NotBlank
	private String subTitle;	// 서브제목
	@NotBlank
	private String department;	// 부서명
	private String incumDelDate;// 삭제여부(삭제, 미삭제)

	@Override
	public String getTblId() {
		return incumNo;
	}
}
