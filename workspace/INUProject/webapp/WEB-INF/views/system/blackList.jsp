<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<h3>블랙리스트 목록</h3>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>일련번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>권한</th>
			<th>가입일자</th>
			<th>블랙일자</th>
			<th>블랙만료여부</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${not empty blackList }">
				<c:forEach items="${blackList }" var="black">
					<tr>
						<td>${black.rnum }</td>
						<td>${black.blackVO.blackListSn }</td>
						<td><a href="#">${black.memId }</a></td>
						<td>${black.memName }</td>
						<td>${black.memAuthCd }</td>
						<td>${black.memJoinDate }</td>
						<td>${black.blackVO.blackListDate }</td>
						<td>${black.blackVO.blackListCheck }</td>
					</tr>
				</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="5">목록 없음.</td>
				</tr>
			</c:otherwise>
		</c:choose>
	</tbody>
	<tfoot>
	</tfoot>
</table>