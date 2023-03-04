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
 * 2023. 2. 24.   윤호연             인재 홍보 관련 메뉴 추가
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
				.menuTitle("채용공고")
				.subTitle("구인 공고가 올라옵니다.")
				.build()
				, MenuVO.builder()
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
			"/apply/**"
			, Arrays.asList(
					MenuVO.builder()
					.menuTitle("채용과정")
					.subTitle("회사 공고의 채용과정을 관리합니다.")
					.build()
					, MenuVO.builder()
					.menuText("이력서")
					.menuURL("/resume")
					.build()
					, MenuVO.builder()
					.menuText("자기소개서")
					.menuURL("/myintro")
					.build()
					, MenuVO.builder()
					.menuText("채용과정")
					.menuURL("/process")
					.build()
					)
				);
		menuResources.put(
			"/myintro/**"
			, Arrays.asList(
					MenuVO.builder()
					.menuTitle("채용과정")
					.subTitle("회사 공고의 채용과정을 관리합니다.")
					.menuText("지원")
					.menuURL("/apply")
					.build()
					, MenuVO.builder()
					.menuText("이력서")
					.menuURL("/resume")
					.build()
					, MenuVO.builder()
					.menuText("자기소개서")
					.menuURL("/myintro")
					.build()
					, MenuVO.builder()
					.menuText("채용과정")
					.menuURL("/process")
					.build()
					)
				);
		menuResources.put(
			"/process/**"
			, Arrays.asList(
					MenuVO.builder()
					.menuTitle("채용과정")
					.subTitle("회사 공고의 채용과정을 관리합니다.")
					.menuText("지원")
					.menuURL("/apply")
					.build()
					, MenuVO.builder()
					.menuText("이력서")
					.menuURL("/resume")
					.build()
					, MenuVO.builder()
					.menuText("자기소개서")
					.menuURL("/myintro")
					.build()
					, MenuVO.builder()
					.menuText("채용과정")
					.menuURL("/process")
					.build()
					, MenuVO.builder()
					.menuText("공고목록")
					.menuURL("/process/list")
					.build()
					)
				);
		
		menuResources.put(
				"/resume/**"
				, Arrays.asList(
					MenuVO.builder()
					.menuTitle("채용과정")
					.subTitle("회사 공고의 채용과정을 관리합니다.")
					.menuText("지원")
					.menuURL("/apply")
					.build()
					, MenuVO.builder()
					.menuText("이력서")
					.menuURL("/resume")
					.build()
					, MenuVO.builder()
					.menuText("학력")
					.menuURL("/education")
					.build()
					, MenuVO.builder()
					.menuText("경력")
					.menuURL("/career")
					.build()
					, MenuVO.builder()
					.menuText("자격증")
					.menuURL("/certification")
					.build()
					, MenuVO.builder()
					.menuText("기능")
					.menuURL("/facility")
					.build()
					, MenuVO.builder()
					.menuText("주요활동")
					.menuURL("/activity")
					.build()
					, MenuVO.builder()
					.menuText("교육이수")
					.menuURL("/activity")
					.build()
					, MenuVO.builder()
					.menuText("수상내역")
					.menuURL("/award")
					.build()
					, MenuVO.builder()
					.menuText("자기소개서")
					.menuURL("/myintro")
					.build()
					, MenuVO.builder()
					.menuText("채용과정")
					.menuURL("/process")
					.build()
					)
				);
		
		menuResources.put(
				"/board/**"
				, Arrays.asList(
					MenuVO.builder()
					.menuTitle("커뮤니티")
					.subTitle("커뮤니티에 대한 설명 쓰세여")
					.menuText("홈")
					.menuURL("/board/boardMain")
					.build()
					, MenuVO.builder()
					.menuText("글 전체")
					.menuURL("/board/boardTotal")
					.build()
					, MenuVO.builder()
					.menuText("현직자 인터뷰")
					.menuURL("/interview/interviewList")
					.build()
					)
				);
		
		menuResources.put(
				"/help/**"
				, Arrays.asList(
						MenuVO.builder()
						.menuTitle("고객센터")
						.subTitle("고객 맞춤 서비스를 제공하고 있습니다.")
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
						, MenuVO.builder()
						.menuText("아이디/비밀번호 찾기")
						.menuURL("/help/find")
						.build()
						)
				);
		
		menuResources.put(
				"/ask/**"
				, Arrays.asList(
						MenuVO.builder()
						.menuTitle("고객센터")
						.subTitle("고객 맞춤 서비스를 제공하고 있습니다.")
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
						, MenuVO.builder()
						.menuText("아이디/비밀번호 찾기")
						.menuURL("/help/find")
						.build()
						)
				);
		
		menuResources.put(
				"/systemManagement/**"
				, Arrays.asList(
					MenuVO.builder()
					.menuTitle("시스템 관리")
					.subTitle("운영자 시스템 관리 페이지")
					.menuText("관리 홈")
					.menuURL("/systemManagement")
					.build()
					, MenuVO.builder()
					.menuText("회원 관리")
					.menuURL("/systemManagement/memberList")
					.build()
					, MenuVO.builder()
					.menuText("기업 관리")
					.menuURL("/systemManagement/companyList")
					.build()
					, MenuVO.builder()
					.menuText("승인 관리")
					.menuURL("/systemManagement/acceptManagement")
					.build()
					, MenuVO.builder()
					.menuText("문의 관리")
					.menuURL("/systemManagement/")
					.build()
					, MenuVO.builder()
					.menuText("신고 관리")
					.menuURL("/systemManagement/reportList")
					.build()
					)
				);
		
		// 인재홍보 관련
		menuResources.put(
				"/selfpr/**"
				, Arrays.asList(
					MenuVO.builder()
					.menuTitle("인재 홍보")
					.subTitle("원하는 인재를 조회할 수 있습니다.")
					.menuText("인재 검색")
					.menuURL("/selfpr")
					.build()
					, MenuVO.builder()
					.menuText("관심 인재")
					.menuURL("/selfpr/like")
					.build()
					, MenuVO.builder()
					.menuText("오늘 본 인재")
					.menuURL("/selfpr/today")
					.build()
					, MenuVO.builder()
					.menuText("시스템 추천인재")
					.menuURL("/selfpr/recommend")
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












