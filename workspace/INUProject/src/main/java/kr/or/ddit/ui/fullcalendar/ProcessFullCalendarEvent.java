package kr.or.ddit.ui.fullcalendar;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Random;

import com.fasterxml.jackson.annotation.JsonInclude;

import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.process.vo.ProcessVO;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class ProcessFullCalendarEvent extends FullCalendarEventAdapter<ProcessVO>{

	private SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm");
	
	public ProcessFullCalendarEvent(ProcessVO source) {
		super(source);
	}

	@Override
	public String getId() {
		return getSource().getProcessCodeId();
	}

	@Override
	public boolean isAllDay() {
		return true;
	}
	
	@Override
	public long getStart() {
		long start = 0;
		
		try {
			 start = formatter.parse(getSource().getProcessStartDate().substring(0, 16)).getTime();
		} catch (ParseException e) {
			new RuntimeException(e);
		}
		return start;
	}

	@Override
	public long getEnd() {
		long end = 0;
		try {
			end = formatter.parse(getSource().getProcessEndDate().substring(0, 16)).getTime();
		} catch (ParseException e) {
			new RuntimeException(e);
		}
		return end;
	}

	@Override
	public String getTitle() {
		return getSource().getProcessCodeName();
	}
	
	private Random random = new Random(System.currentTimeMillis());
	private static int bound = (int) (1*Math.pow(16, 6)); 
	
	@Override
	public String getBackgroundColor() {
		return "#"+Integer.toString(random.nextInt(bound), 16);
	}
	
	@Override
	public String getUrl() {
		StringBuilder str = new StringBuilder();
		str.append("INUProcjest/process/").append(getSource().getDaNo()).append("/").append(getId());
		return str.toString();
	}

}
