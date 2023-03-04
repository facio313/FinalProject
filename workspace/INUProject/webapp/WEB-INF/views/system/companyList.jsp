<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/components.css"> 

<h3>기업 목록</h3>

<div class="tblType">
	<table>
		<thead>
			<tr>
				<th>회사아이디</th>
				<th>법인명</th>
				<th>회사대표자성명</th>
				<th>회사설립일자</th>
				<th>회사형태</th>
			</tr>
		</thead>
		<tbody>
			<c:set var="companyList" value="${pagingVO.dataList }"/>
			<c:choose>
				<c:when test="${not empty companyList }">
					<c:forEach items="${companyList }" var="company">
						<c:if test="${company.cmpCheck eq 'N' }">
							<tr>
								<td>${company.cmpId }</td>
								<td>${company.cmpName }</td>
								<td>${company.cmpRepName }</td>
								<td>${company.cmpEstblDate }</td>
								<td>${company.cmpSmenp }</td>
							</tr>
						</c:if>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td>목록 없음.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</div>
    