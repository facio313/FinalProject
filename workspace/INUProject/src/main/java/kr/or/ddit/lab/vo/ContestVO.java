package kr.or.ddit.lab.vo;

import java.util.Date;

import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
public class ContestVO {

	@NotNull
	private int contNo;
	private String contName;
	private String contCo;
	private Date contStart;
	private Date contDead;
	private String contField;
	private String contContent;
	private String memId;
}
