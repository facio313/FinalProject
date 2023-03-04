package kr.or.ddit.lab.vo;

import java.sql.Date;

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
	private Date newsDate;
	private String newsContent;
	@NotNull
	private String memId;
	
	private int newsFieldSum;
	
	}
