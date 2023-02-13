package kr.or.ddit.expert.vo;

import java.util.List;

import lombok.Data;

@Data
public class ExprodVO {
	private String exprodId;
	private String exprodStart;
	private String exprodEnd;
	private String exprodTarget;
	private String exprodName;
	private Integer exprodPrice;
	private String exprodWay;
	private String exprodTime;
	private String exprodDetail;
	private String memId;
	private String exprodAproval;
	private String exlprodId;
	private List<ExcartVO> excartList;
}
