<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css"/>  
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/help.css">

<style>
.sub_top_wrap.tag_list::before {
	background: 0;
}
.company_honest_qna .contents_container {
  	width: 90%;
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
					<div class="tblType">
						<table>
							<colgroup>
								<col width="80">
								<col width="250">
								<col width="200">
								<col width="400">
								<col width="150">
								<col width="150">
							</colgroup>
							<thead>
								<tr>
									<th>번호</th>
									<th>아이디</th>
									<th>신청자</th>
									<th>회사명</th>
									<th>회사형태</th>
									<th>주요사업</th>
									<th>신청일자</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${not empty incruiterList }">
										<c:forEach items="${incruiterList }" var="incruiter">
											<tr class="notice">
												<td>${incruiter.rnum }</td>
												<td>${incruiter.memId }</td>
												<td>${incruiter.memName }</td>
												<td>${incruiter.companyVO.cmpName}</td>
												<td>${incruiter.companyVO.cmpSmenp }</td>
												<td>${incruiter.companyVO.cmpMbName }</td>
												<td>${incruiter.incruiterVO.memDate }</td>
												<td>
													<a href='<c:url value="/systemManagement/acceptManagement/appliIncruiterList/${incruiter.memId}"/>'>
														상세보기													
													</a>
												</td>
											</tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr>
											<td>
												목록 없음
											</td>
										</tr>
									</c:otherwise>
								</c:choose>
							</tbody>
							<tfoot>
							</tfoot>
						</table>
					</div>
					
					
					<%-- <c:set var="incruiterList" value="${incruiterList }"/>
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
					</div> --%>
				</div>
			</div>
		</div>
	</div>
</div>