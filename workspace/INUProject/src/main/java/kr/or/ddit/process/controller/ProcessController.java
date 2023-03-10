package kr.or.ddit.process.controller;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.inject.Inject;

import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.format.annotation.DateTimeFormat.ISO;
import org.springframework.http.MediaType;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;

import kr.or.ddit.announcement.service.AnnoService;
import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.commons.AttachService;
import kr.or.ddit.process.service.ProcessService;
import kr.or.ddit.process.vo.ItemVO;
import kr.or.ddit.process.vo.ProcessVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.system.service.AlarmService;
import kr.or.ddit.ui.fullcalendar.AnnoFullCalendarEvent;
import kr.or.ddit.ui.fullcalendar.DetailFullCalendarEvent;
import kr.or.ddit.ui.fullcalendar.FullCalendarEvent;
import kr.or.ddit.ui.fullcalendar.ProcessFullCalendarEvent;
import kr.or.ddit.vo.AlarmVO;
import kr.or.ddit.vo.MemberVO;
import kr.or.ddit.vo.MemberVOWrapper;
import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author ?????????
 * @since 2023. 2. 4.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[????????????(Modification Information)]]
 * ?????????         ?????????         ????????????
 * --------     --------    ----------------------
 * 2023. 2. 4.      ?????????       ????????????
 * 2023. 2. 17.     ?????????       ???????????? ??????, ??????, ??????
 * 2023. 2. 20.     ?????????       ???????????? ??????
 * 2023. 2. 23.     ?????????       ?????? ??????
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Slf4j
@Controller
@RequestMapping("/process")
public class ProcessController {

	// ???????????? ?????? ??? or ???????????? ?????? ??? ???????????? ?????? ??????
	// ??????????????? ????????? ?????? ????????? ???????????? ?????? ??????????????? ????????? ?????? ?????? ????????? ????????????.(checkBox??)
	// ???????????? ??? ?????????????????? ?????????????????? ?????? ??? ??????. ??? ????????? ?????? ????????? ??? ???????????? ??????.
	// ??????????????? ?????? ????????? ?????? ??? ??????. ex) ??????????????? ??????????????? -> ????????? ????????? ????????? ????????? ???????????????????
	
	@Inject
	private ProcessService service;
	
	@Inject
	private AnnoService annoService;
	
	@Inject
	private AttachService attachService;
	
	@Inject
	private AlarmService alarmService;
	
	@ModelAttribute
	public ProcessVO process() {
		return new ProcessVO();
	}
	
	@ModelAttribute
	public AnnoVO anno() {
		return new AnnoVO();
	}
	
	@ModelAttribute
	public AnnoDetailVO detail() {
		return new AnnoDetailVO();
	}
	
	@ModelAttribute
	public ItemVO item() {
		return new ItemVO();
	}
	
	// ???????????? ??????
	@GetMapping
	public String main(
		Model model
		, @AuthMember MemberVO authMember
	) throws ParseException {
		String cmpId = authMember.getIncruiterVO().getCmpId();
		String memId = authMember.getMemId();
//		List<ProcessVO> processList = service.retrieveProcessList(cmpId);
//		List<AnnoVO> list = annoService.retrieveMyAnnoList(memId);
//		
//		for (AnnoVO anno : list) {
//			anno.setDetailList((annoService.retrieveAnno(anno.getAnnoNo()).getDetailList()));
//			for (AnnoDetailVO da : anno.getDetailList()) {
//				if (da.getDaNo().equals(processList.get(0).getDaNo())) {
//					da.setProcessList(processList);
//				}
//			}
//		}
//		model.addAttribute("processList", processList);
		
		List<AnnoVO> list = annoService.retrieveMyAnnoList(memId);
		
		String now = LocalDate.now().toString().replace("-", "");
		DateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date n = format.parse(now);
		double nDays = n.getTime()/(1000*60*60*24);
		for (AnnoVO vo : list) {
			Date sd = format.parse(vo.getAnnoStartdate().replace("-", ""));
			double sDays = sd.getTime()/(1000*60*60*24);
			Date ed = format.parse(vo.getAnnoEnddate().replace("-", ""));
			double eDays = ed.getTime()/(1000*60*60*24);
			double percent = 0;
			if (sDays <= nDays && nDays <= eDays) {
				percent = (double)(100/(eDays-sDays))*(nDays-sDays);
			} else if (eDays < nDays) {
				percent = 100;
			} 
			vo.setPercent(percent);
		}
		
		model.addAttribute("list", list);
		return "process/processMain";
	}
	
	// ?????? ??????
	@GetMapping("/list")
	public String processAnnoView(
		Model model
		, @AuthMember MemberVO authMember
	) throws ParseException { // ???????????? ??????
		String memId = authMember.getMemId();
		List<AnnoVO> list = annoService.retrieveMyAnnoList(memId);
		
		// ???????????? ?????????
		String now = LocalDate.now().toString().replace("-", "");
		DateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date n = format.parse(now);
		double nDays = n.getTime()/(1000*60*60*24);
		for (AnnoVO vo : list) {
			Date sd = format.parse(vo.getAnnoStartdate().replace("-", ""));
			double sDays = sd.getTime()/(1000*60*60*24);
			Date ed = format.parse(vo.getAnnoEnddate().replace("-", ""));
			double eDays = ed.getTime()/(1000*60*60*24);
			double percent = 0;
			if (sDays <= nDays && nDays <= eDays) {
				percent = (double)(100/(eDays-sDays))*(nDays-sDays);
			} else if (eDays < nDays) {
				percent = 100;
			} 
			vo.setPercent(percent);
		}
		
		model.addAttribute("list", list);
		return "process/processAnnoList";
	}
	
	// ??? ?????? - ?????? ?????? ?????? - ?????? ????????????
	@GetMapping("/{annoNo}")
	public String processDaView(
		Model model
		, @PathVariable String annoNo
		, @AuthMember MemberVO authMember
	) throws ParseException { // ???????????? ??????
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(annoNo);
		
		String now = LocalDate.now().toString().replace("-", "");
		// ???????????? ?????????
		// ???????????????
		DateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date n = format.parse(now);
		double nDays = n.getTime()/(1000*60*60*24);
		List<AnnoDetailVO> detailList = anno.getDetailList();
		for (AnnoDetailVO vo : detailList) {
			List<ProcessVO> processList = vo.getProcessList();
			double percent = 0;
			if (processList.size() > 1){
				int index = 0;
				Date sd = null;
				double sDays = 0;
				Date ed = null;
				double eDays = 0;
				for (ProcessVO pvo : processList) {
					if (index == 0) {
						sd = format.parse(pvo.getProcessStartDate().replace("-", ""));
						sDays = sd.getTime()/(1000*60*60*24);
					} else if (index == processList.size() - 1) {
						ed = format.parse(pvo.getProcessEndDate().replace("-", ""));
						eDays = ed.getTime()/(1000*60*60*24);
					}
					index++;
				}
				if (sDays <= nDays && nDays <= eDays) {
					percent = (double)(100/(eDays-sDays))*(nDays-sDays);
				} else if (eDays < nDays) {
					percent = 100;	
				}
					
			}
			vo.setPercent(percent);
		}
		
		model.addAttribute("now", now);
		model.addAttribute("anno", anno);
		return "process/processDaView";
	}
	
	// ??? ?????? ?????? - ?????? ???????????? - ?????? ?????????
	@GetMapping("/{annoNo}/{daNo}")
	public String view(
		Model model
		, @PathVariable String annoNo
		, @PathVariable String daNo
		, @ModelAttribute("process") ProcessVO process
	) throws ParseException { // ???????????? ??????, ???????????? ?????????
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(annoNo);
		
		List<AnnoDetailVO> detailList = anno.getDetailList();
		if (detailList.size() > 1 ) {
			List<AnnoDetailVO> removed = new ArrayList<>();
			for (AnnoDetailVO vo : detailList) {
				if (!vo.getDaNo().equals(daNo)) {
					removed.add(vo);
				}
			}
			detailList.removeAll(removed);
		}
		
		for(ProcessVO vo : detailList.get(0).getProcessList()) {
			String tblId = vo.getDaNo() + vo.getProcessCodeId();
			vo.setAttatchList(attachService.retireveAttatchList(tblId));
		}
		
		String now = LocalDate.now().toString().replace("-", "");
		// ???????????? ?????????
		// ???????????????
		DateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date n = format.parse(now);
		double nDays = n.getTime()/(1000*60*60*24);
		
		for (AnnoDetailVO vo : detailList) {
			List<ProcessVO> processList = vo.getProcessList();
			double percent = 0;
			if (processList.size() > 1){
				int index = 0;
				Date sd = null;
				double sDays = 0;
				Date ed = null;
				double eDays = 0;
				for (ProcessVO pvo : processList) {
					if (index == 0) {
						sd = format.parse(pvo.getProcessStartDate().replace("-", ""));
						sDays = sd.getTime()/(1000*60*60*24);
					} else if (index == processList.size() - 1) {
						ed = format.parse(pvo.getProcessEndDate().replace("-", ""));
						eDays = ed.getTime()/(1000*60*60*24);
					}
					index++;
				}
				if (sDays <= nDays && nDays <= eDays) {
					percent = (double)(100/(eDays-sDays))*(nDays-sDays);
				} else if (eDays < nDays) {
					percent = 100;	
				}
					
			}
			vo.setPercent(percent);
		}
		
		// ???????????? ?????????
		// ???????????? ??????
		List<ItemVO> itemList = service.retrieveItemList(daNo);
		
		for (AnnoDetailVO vo : detailList) {
			List<ProcessVO> processList = vo.getProcessList();
			for (ProcessVO pvo : processList) {
				List<ItemVO> iList = pvo.getItemList();
					iList.remove(0);
					for (ItemVO itemVO : itemList) {
						if(pvo.getProcessCodeId().equals(itemVO.getProcessCodeId())) {
							iList.add(itemVO);
						}
					}
				
			}
		}
		
		
		model.addAttribute("now", now);
		model.addAttribute("anno", anno);
		return "process/processView";
	}
	
	// ??? ?????? ?????? - ?????? ???????????? - ?????? ?????????(ajax)
	// value ???????????? ???????...
	// ????????? ?????????
	@GetMapping(value="/{annoNo}/{daNo}", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String ajaxView(
			Model model
			, @PathVariable String annoNo
			, @PathVariable String daNo
			, @ModelAttribute("process") ProcessVO process
			) throws ParseException { // ???????????? ??????
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(annoNo);
		
		List<AnnoDetailVO> detailList = anno.getDetailList();
		if (detailList.size() > 1 ) {
			List<AnnoDetailVO> removed = new ArrayList<>();
			for (AnnoDetailVO vo : detailList) {
				if (!vo.getDaNo().equals(daNo)) {
					removed.add(vo);
				}
			}
			detailList.removeAll(removed);
		}
		
		String now = LocalDate.now().toString().replace("-", "");
		// ???????????? ?????????
		// ???????????????
		DateFormat format = new SimpleDateFormat("yyyyMMdd");
		Date n = format.parse(now);
		double nDays = n.getTime()/(1000*60*60*24);
		
		for (AnnoDetailVO vo : detailList) {
			List<ProcessVO> processList = vo.getProcessList();
			double percent = 0;
			if (processList.size() > 1){
				int index = 0;
				Date sd = null;
				double sDays = 0;
				Date ed = null;
				double eDays = 0;
				for (ProcessVO pvo : processList) {
					if (index == 0) {
						sd = format.parse(pvo.getProcessStartDate().replace("-", ""));
						sDays = sd.getTime()/(1000*60*60*24);
					} else if (index == processList.size() - 1) {
						ed = format.parse(pvo.getProcessEndDate().replace("-", ""));
						eDays = ed.getTime()/(1000*60*60*24);
					}
					index++;
				}
				if (sDays <= nDays && nDays <= eDays) {
					percent = (double)(100/(eDays-sDays))*(nDays-sDays);
				} else if (eDays < nDays) {
					percent = 100;	
				}
				
			}
			vo.setPercent(percent);
		}
		
		// ???????????? ?????????
		// ???????????? ??????
		List<ItemVO> itemList = service.retrieveItemList(daNo);
		
		for (AnnoDetailVO vo : detailList) {
			List<ProcessVO> processList = vo.getProcessList();
			for (ProcessVO pvo : processList) {
				List<ItemVO> iList = pvo.getItemList();
				iList.remove(0);
				for (ItemVO itemVO : itemList) {
					if(pvo.getProcessCodeId().equals(itemVO.getProcessCodeId())) {
						iList.add(itemVO);
					}
				}
				
			}
		}
		
		model.addAttribute("now", now);
		model.addAttribute("anno", anno);
		return "jsonView";
	}
	
	@ResponseBody
	@GetMapping(value="/notAdded", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<ItemVO> ajaxNotAdded(@RequestParam("daNo") String daNo) {
		List<ItemVO> notAddedList = service.retireveItemListNotAdded(daNo);
		return notAddedList;
	}
	
	// ?????????
	@GetMapping("/form")
	public String form(
		Model model
		, @ModelAttribute("process") ProcessVO process
		, @RequestParam("annoNo") String annoNo
		, @RequestParam("daNo") String daNo
	) {
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(annoNo);
		
		List<AnnoDetailVO> detailList = anno.getDetailList();
		if (detailList.size() > 1 ) {
			List<AnnoDetailVO> removed = new ArrayList<>();
			for (AnnoDetailVO vo : detailList) {
				if (!vo.getDaNo().equals(daNo)) {
					removed.add(vo);
				}
			}
			detailList.removeAll(removed);
		}
		
		model.addAttribute("anno",anno);
		model.addAttribute("daNo", daNo);
		return "process/processForm";
	}
	
	// ???????????? ??????
	@PostMapping
	public String insert(
		Model model
		, @ModelAttribute("process") ProcessVO process
		, @RequestParam String annoNo
		, @RequestParam String daNo
	) {
		//jsp?????? ?????????
		List<ProcessVO> list = process.getProcessList();
		
		//??????
		List<ProcessVO> resultList = new ArrayList<ProcessVO>();
		
		for (ProcessVO vo : list) {
			if (!vo.getProcessStartDate().equals("")) {
				resultList.add(vo);
			}
		}
		
		process.setProcessList(resultList);
		
		service.createProcess(process);
		return "redirect:/process/" + annoNo + "/" + daNo; // /{annoNo}/{daNo}
	}
	
	// ???????????? ?????????
	@GetMapping("/edit")
	public String edit(
		Model model
		, @ModelAttribute("process") ProcessVO process
		, @RequestParam("daNo") String daNo
		, @RequestParam("annoNo") String annoNo
	) {
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(annoNo);
		
		List<AnnoDetailVO> detailList = anno.getDetailList();
		if (detailList.size() > 1 ) {
			List<AnnoDetailVO> removed = new ArrayList<>();
			for (AnnoDetailVO vo : detailList) {
				if (!vo.getDaNo().equals(daNo)) {
					removed.add(vo);
				}
			}
			detailList.removeAll(removed);
		}
		
		model.addAttribute("anno",anno);
		model.addAttribute("daNo", daNo);
		
		model.addAttribute("process", process);
		return "process/processEdit";
	}
	
	// ???????????? ??????
//	@PutMapping("{daNo}")
	@PostMapping("/edit")
	public String update(
		Model model
		, @RequestParam String daNo
		, @RequestParam String annoNo
		, @ModelAttribute("process") ProcessVO process
	) {
		service.modifyProcess(process);
		return "redirect:/process/" + annoNo + "/" + daNo;
	}
	
	// ???????????? ??????
	@DeleteMapping("{daNo}")
	public String delete(
		Model model
		, @PathVariable String daNo
	) {
		service.removeProcess(daNo);
		return "redirect:/process";
	}

	// ???????????? - ?????? : ?????? ??????
	@PostMapping(value="/item", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String ajaxInsertOriginItem(
		Model model
		, @ModelAttribute("process") ProcessVO process
		, @AuthMember MemberVO member
	) {
		// ???????????? ???????????? ?????? cmpId
		String cmpId = member.getIncruiterVO().getCmpId();
		
		service.createItemList(process.getItemList(), cmpId);
		return "jsonView";
	}
	
	// ???????????? - ?????? ??????
	@ResponseBody
	@DeleteMapping(value="/item", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public void ajaxDeleteItem(
		@RequestBody ItemVO item
	) {
		service.removeItem(item);
	}
	
	// ???????????? - ?????? ??????
	// https://blog.naver.com/PostView.naver?blogId=admass&logNo=222116280957&parentCategoryNo=&categoryNo=4&viewDate=&isShowPopularPosts=false&from=postView
	@ResponseBody
	@PutMapping(value="/item", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public void ajaxUpdateItem(
		@RequestBody ObjectNode saveObj
		, @AuthMember MemberVO member // ?????? ???????
	) throws JsonProcessingException, IllegalArgumentException { // ????????? ???????????? ?????? ???
		 ObjectMapper mapper = new ObjectMapper();
		 ItemVO item = mapper.treeToValue(saveObj.get("item"), ItemVO.class);
		 String originCodeId = mapper.treeToValue(saveObj.get("originCodeId"), String.class);
		 
		 // ????????? ???????????? ?????? cmpId
		 String cmpId = member.getIncruiterVO().getCmpId();
		 
		 service.modifyItem(item, originCodeId, cmpId);
	}
	
	@ResponseBody
	@GetMapping(value="/itemFormList", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<ItemVO> ajaxSelectAllItem(
		@AuthMember MemberVO member
		, @RequestParam String daNo
	) {
		String cmpId = member.getIncruiterVO().getCmpId();
		List<ItemVO> formList = service.retrieveItemFormList(cmpId, daNo);
		return formList;
	}
	
	@ResponseBody
	@GetMapping(value="/events", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<FullCalendarEvent<AnnoVO>> events(
		@RequestParam @DateTimeFormat(iso=ISO.DATE_TIME) LocalDateTime start
		, @RequestParam @DateTimeFormat(iso=ISO.DATE_TIME) LocalDateTime end
		, @RequestParam @DateTimeFormat(pattern="yyyy-MM-dd") Date date
		, @RequestParam("date") @DateTimeFormat(pattern="yyyy-MM-dd") long dateTime
		, @AuthMember MemberVO authMember
	) {
		List<AnnoVO> annoList = annoService.retrieveMyAnnoList(authMember.getMemId());
		List<FullCalendarEvent<AnnoVO>> list = annoList.stream().map(AnnoFullCalendarEvent::new).collect(Collectors.toList());
		return list;
	}
	
	@ResponseBody
	@GetMapping(value="/events/details", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<FullCalendarEvent<AnnoDetailVO>> details(
		@RequestParam @DateTimeFormat(iso=ISO.DATE_TIME) LocalDateTime start
		, @RequestParam @DateTimeFormat(iso=ISO.DATE_TIME) LocalDateTime end
		, @RequestParam @DateTimeFormat(pattern="yyyy-MM-dd") Date date
		, @RequestParam("date") @DateTimeFormat(pattern="yyyy-MM-dd") long dateTime
		, @AuthMember MemberVO authMember
	) {
		List<AnnoVO> annoList = annoService.retrieveMyAnnoList(authMember.getMemId());
		List<AnnoDetailVO> detailList = new ArrayList<>();
		for (AnnoVO vo : annoList) {
			List<AnnoDetailVO> dList = vo.getDetailList();
			for (AnnoDetailVO da : dList) {
				detailList.add(da);
			}
		}
		
		List<FullCalendarEvent<AnnoDetailVO>> list = detailList.stream().map(DetailFullCalendarEvent::new).collect(Collectors.toList());
		return list;
	}
	
	@ResponseBody
	@GetMapping(value="/events/details/process", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<FullCalendarEvent<ProcessVO>> process(
		@RequestParam @DateTimeFormat(iso=ISO.DATE_TIME) LocalDateTime start
		, @RequestParam @DateTimeFormat(iso=ISO.DATE_TIME) LocalDateTime end
		, @RequestParam @DateTimeFormat(pattern="yyyy-MM-dd") Date date
		, @RequestParam("date") @DateTimeFormat(pattern="yyyy-MM-dd") long dateTime
		, @AuthMember MemberVO authMember
	) {
		List<AnnoVO> annoList = annoService.retrieveMyAnnoList(authMember.getMemId());
		List<ProcessVO> processList = new ArrayList<>();
		for (AnnoVO vo : annoList) {
			List<AnnoDetailVO> dList = vo.getDetailList();
			for (AnnoDetailVO da : dList) {
				List<ProcessVO> pList = da.getProcessList();
				for (ProcessVO pv : pList) {
					processList.add(pv);
				}
			}
		}
		
//		List<FullCalendarEvent<ProcessVO>> list = new ArrayList<FullCalendarEvent<ProcessVO>>();
//		for(ProcessVO pv : processList) {
//			String color = new ProcessFullCalendarEvent(pv).getBackgroundColor();
//			list.add(new ProcessFullCalendarEvent(pv));
//		}
		
		List<FullCalendarEvent<ProcessVO>> list = processList.stream().map(ProcessFullCalendarEvent::new).collect(Collectors.toList());
		return list;
	}
	
	@ResponseBody
	@GetMapping(value="/alarm", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public List<AlarmVO> alarm(
		Authentication auth
		, Model model
	){
		String memId = auth.getName();
		List<AlarmVO> list = alarmService.retrieveAlarmList(memId);
		return list;
	}
}
