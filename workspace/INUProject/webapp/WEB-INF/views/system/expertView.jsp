<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<h3>전문가 신청 세부</h3>

<form:form modelAttribute="expert" action='${pageContext.request.contextPath }/systemManagement/acceptManagement/updateAcceptExp' method="post">
<table>
	<tr>
		<td>
			<input type="hidden" name="memId" value="${expert.memId }"/>
		</td>
	</tr>
	<tr>
		<th>아이디</th>
		<td>${expert.memId }</td>
	</tr>
	<tr>
		<th>이름</th>
		<td>${expert.memName }</td>
	</tr>
	<tr>
		<th>생년월일</th>
		<td>${expert.seekerVO.memBirth }</td>
	</tr>
	<tr>
		<th>성별</th>
		<td>${expert.seekerVO.memGender }</td>
	</tr>
	<tr>
		<th>우편번호</th>
		<td>${expert.seekerVO.memZip }</td>
	</tr>
	<tr>
		<th>기본주소</th>
		<td>${expert.seekerVO.memAddr1 }</td>
	</tr>
	<tr>
		<th>상세주소</th>
		<td>${expert.seekerVO.memAddr2 }</td>
	</tr>
	<tr>
		<th>이메일</th>
		<td>${expert.seekerVO.memEmail }</td>
	</tr>
	<tr>
		<th>전화번호</th>
		<td>${expert.seekerVO.memTel }</td>
	</tr>
	<tr>
		<th>권한</th>
		<td>${expert.memAuthCd }</td>
	</tr>
	<tr>
		<th>가입일자</th>
		<td>${expert.memJoinDate }</td>
	</tr>
	<tr>
		<th>한줄소개</th>
		<td>${expert.expertVO.expertIntroduction }</td>
	</tr>
	<tr>
		<th>가입경로</th>
		<td>${expert.expertVO.expertJoinpath }</td>
	</tr>
	<tr>
		<th>직업</th>
		<td>${expert.expertVO.expertField }</td>
	</tr>
	<tr>
		<th>태그</th>
		<td>${expert.expertVO.expertTag }</td>
	</tr>
	<tr>
		<th>사업장 우편번호</th>
		<td>${expert.expertVO.expertZip }</td>
	</tr>
	<tr>
		<th>사업장주소</th>
		<td>${expert.expertVO.expertAddr }</td>
	</tr>
	<tr>
		<th>사업장 상세주소</th>
		<td>${expert.expertVO.expertAddr2 }</td>
	</tr>
	<tr>
		<th>은행</th>
		<td>${expert.expertVO.expertBank }</td>
	</tr>
	<tr>
		<th>계좌번호</th>
		<td>${expert.expertVO.expertAccount }</td>
	</tr>
	<tr>
		<th>예금주</th>
		<td>${expert.expertVO.expertHolder }</td>
	</tr>
	<tr>
		<th>분야코드</th>
		<td>${expert.expertVO.exfieldId }</td>
	</tr>
	<tr>
		<th>직업코드</th>
		<td>${expert.expertVO.exjobId }</td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="승인" />
			<input type="button" onclick="location.href='<c:url value="#"/>'" value="반려" />
			<input type="button" onclick="location.href='<c:url value="/systemManagement/acceptManagement/appliExpertList"/>'" value="목록으로" />
		</td>
	</tr>
</table>
</form:form>	




















