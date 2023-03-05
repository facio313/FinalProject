package kr.or.ddit.ui.fullcalendar;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Random;

import com.fasterxml.jackson.annotation.JsonInclude;

import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;

@JsonInclude(JsonInclude.Include.NON_NULL)
public class DetailFullCalendarEvent extends FullCalendarEventAdapter<AnnoDetailVO>{

	private SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm");
	
	public DetailFullCalendarEvent(AnnoDetailVO source) {
		super(source);
	}

	@Override
	public String getId() {
		return getSource().getDaNo();
	}

	@Override
	public boolean isAllDay() {
		return true;
	}
	
	@Override
	public long getStart() {
		long start = 0;
		
		try {
			 start = formatter.parse(getSource().getProcessList().get(0).getProcessStartDate().substring(0, 16)).getTime();
		} catch (ParseException e) {
			new RuntimeException(e);
		}
		return start;
	}

	@Override
	public long getEnd() {
		int last = getSource().getProcessList().size() - 1;
		long end = 0;
		try {
			end = formatter.parse(getSource().getProcessList().get(last).getProcessEndDate().substring(0, 16)).getTime();
		} catch (ParseException e) {
			new RuntimeException(e);
		}
		return end;
	}

	@Override
	public String getTitle() {
		return getSource().getDaFd();
	}
	
	private Random random = new Random(System.currentTimeMillis());
	private static int bound = (int) (1*Math.pow(16, 6)); 
	
	@Override
	public String getBackgroundColor() {
		return "#"+Integer.toString(random.nextInt(bound), 16);
	}
	
	@Override
	public String getUrl() {
		return "INUProject/process/"+ getSource().getAnnoNo() + "/"+ getId();
	}

}
