<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />

<style>
.sub_top_wrap.tag_list::before {
	background: 0;
}
</style>

<div id="sri_section" class="layout_full">
	<div id="sri_wrap">
		<div id="content">
			<div class="company_honest_qna">
				<div class="contents_container">
					<div class="sub_top_wrap tag_list">
						<span class="sub_title_tag">
							<strong class="stit">기업총괄회원 신청목록</strong>
						</span>
					</div>
					<c:set var="incruiterList" value="${incruiterList }"/>
					<div class="list_num_tit sub">
						전체 <strong>${fn:length(incruiterList)}</strong>건
					</div>
					<div class="qna_list_wrap">
						<ul class="qna_list" id="qst_and_ans_list">
						<c:choose>
							<c:when test="${not empty incruiterList }">
								<c:forEach items="${incruiterList }" var="incruiter">
									<li>
										<div class="qna_subject_wrap">
											<span class="qna_subject">${incruiter.memId }</span>
										</div> 
										<a href='<c:url value="/systemManagement/acceptManagement/appliIncruiterList/${incruiter.memId}"/>' class="go">자세히 보기</a>
									</li>
								</c:forEach>
							
							</c:when>
							<c:otherwise>
							
							</c:otherwise>
						</c:choose>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>