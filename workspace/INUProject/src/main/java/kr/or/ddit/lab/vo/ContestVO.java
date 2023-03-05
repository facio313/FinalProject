package kr.or.ddit.lab.vo;

import java.util.Date;

import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatTypes;

import lombok.Data;

@Data
public class ContestVO {

	@NotNull
	private int contNo;
	private String contName;	//공모전명
	private String contCo;		//주관 기관
	
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date contStart;		//시작일
	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "yyyy-MM-dd")
	private Date contDead;		//종료일
	
	private String contField;	//공모분야
	private String contContent;	//내용
	private String memId;
}
