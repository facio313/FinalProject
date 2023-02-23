<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">   --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/help.css"> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/components.css"> --%>
<%-- <link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/layout.css"> --%>

<ul class="tab_help">
<li class="select">
	<a href="<c:url value='memberList?memAuthCd=ROLE_SEEKER'/>" class="inTab"><span>일반회원 목록</span></a>
</li>
<li class="">
	<a href="<c:url value='memberList?memAuthCd=ROLE_INCRUITER'/>" class="inTab"><span>기업회원 목록</span></a>
</li>
<li class="">
	<a href="<c:url value='memberList?memAuthCd=ROLE_EXPERT'/>" class="inTab"><span>전문가회원 목록</span></a>
</li>
</ul>
<table>
	<thead>
		<tr>
			<th>번호</th>
			<th>아이디</th>
			<th>이름</th>
			<th>권한</th>
			<th>가입일자</th>
			<th>차단일자</th>
			<th>블랙일자</th>
		</tr>
	</thead>
	<tbody>
		<c:choose>
			<c:when test="${not empty authMemberList }">
				<c:forEach items="${authMemberList }" var="member">
					<c:if test="${member.memDelete eq null }">
						<tr>
							<td>${member.rnum }</td>
							<td><a href="#">${member.memId }</a></td>
							<td>${member.memName }</td>
							<td>${member.memAuthCd }</td>
							<td>${member.memJoinDate }</td>
							<td>${member.cutVO.cutDate }</td>
							<td>${member.blackVO.blackListDate }</td>
						</tr>
					</c:if>
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
