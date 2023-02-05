package kr.or.ddit.company.controller;

import java.util.HashMap;

import javax.inject.Inject;

import org.apache.ibatis.annotations.Param;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import kr.or.ddit.company.service.CompanyService;
import kr.or.ddit.company.vo.CompanyVO;
import kr.or.ddit.vo.PagingVO;
import kr.or.ddit.vo.SearchVO;
import oracle.jdbc.proxy.annotation.Post;

@Controller
@RequestMapping("/company")
public class CompanyController {
	@Inject
	private CompanyService service;
	
	@ResponseBody
	@PostMapping(produces= MediaType.APPLICATION_JSON_UTF8_VALUE)
	public String companyRetrieve(
		@RequestParam(value = "page", required = false, defaultValue = "1") int currentPage
		,@ModelAttribute("simpleCondition") SearchVO searchVO
		,Model model
		) throws JsonProcessingException {
		System.out.println(model);
		PagingVO<CompanyVO> pagingVO = new PagingVO<CompanyVO>();
		pagingVO.setCurrentPage(currentPage);
		pagingVO.setSimpleCondition(searchVO);
		service.retrieveCompanyList(pagingVO);
		model.addAttribute("pagingVO", pagingVO);
//		CompanyVO company = service.retrieveCompany(cmpName);
		ObjectMapper mapper = new ObjectMapper();
		String companyJson = mapper.writeValueAsString(pagingVO);
		return companyJson;
	}
}
