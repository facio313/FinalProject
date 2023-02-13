package kr.or.ddit.announcement.vo;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode
@ToString
public class AnnoWalfareVO {
	private String annowalNo;
	private String walfare0;
	private String walfareCode;
	private String annoId;
	
	private String walfareName;
	private String refCode;
	private String refName;
}
