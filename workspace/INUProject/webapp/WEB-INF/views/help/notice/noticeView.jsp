<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table>
	<tr>
		<th>제목</th>
		<td>${notice.noticeTitle }</td>
	</tr>
	<tr>
		<th>작성일</th>
		<td>${notice.noticeDate }</td>
		<th>조회수</th>
		<td>${notice.noticeHit }</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>${notice.noticeContent }</td>
	</tr>
	<tr>
		<td colspan="2">
			<c:url value="/help/notice/noticeUpdate" var="updateURL">
				<c:param name="what" value="${notice.noticeSn }"/>
			</c:url>
			<input type="button" onclick="location.href='${updateURL}'" value="수정">
		</td>
	</tr>
</table>
















