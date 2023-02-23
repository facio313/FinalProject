<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자         수정내용
* ----------  ---------  -----------------
* 2023. 2. 20.  양서연         최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 
<c:set  var="prePath" value="${pageContext.request.contextPath}"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/help.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />

<!-- MAIN CSS -->
<link rel="stylesheet" href="${prePath}/resources/css/style.css">

<div id="sri_section" class="  has_banner">
	<div id="sri_wrap">
		<div id="content">
			<div class="wrap_board_view wrap_help">
				<strong class="view_tit">상담 내역</strong>
				<div class="wrap_content_view">
					<div class="area_tit">
						<h1 class="content_tit">${coun.counTitle}</h1>
						<dl class="content_info">
							<dt>문의 날짜:</dt>
							<dd>${coun.counDate}</dd>
						</dl>
					</div>
					<div class="area_content">
						<div class="inner">
							<div style="white-space: pre-line">${coun.counContent}</div>
							<div class="replies">
								<!-- 답변 -->
								<div class="reply">
									<div class="txt">
										<p>답변</p><br>
										<c:choose>
											<c:when test="${not empty coun.reCoun }">
												<p>
													${coun.reCoun.counContent}
												</p>
											</c:when>
											<c:otherwise>
												<p>아직 답변이 등록되지 않았습니다.</p>
												<p>'재문의하기'를 통해 구체적으로 말씀해 주시면 확인 후 안내도와드리겠습니다.</p>
											</c:otherwise>
										</c:choose>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="area_btn">
					<a href="${prePath}/lab/counseling" class="btn_basic_type01 btn_list" title="이전 목록 바로가기">
						목록
					</a>
					<!-- 내 게시글이면 삭제하기-->
					<a href="${prePath}" class="btn_basic_type01 btn_list" title="삭제하기">
						삭제하기
					</a>
					<!-- 답글 달리거나 내 게시글 아니면 수정불가 -->
					<a href="${prePath}" class="btn_basic_type01 btn_list" title="삭제하기">
						수정하기
					</a>
					<!-- 운영자이면서 답변 달려있지 않으면 답장하기, 아니면 답글 수정하기 -->
					<a href="${prePath}" class="btn_basic_type01 btn_list" title="답글 바로가기">
						답글달기
					</a>
				</div>
				<div class="help_find">
					<div class="find_method">
						<p class="desc_method">
							아직도 궁금한 점이 남아있다면, 고객센터로 문의해 주세요. ( 전화문의 : <span class="tel">042-123-4567</span>)
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>