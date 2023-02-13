package kr.or.ddit.selfpr.vo;

import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class SelfprVO {
	@NotNull
	private int prNo;
	private String prName;
	private String prContent;
	private String prDate;
	private String memId;
	private String prWantjob;
	private String prAnnual;
	private String memName;
	
}
