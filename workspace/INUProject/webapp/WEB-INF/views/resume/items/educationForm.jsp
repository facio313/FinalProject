<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<form:form modelAttribute="education" method="post" enctype="multipart/form-data">
	<div class="form-group">
		<label for="job-title">학교명</label>
		<form:input path="eduName" type="text" cssClass="form-control" />
		<form:errors path="eduName" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">전공분류</label>
		<form:input path="eduDepartment" type="text" cssClass="form-control" />
		<form:errors path="eduDepartment" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">전공</label>
		<form:input path="eduMajor" type="text" cssClass="form-control" />
		<form:errors path="eduMajor" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">입학일</label>
		<form:input path="eduEntered" type="date" cssClass="form-control" />
		<form:errors path="eduEntered" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">졸업일,중퇴일,자퇴일</label>
		<form:input path="eduGraduated" type="date" cssClass="form-control" />
		<form:errors path="eduGraduated" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">상태</label>
		<form:input path="eduStatus" type="text" cssClass="form-control" />
		<form:errors path="eduStatus" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">학점</label>
		<form:input path="eduScore" type="number" cssClass="form-control" step="0.01"/>
		<form:errors path="eduScore" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">기준학점</label>
		<form:input path="eduStandard" type="number" cssClass="form-control" step="0.01"/>
		<form:errors path="eduStandard" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<input type="submit" value="저장" /> 
		<input type="reset" value="취소" />		
	</div>
</form:form>