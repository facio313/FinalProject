<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form modelAttribute="resume" method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label for="job-title">이력서제목</label>
		<form:input path="resumeTitle" type="text" cssClass="form-control" />
		<form:errors path="resumeTitle" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">이력서이름</label>
		<form:input path="resumeName" type="text" cssClass="form-control" />
		<form:errors path="resumeName" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">이력서성별</label>
		<form:input path="resumeGender" type="text" cssClass="form-control" />
		<form:errors path="resumeGender" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">이력서기본주소</label>
		<form:input path="resumeAddr1" type="text" cssClass="form-control" />
		<form:errors path="resumeAddr1" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">이력서이메일</label>
		<form:input path="resumeEmail" type="text" cssClass="form-control" />
		<form:errors path="resumeEmail" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">이력서전화번호</label>
		<form:input path="resumeTel" type="text" cssClass="form-control" />
		<form:errors path="resumeTel" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<input type="submit" value="저장" /> 
		<input type="reset" value="취소" />		
	</div>
</form:form>