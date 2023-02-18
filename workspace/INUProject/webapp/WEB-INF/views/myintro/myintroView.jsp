<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<table class="table hover table-bordered">
	<tr>
		<th>내 자기소개서 제목</th>
		<td>${myintro.myintroTitle}</td>
	</tr>
	<tr>
		<th>내 자기소개서 일련번호</th>
		<td>${myintro.myintroSn}</td>
	</tr>
	<tr>
		<th>내 아이디</th>
		<td>${myintro.memId}</td>
	</tr>
	<tr>
		<th>내 성장과정</th>
		<td>${myintro.myintroGrowth}</td>
	</tr>
	<tr>
		<th>내 성격 장단점</th>
		<td>${myintro.myintroPersonality}</td>
	</tr>
	<tr>
		<th>내 학창시절</th>
		<td>${myintro.myintroSchoolday}</td>
	</tr>
	<tr>
		<th>내 직무경험</th>
		<td>${myintro.myintroJob}</td>
	</tr>
	<tr>
		<th>내 지원동기</th>
		<td>${myintro.myintroMotive}</td>
	</tr>
	<tr>
		<th>내 입사 후 포부</th>
		<td>${myintro.myintroAspiration}</td>
	</tr>
	<tr>
		<th>내 가족소개</th>
		<td>${myintro.myintroFamily}</td>
	</tr>
	<tr>
		<th>내 교외활동</th>
		<td>${myintro.myintroSubactivity}</td>
	</tr>
	<tr>
		<th>내 전공선택</th>
		<td>${myintro.myintroMajor}</td>
	</tr>
	<tr>
		<th>생활진로</th>
		<td>${myintro.myintroCourse}</td>
	</tr>
	<tr>
		<th>내 희망업무</th>
		<td>${myintro.myintroObjective}</td>
	</tr>
	<tr>
		<th>내 동아리</th>
		<td>${myintro.myintroClub}</td>
	</tr>
	<tr>
		<th>내 봉사활동</th>
		<td>${myintro.myintroVolunteer}</td>
	</tr>
	<tr>
		<th>내 추가항목1</th>
		<td>${myintro.myintroAdd1}</td>
	</tr>
	<tr>
		<th>내 추가항목2</th>
		<td>${myintro.myintroAdd2}</td>
	</tr>
	<tr>
		<th>내 추가항목3</th>
		<td>${myintro.myintroAdd3}</td>
	</tr>
	<tr>
		<th>내 자기소개서 작성날짜</th>
		<td>${myintro.myintroInsertDate}</td>
	</tr>
</table>

<a href="${pageContext.request.contextPath}/myintro"><button class="btn btn-primary">목록</button></a>
<a href="${pageContext.request.contextPath}/myintro/edit?myintroSn=${myintro.myintroSn}"><button class="btn btn-secondary">수정하기</button></a>
<form:form modelAttribute="myintro" action="${pageContext.request.contextPath}/myintro/${myintro.myintroSn }" method="delete" style="display: inline-block;">
	<button type="submit" class="btn btn-danger">삭제하기</button>
</form:form>