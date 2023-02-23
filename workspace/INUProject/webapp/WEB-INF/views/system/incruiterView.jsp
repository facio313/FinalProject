<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h3>총괄 기업회원 세부</h3>

<form:form modelAttribute="incruiter" action='${pageContext.request.contextPath }/systemManagement/acceptManagement/updateAcceptInc' method="post">
<table>
	<tr>
		<td>
			<input type="hidden" name="cmpId" value="${incruiter.companyVO.cmpId }"/>
		</td>
	</tr>
	<tr>
		<th>아이디</th>
		<td>${incruiter.memId }</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${incruiter.memName }</td>
	</tr>
	<tr>
		<th>권한</th>
		<td>${incruiter.memAuthCd }</td>
	</tr>
	<tr>
		<th>신청일자</th>
		<td>${incruiter.incruiterVO.memDate }</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>${incruiter.incruiterVO.memEmail }</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>${incruiter.incruiterVO.memTel }</td>
	</tr>
	<tr>
		<th>승인여부</th>
		<td>${incruiter.incruiterVO.memApproval  }</td>
	</tr>
	<tr>
		<th>회사아이디</th>
		<td>${incruiter.companyVO.cmpId }</td>
	</tr>
	<tr>
		<th>법인등록번호</th>
		<td>${incruiter.companyVO.cmpNo }</td>
	</tr>
	<tr>
		<th>법인명</th>
		<td>${incruiter.companyVO.cmpName }</td>
	</tr>
	<tr>
		<th>회사대표자성명</th>
		<td>${incruiter.companyVO.cmpRepName }</td>
	</tr>
	<tr>
		<th>사업자등록번호</th>
		<td>${incruiter.companyVO.cmpBsnsNo }</td>
	</tr>
	<tr>
		<th>회사기본주소</th>
		<td>${incruiter.companyVO.cmpAddr1 }</td>
	</tr>
	<tr>
		<th>회사상세주소</th>
		<td>${incruiter.companyVO.cmpAddr2 }</td>
	</tr>
	<tr>
		<th>회사우편번호</th>
		<td>${incruiter.companyVO.cmpZip }</td>
	</tr>
	<tr>
		<th>회사전화번호</th>
		<td>${incruiter.companyVO.cmpPhone }</td>
	</tr>
	<tr>
		<th>회사이메일</th>
		<td>${incruiter.companyVO.cmpEmail }</td>
	</tr>
	<tr>
		<th>회사사이트</th>
		<td>${incruiter.companyVO.cmpUrl }</td>
	</tr>
	<tr>
		<th>회사설립일자</th>
		<td>${incruiter.companyVO.cmpEstblDate }</td>
	</tr>
	<tr>
		<th>회사형태</th>
		<td>${incruiter.companyVO.cmpSmenp }</td>
	</tr>
	<tr>
		<th>회사주요사업명</th>
		<td>${incruiter.companyVO.cmpMbName }</td>
	</tr>
	<tr>
		<th>승인여부</th>
		<td>${incruiter.companyVO.cmpCheck }</td>
	</tr>
	<tr>
		<th>기업소개</th>
		<td>${incruiter.companyVO.cmpContent }</td>
	</tr>
	<tr>
		<th>회사로고</th>
		<td>${incruiter.companyVO.cmpLogo }</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="승인" />
			<input type="button" onclick="location.href='<c:url value="#"/>'" value="반려" />
			<input type="button" onclick="location.href='<c:url value="/systemManagement/acceptManagement/appliIncruiterList"/>'" value="목록으로" />
		</td>
	</tr>
</table>
</form:form>	




















