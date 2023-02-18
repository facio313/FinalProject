<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
	
<form:form modelAttribute="myintro" action="${pageContext.request.contextPath}/myintro/${myintro.myintroSn}" method="put" enctype="multipart/form-data">
	<div class="form-group">
		<label for="job-title">내 자기소개서 제목</label>
		<form:input path="myintroTitle" type="text" cssClass="form-control" />
		<form:errors path="myintroTitle" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 성장과정</label>
		<form:input path="myintroGrowth" type="text" cssClass="form-control" />
		<form:errors path="myintroGrowth" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 성격 장단점</label>
		<form:input path="myintroPersonality" type="text" cssClass="form-control" />
		<form:errors path="myintroPersonality" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 학창시절</label>
		<form:input path="myintroSchoolday" type="text" cssClass="form-control" />
		<form:errors path="myintroSchoolday" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 직무경험</label>
		<form:input path="myintroJob" type="text" cssClass="form-control" />
		<form:errors path="myintroJob" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 지원동기</label>
		<form:input path="myintroMotive" type="text" cssClass="form-control" />
		<form:errors path="myintroMotive" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 입사 후 포부</label>
		<form:input path="myintroAspiration" type="text" cssClass="form-control" />
		<form:errors path="myintroAspiration" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 가족소개</label>
		<form:input path="myintroFamily" type="text" cssClass="form-control" />
		<form:errors path="myintroFamily" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 교외활동</label>
		<form:input path="myintroSubactivity" type="text" cssClass="form-control" />
		<form:errors path="myintroSubactivity" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 전공선택</label>
		<form:input path="myintroMajor" type="text" cssClass="form-control" />
		<form:errors path="myintroMajor" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">생활진로</label>
		<form:input path="myintroCourse" type="text" cssClass="form-control" />
		<form:errors path="myintroCourse" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 희망업무</label>
		<form:input path="myintroObjective" type="text" cssClass="form-control" />
		<form:errors path="myintroObjective" element="span"
			cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 동아리</label>
		<form:input path="myintroClub" type="text" cssClass="form-control" />
		<form:errors path="myintroClub" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 봉사활동</label>
		<form:input path="myintroVolunteer" type="text" cssClass="form-control" />
		<form:errors path="myintroVolunteer" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 추가항목1</label>
		<form:input path="myintroAdd1" type="text" cssClass="form-control" />
		<form:errors path="myintroAdd1" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 추가항목2</label>
		<form:input path="myintroAdd2" type="text" cssClass="form-control" />
		<form:errors path="myintroAdd2" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<label for="job-title">내 추가항목3</label>
		<form:input path="myintroAdd3" type="text" cssClass="form-control" />
		<form:errors path="myintroAdd3" element="span" cssClass="text-danger" />
	</div>
	<div class="form-group">
		<input type="submit" value="저장" /> 
		<input type="reset" value="취소" />		
	</div>
</form:form>