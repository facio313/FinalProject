package kr.or.ddit.announcement.vo;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

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
	private Integer annoSalary2; //금액
	private Integer attId;
	private String industry0; //code
	private String industry1; //code
	private String industryCode; //code
	private String eduCode; //code
	
	private String industryName; 
	private String eduName;
	
	private Map<String,Object> keyword;
	private List<AnnoDetailVO> detailList;
	private List<AnnoWelfareVO> welfareList;
	private List<String> welfareCodeList;
	
	private CompanyVO company;
	
	private int acheck; //관심공고여부
	private String regionName; //대표지역명
	
	private double percent; // 오늘 날짜로 몇 퍼인지
	private Date start; // fullcalendar
	private Date end; // fullcalendar
	
	public String getWelfareListToJson() {
		String welfareListToJson = null;
		try {
			 welfareListToJson = new ObjectMapper().writeValueAsString(welfareList);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return welfareListToJson;
	}


}
