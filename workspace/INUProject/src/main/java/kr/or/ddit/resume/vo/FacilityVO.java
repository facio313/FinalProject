package kr.or.ddit.resume.vo;

import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
public class FacilityVO {

	private String facilitySn;
	private String memId;
	private String facilityName;
	private String facilityCategory;
	private String facilityLevel;
	private String facilityGetdate;
	private Integer facilityPeriod;
	private String facilityInsertDate;
	private String facilityDeleteDate;
	private Integer attId;
}
