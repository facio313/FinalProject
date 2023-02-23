<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">   --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/help.css"> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/components.css"> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/layout.css"> --%>

<h3>차단 목록</h3>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>일련번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>권한</th>
			<th>가입일자</th>
			<th>차단일자</th>
			<th>차단만료여부</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${not empty cutList }">
				<c:forEach items="${cutList }" var="cut">
					<tr>
						<td>${cut.rnum }</td>
						<td>${cut.cutVO.cutSn }</td>
						<td><a href="#">${cut.memId }</a></td>
						<td>${cut.memName }</td>
						<td>${cut.memAuthCd }</td>
						<td>${cut.memJoinDate }</td>
						<td>${cut.cutVO.cutDate }</td>
						<td>${cut.cutVO.cutCheck }</td>
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
