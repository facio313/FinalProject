<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table table-bordered">
	<tr>
		<th>학교명</th>
		<td>${education.eduName}</td>
	</tr>
	<tr>
		<th>전공분류</th>
		<td>${education.eduDepartment}</td>
	</tr>
	<tr>
		<th>전공</th>
		<td>${education.eduMajor}</td>
	</tr>
	<tr>
		<th>입학일</th>
		<td>${education.eduEntered}</td>
	</tr>
	<tr>
		<th>졸업일,중퇴일,자퇴일</th>
		<td>${education.eduGraduated}</td>
	</tr>
	<tr>
		<th>상태</th>
		<td>${education.eduStatus}</td>
	</tr>
	<tr>
		<th>학점</th>
		<td>${education.eduScore}</td>
	</tr>
	<tr>
		<th>기준학점</th>
		<td>${education.eduStandard}</td>
	</tr>
	<tr>
		<th>작성날짜</th>
		<td>${education.eduInsertDate}</td>
	</tr>
</table>
<a href="${pageContext.request.contextPath}/education"><button class="btn btn-primary">목록</button></a>
<a href="${pageContext.request.contextPath}/education/update?eduSn=${education.eduSn}"><button class="btn btn-secondary">수정하기</button></a>
<form action="<c:url value='/education/delete'/>" method="post" style="display: inline-block;">
	<input name="eduSn" value="${education.eduSn}" hidden/>
	<button type="submit" class="btn btn-danger">삭제하기</button>
</form>