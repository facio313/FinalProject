package kr.or.ddit.announcement.vo;

import java.util.List;
import java.util.Map;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;

import kr.or.ddit.company.vo.CompanyVO;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode
@ToString
public class AnnoVO {
	private int rnum;
	private String annoNo;
	private String cmpId;
	private String memId;
	private String annoTitle;
	private String annoContent;
	private String annoStartdate;
	private String annoEnddate;
	private Integer annoHit;
	private String annoDate;
	private String annoStateCd; //code(common)
	private String annoWorkenv;
	private String annoProbation;
	private String annoSalary;
	private Integer attId;
	private String industry0; //code
	private String industry1; //code
	private String industryCode; //code
	private String eduCode; //code
	
	private String industryName; 
	private String eduName;
	
	private Map<String,Object> keyword;
	private List<AnnoDetailVO> detailList;
	private List<AnnoWalfareVO> walfareList;
	private List<String> walfareCodeList;
	private List<String> regionList;
	
	private CompanyVO company;
}
