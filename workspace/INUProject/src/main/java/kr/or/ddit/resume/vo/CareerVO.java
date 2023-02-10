package kr.or.ddit.resume.vo;

import javax.validation.constraints.NotBlank;

import kr.or.ddit.vo.CommonsAttachVO;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class CareerVO extends CommonsAttachVO {

	private String careerSn;
	private String memId;
	@NotBlank
	private String careerCategory;
	@NotBlank
	private String careerCompany;
	@NotBlank
	private String careerTask;
	private String careerClass;
	@NotBlank
	private String careerJoin;
	@NotBlank
	private String careerResign;
	private String careerSalary;
	private Integer careerAnnual;
	private String careerInsertDate;
	private String careerDeleteDate;
	
	public String getCareerJoin() {
		return careerJoin;
	}
	
	public void setCareerJoin(String careerJoin) {
		this.careerJoin = careerJoin.substring(0, 10);
	}
	
	public String getCareerResign() {
		return careerResign;
	}
	
	public void setCareerResign(String careerResign) {
		this.careerResign = careerResign.substring(0, 10);
	}

	@Override
	public String getTblId() {
		
		return this.careerSn;
	}
	
	
	
}
