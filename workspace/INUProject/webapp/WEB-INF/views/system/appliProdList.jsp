<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>

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
							<strong class="stit">상품 신청목록</strong>
						</span>
					</div>
					<c:set var="exprodList" value="${pagingVO.dataList }"/>
					<div class="list_num_tit sub">
						전체 <strong>${fn:length(exprodList)}</strong>건
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
									<th>상품명</th>
									<th>분류</th>
									<th>가격</th>
									<th>신청일자</th>
									<th></th>
								</tr>
							</thead>
							<tbody>
								<c:choose>
									<c:when test="${not empty exprodList }">
										<c:forEach items="${exprodList }" var="exprod">
											<tr class="notice">
												<td>${exprod.rnum }</td>
												<td>${exprod.memId }</td>
												<td>${exprod.memName }</td>
												<td style="text-align: left;">
													${exprod.exprodName }
												</td>
												<c:if test="${exprod.exlprodId eq 'EL001'}">
													<td>클래스</td>
												</c:if>
												<c:if test="${exprod.exlprodId eq 'EL002'}">
													<td>컨설팅</td>
												</c:if>
												<td>${exprod.exprodPrice }</td>
												<td>${fn:substring(exprod.exprodAppliDate,0,10) }</td>
												<td>
													<a href='<c:url value="/systemManagement/acceptManagement/appliprodList/${exprod.exprodId}"/>'>
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
								<tr>
									<td colspan="5">
										<div id = "pagingArea">
											<ui:pagination pagingVO="${pagingVO }" type="bootstrap"/>
										</div>
									</td>
								</tr>
							</tfoot>
						</table>
						<form:form id="searchForm" modelAttribute="simpleCondition" method="get">
							<input type="hidden" name="page" />
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<script>
	
	
	$("a.paging").on("click", function(event){
		event.preventDefault();
		let page = $(this).data("page");
		if(!page) return false;
		searchForm.find("[name=page]").val(page);
		searchForm.submit();
		return false;
	});
</script>




















