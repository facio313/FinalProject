package kr.or.ddit.process.controller;


import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.inject.Inject;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.or.ddit.announcement.service.AnnoService;
import kr.or.ddit.announcement.vo.AnnoDetailVO;
import kr.or.ddit.announcement.vo.AnnoVO;
import kr.or.ddit.process.service.ProcessService;
import kr.or.ddit.process.vo.ItemVO;
import kr.or.ddit.process.vo.ProcessVO;
import kr.or.ddit.security.AuthMember;
import kr.or.ddit.vo.MemberVO;

/**
 * 
 * @author 최경수
 * @since 2023. 2. 4.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일         수정자         수정내용
 * --------     --------    ----------------------
 * 2023. 2. 4.      최경수       최초작성
 * 2023. 2. 17.     최경수       채용과정 추가, 수정, 삭제
 * 2023. 2. 20.     최경수       채용과정 세부
 * 2023. 2. 23.     최경수       세부 항목
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Controller
@RequestMapping("/process")
public class ProcessController {

	// 세부공고 작성 시 or 세부공고 작성 후 채용과정 등록 가능
	// 등록버튼을 누르면 해당 폼으로 이동하여 어떤 채용과정을 거칠지 과정 사용 여부를 결정한다.(checkBox??)
	// 등록하면 각 채용과정에서 세부항목들을 정할 수 있다. 안 정하면 그냥 기본을 다 들어가게 된다.
	// 세부항목의 경우 질문을 정할 수 있다. ex) 자기소개서 성격장단점 -> 자신의 성격의 단점을 어떻게 극복하셨나요?
	
	@Inject
	private ProcessService service;
	
	@Inject
	private AnnoService annoService;
	
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
	
	// 채용과정 메인
	@GetMapping
	public String main(
		Model model
		, @AuthMember MemberVO authMember
	) {
		String cmpId = authMember.getIncruiterVO().getCmpId();
		String memId = authMember.getMemId();
		List<ProcessVO> processList = service.retrieveProcessList(cmpId);
		List<AnnoVO> list = annoService.retrieveMyAnnoList(memId);
		
		for (AnnoVO anno : list) {
			anno.setDetailList((annoService.retrieveAnno(anno.getAnnoNo()).getDetailList()));
		}
		model.addAttribute("list", list);
		model.addAttribute("processList", processList);
		return "process/processMain";
	}
	
	// 공고 목록
	@GetMapping("/list")
	public String processAnnoView(
		Model model
		, @AuthMember MemberVO authMember
	) throws ParseException { // 예외처리 하기
		String memId = authMember.getMemId();
		List<AnnoVO> list = annoService.retrieveMyAnnoList(memId);
		
		// 서비스로 옮기기
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
	
	// 한 공고 - 여러 세부 공고 - 여러 채용과정
	@GetMapping("/{annoNo}")
	public String processDaView(
		Model model
		, @PathVariable String annoNo
		, @AuthMember MemberVO authMember
	) throws ParseException { // 예외처리 하기
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(annoNo);
		
		String now = LocalDate.now().toString().replace("-", "");
		// 서비스로 옮기기
		// 선형진행도
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
	
	// 한 세부 공고 - 여러 채용과정 - 여러 항목들
	@GetMapping("/{annoNo}/{daNo}")
	public String view(
		Model model
		, @PathVariable String annoNo
		, @PathVariable String daNo
		, @ModelAttribute("process") ProcessVO process
	) throws ParseException { // 예외처리 하기
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(annoNo);
		
		List<AnnoDetailVO> detailList = anno.getDetailList();
		if (detailList.size() > 1 ) {
			for (AnnoDetailVO vo : detailList) {
				if (vo.getDaNo() != daNo) {
					detailList.remove(vo);
				}
			}
		}
		
		String now = LocalDate.now().toString().replace("-", "");
		// 서비스로 옮기기
		// 선형진행도
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
		
		// 서비스로 옮기기
		// 세부항목 넣기
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
	
	// 한 세부 공고 - 여러 채용과정 - 여러 항목들(ajax)
	// value 똑같아도 되나?...
	@GetMapping(value="/{annoNo}/{daNo}", produces=MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String ajaxView(
			Model model
			, @PathVariable String annoNo
			, @PathVariable String daNo
			, @ModelAttribute("process") ProcessVO process
			) throws ParseException { // 예외처리 하기
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(annoNo);
		
		List<AnnoDetailVO> detailList = anno.getDetailList();
		if (detailList.size() > 1 ) {
			for (AnnoDetailVO vo : detailList) {
				if (vo.getDaNo() != daNo) {
					detailList.remove(vo);
				}
			}
		}
		
		String now = LocalDate.now().toString().replace("-", "");
		// 서비스로 옮기기
		// 선형진행도
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
		
		// 서비스로 옮기기
		// 세부항목 넣기
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
	
	// 입력폼
	@GetMapping("/form")
	public String form(
		Model model
		, @ModelAttribute("process") ProcessVO process
		, @RequestParam("daNo") String daNo
	) {
		AnnoVO anno = annoService.retrieveAnnoDetailProcess(daNo);
		model.addAttribute("anno",anno);
		model.addAttribute("daNo", daNo);
		return "process/processForm";
	}
	
	// 채용과정 입력
	@PostMapping
	public String insert(
		Model model
		, @ModelAttribute("process") ProcessVO process
	) {
		//jsp에서 넘어옴
		List<ProcessVO> list = process.getProcessList();
		
		//최종
		List<ProcessVO> resultList = new ArrayList<ProcessVO>();
		
		for (ProcessVO vo : list) {
			if (!vo.getProcessStartDate().equals("")) {
				resultList.add(vo);
			}
		}
		
		process.setProcessList(resultList);
		
		service.createProcess(process);
		return "redirect:/process/"; // /{annoNo}/{daNo}
	}
	
	// 채용과정 수정폼
	@GetMapping("/edit")
	public String edit(
		Model model
		, @ModelAttribute("process") ProcessVO process
		, @RequestParam("daNo") String daNo
	) {
//		process = service.retrieveProcess(daNo);
		model.addAttribute("process", process);
		return "process/processEdit";
	}
	
	// 채용과정 수정
	@PatchMapping("{daNo}")
	public String update(
		Model model
		, @PathVariable String daNo
		, @ModelAttribute("process") ProcessVO process
	) {
		service.modifyProcess(process);
		return "redirect:/process/" + daNo;
	}
	
	// 채용과정 삭제
	@DeleteMapping("{daNo}")
	public String delete(
		Model model
		, @PathVariable String daNo
	) {
		service.removeProcess(daNo);
		return "redirect:/process";
	}
}
