<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 14.      최경수            최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<h1>지원 상세보기</h1>
<div>
	<table class="table table-bordered">
		<tr>
			<th>세부공고아이디</th>
			<td>${apply.daNo}</td>
		</tr>
		<tr>
			<th>이력서 아이디</th>
			<td>${apply.resumeSn}</td>
		</tr>
		<tr>
			<th>내 자기소개서 아이디</th>
			<td>${apply.myintroSn}</td>
		</tr>
		<tr>
			<th>지원날짜</th>
			<td>${apply.applyDate}</td>
		</tr>
		<tr>
			<th>지원수정날짜</th>
			<td>${apply.applyUpdateDate}</td>
		</tr>
		<tr>
			<th>지원자총점평균</th>
			<td>${apply.applyTotal}</td>
		</tr>
		<tr>
			<th>지원결과</th>
			<td>${apply.applyResult}</td>
		</tr>
		<tr>
			<th>지원결과날짜</th>
			<td>${apply.applyResultDate}</td>
		</tr>
	</table>
</div>
<a href="${pageContext.request.contextPath}/apply"><button class="btn btn-primary">목록</button></a>
<%-- <a href="${pageContext.request.contextPath}/apply/form?applySn=${apply.applySn}"><button class="btn btn-secondary">수정하기</button></a> --%>
<a href="${pageContext.request.contextPath}/apply/edit?applySn=${apply.applySn}"><button class="btn btn-secondary">수정하기</button></a>
<form:form modelAttribute="apply" action="${pageContext.request.contextPath}/apply/${apply.applySn}" method="delete" style="display: inline-block;">
	<button type="submit" class="btn btn-danger">삭제하기</button>
</form:form>