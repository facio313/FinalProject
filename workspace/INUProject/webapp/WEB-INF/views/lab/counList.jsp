<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 19.  양서연      최초작성
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/help.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />

<body id="top">
	<div class="site-wrap">
		<!-- 작성 -->
		<div id="sri_section" class="has_banner">
			<div id="sri_wrap">
				<div id="content">
					<div class="wrap_title_recruit">
						<h1 class="title_common">내 문의 내역</h1>
					</div>
					<div class="wrap_board wrap_help">
						<p class="copy">
							
							평일 09시 에서 17시 까지 문의하신 내용은 당일 답변해드립니다.<br> 17시 이후에 문의하신 내용은
							다음날에 답변, 주말에 문의하신 내용은 그 다음주 월요일에 답변해 드립니다.
						</p>
						<div class="tblType">

							<table>
								<colgroup>
									<col style="width: 100px">
									<col style="width: 210px">
									<col>
									<col style="width: 100px">
									<col style="width: 90px">
								</colgroup>

								<tbody id="ask_list">
									<tr>
										<td class="count">문의번호</td>
										<td class="category" style="text-align: center;">문의종류</td>
										<td class="content_tit" style="text-align: center;">제목</td>
										<td class="date">등록일</td>
										<td class="status end">처리상태</td>
									</tr>
										<tr>
											<td>1111</td>
											<td>2222</td>
											<td> <a href="${viewURL}">3333</a></td>
											<td>4444</td>
											<td>55555</td>
										</tr>
								</tbody>
							</table>
						</div>
						<!-- 페이지 -->
						<div class="pagingArea"></div>
					</div>
				</div>
			</div>
		</div>
	</div>
