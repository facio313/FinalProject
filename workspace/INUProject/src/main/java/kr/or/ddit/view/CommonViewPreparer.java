package kr.or.ddit.view;

import java.util.Arrays;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.apache.tiles.AttributeContext;
import org.apache.tiles.preparer.ViewPreparer;
import org.apache.tiles.request.Request;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import kr.or.ddit.vo.MenuVO;
import lombok.extern.slf4j.Slf4j;

/**
 * 
 * @author 공통
 * @since 2023. 2. 20.
 * @version 1.0
 * @see javax.servlet.http.HttpServlet
 * <pre>
 * [[개정이력(Modification Information)]]
 * 수정일                  수정자               수정내용
 * --------     --------    ----------------------
 * 2023. 2. 20.   박형준             고객센터, 시스템관리 메뉴 추가
 * Copyright (c) 2023 by DDIT All right reserved
 * </pre>
 */
@Slf4j
@ViewPreparerComponent
public class CommonViewPreparer implements ViewPreparer, BeanNameAware{
	@Override
	public void setBeanName(String name) {
		log.info("등록된  bean name : {}", name);
		
	}
	
	private Map<String, List<MenuVO>> menuResources;
	
	public CommonViewPreparer() {
		super();
		menuResources = new LinkedHashMap<>();
		menuResources.put(
			"/announcement/**"
			, Arrays.asList(
				MenuVO.builder()
				.menuText("공고 작성")
				.menuURL("/announcement/insert")
				.build()
				, MenuVO.builder()
				.menuText("공고 목록")
				.menuURL("/announcement/annoList")
				.build()
			)
		);
		menuResources.put(
			"/member/**"
			, Arrays.asList(
				MenuVO.builder()
				.menuText("회원목록")
				.menuURL("/member/memberList.do")
				.build()
			)
		);
		
		menuResources.put(
				"/help/**"
				, Arrays.asList(
						MenuVO.builder()
						.menuTitle("고객센터")
						.menuText("공지사항")
						.menuURL("/help/notice")
						.build()
						, MenuVO.builder()
						.menuText("도움말")
						.menuURL("/help")
						.build()
						, MenuVO.builder()
						.menuText("문의하기")
						.menuURL("/ask")
						.build()
						, MenuVO.builder()
						.menuText("내문의내역")
						.menuURL("/ask/askList")
						.build()
						)
				);
		
		menuResources.put(
				"/systemManagement/**"
				, Arrays.asList(
						MenuVO.builder()
						.menuTitle("시스템 관리")
						.menuURL("/systemManagement")
						.build()
						, MenuVO.builder()
						.menuTitle("회원 관리")
						.menuText("일반회원 목록")
						.menuURL("/systemManagement/seekerList")
						.build()
						, MenuVO.builder()
						.menuText("차단 관리")
						.menuURL("/systemManagement/cutList")
						.build()
						, MenuVO.builder()
						.menuText("블랙리스트 관리")
						.menuURL("/systemManagement/blackList")
						.build()
						)
				);
	}

	@Override
	public void execute(Request tilesContext, AttributeContext attributeContext) {
		ServletRequestAttributes atts = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
		HttpServletRequest req = atts.getRequest();
		log.info("request uri : {}" , req.getRequestURI());
		
		Optional<String> keyOption = menuResources.keySet().stream()
										.filter(key->{
											AntPathRequestMatcher matcher = new AntPathRequestMatcher(key);
											return matcher.matches(req);
										}).findFirst();
		if(keyOption.isPresent()) {
			List<MenuVO> menuList = menuResources.get(keyOption.get());
			tilesContext.getContext(Request.REQUEST_SCOPE).put("menuList", menuList);
		}
				  
	}
	

}












