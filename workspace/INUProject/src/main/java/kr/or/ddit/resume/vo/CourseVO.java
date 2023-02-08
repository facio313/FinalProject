package kr.or.ddit.resume.vo;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.vo.CommonsAttachVO;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CourseVO extends CommonsAttachVO {

	private String courseSn;
	private String memId;
	@NotBlank
	private String courseName;
	@NotBlank
	private String courseCategory;
	@NotBlank
	private String courseInstitution;
	@NotBlank
	private String coursePeriod;
	private String courseInsertDate;
	private String courseDeleteDate;

	@Override
	public String getTblId() {
		
		return this.courseSn;
	}
}
