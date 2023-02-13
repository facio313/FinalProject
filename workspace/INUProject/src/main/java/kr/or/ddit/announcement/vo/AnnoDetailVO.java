package kr.or.ddit.announcement.vo;

import java.util.List;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.ToString;

@Data
@EqualsAndHashCode
@ToString
public class AnnoDetailVO {
	private String daNo;
	private String annoNo;
	private String daFd; //모집분야
	private String daCount; //모집인원
	private String daTask; //담당업무
	private String daDepartment;
	private String daCondition;
	private String daPrefer;
	private String daWorkday;
	private String daWorktime;
	private String daCarYeer;
	private String regionCode; //code
	private String empltypeCode; //code
	private String job0; //code
	private String job1; //code
	private String jobCode; //code
	
	private String regionName;
	private String empltypeName; 
	private String jobName; 
	
	private List<String> careerName;
	private List<String> positionCode;
	private List<String> positionName;
}
