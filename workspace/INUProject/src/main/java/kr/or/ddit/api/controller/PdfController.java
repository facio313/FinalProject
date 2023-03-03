package kr.or.ddit.api.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.or.ddit.api.service.PdfService;
import kr.or.ddit.api.vo.PdfAttachVO;
import kr.or.ddit.resume.service.ResumeService;
import kr.or.ddit.resume.vo.ResumeVO;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

/**
 * @author 작성자명
 * @since 2023. 2. 25.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                 수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 25.   양서연               최초작성
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */

@Slf4j
@Controller
@RequestMapping("/pdf")
@RequiredArgsConstructor
public class PdfController {
	private final PdfService pdfService;
	private final ResumeService resumeService;

	@GetMapping
	public String pdfView(
		Model model
//		, @RequestParam String resumeSn
	) {
		String resumeSn = "RSM000001";
		ResumeVO resume = resumeService.retrieveResume(resumeSn);
		model.addAttribute("resume", resume);
		log.info("이력서VO : {}",resume);
		
		return "pdf/pdfView";
	}
	
	@PostMapping("createPdf")
	@ResponseBody
	public ResponseEntity<String> createPdf(
		String filename
		, String htmlStr
		, HttpServletRequest request
		, @RequestBody Map<String, String> map
	) throws IOException {
		ResponseEntity<String> entity = new ResponseEntity<String>("SUCCESS",HttpStatus.OK);
		
		filename = "pdfTest";
		
		htmlStr = map.get("htmlStr");
		filename = map.get("resumeSn");
		
		pdfService.createHtmlPdf(filename, htmlStr, request);
		
		return entity;
	}
}
