package kr.or.ddit.expert.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class ExcartVO {
	private String reviewState;
	private String excartId;
	private String exprodId;
	private String memId;
	private Integer excartPrice;
	private String excartDate;
}



