<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<table class="table table-bordered">
<tr>
	<th>이력서제목</th>
	<td>${resume.resumeTitle}</td>
</tr>

<tr>
	<th>이력서이름</th>
	<td>${resume.resumeName}</td>
</tr>
<tr>
	<th>이력서성별</th>
	<td>${resume.resumeGender}</td>
</tr>
<tr>
	<th>이력서기본주소</th>
	<td>${resume.resumeAddr1}</td>
</tr>
<tr>
	<th>이력서이메일</th>
	<td>${resume.resumeEmail}</td>
</tr>
<tr>
	<th>이력서전화번호</th>
	<td>${resume.resumeTel}</td>
</tr>
<tr>
	<th>작성날짜</th>
	<td>${resume.resumeInsertDate}</td>
</tr>
</table>
<a href="${pageContext.request.contextPath}/resume"><button class="btn btn-primary">목록</button></a>
<a href="${pageContext.request.contextPath}/resume/update?actSn=${resume.resumeSn}"><button class="btn btn-secondary">수정하기</button></a>
<form:form modelAttribute="resume" action="${pageContext.request.contextPath}/resume/delete" method="post" style="display: inline-block;">
	<input name="resumeSn" value="${resume.resumeSn}" hidden/>
	<button type="submit" class="btn btn-danger">삭제하기</button>
</form:form>