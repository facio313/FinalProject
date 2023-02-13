<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<h1>이력서 수정put</h1>
<form:form modelAttribute="resume" action="${pageContext.request.contextPath}/resume/${resume.resumeSn}/update" method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label for="job-title">제목</label>
		<form:input path="resumeTitle" type="text" cssClass="form-control" />
		<form:errors path="resumeTitle" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">이름</label>
		<form:input path="resumeName" type="text" cssClass="form-control" />
		<form:errors path="resumeName" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">성별</label>
		<form:input path="resumeGender" type="text" cssClass="form-control" />
		<form:errors path="resumeGender" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">기본주소</label>
		<form:input path="resumeAddr1" type="text" cssClass="form-control" />
		<form:errors path="resumeAddr1" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">이메일</label>
		<form:input path="resumeEmail" type="text" cssClass="form-control" />
		<form:errors path="resumeEmail" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">전화번호</label>
		<form:input path="resumeTel" type="text" cssClass="form-control" />
		<form:errors path="resumeTel" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<input type="submit" value="수정 후 세부 항목 작성하러 가기" /> 
		<input type="reset" value="취소" />		
	</div>
</form:form>