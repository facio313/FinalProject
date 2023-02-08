package kr.or.ddit.lab.vo;

import javax.validation.constraints.NotNull;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Data
public class NewsVO {
	
	@NotNull
	private int newsNo;
	@NotNull
	private String newsField;
	@NotNull
	private String newsName;
	@NotNull
	private int newsHit;
	@NotNull
	private String newsDate;
	private String newsContent;
	private String newsImg;
	@NotNull
	private String memId;
	
	
}
