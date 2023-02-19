<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/help.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/components.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/layout.css">

<div>
	<input type="radio" class="btn-check" name="options" id="option1" autocomplete="off" checked>
	<label class="btn btn-primary" for="option1">입사지원서</label>
	
	<input type="radio" class="btn-check" name="options" id="option2" autocomplete="off">
	<label class="btn btn-primary" for="option2">자기소개서</label>
	
	<input type="radio" class="btn-check" name="options" id="option3" autocomplete="off">
	<label class="btn btn-primary" for="option3">필기시험</label>
	
	<input type="radio" class="btn-check" name="options" id="option4" autocomplete="off">
	<label class="btn btn-primary" for="option4">역량평가</label>
	
	<input type="radio" class="btn-check" name="options" id="option5" autocomplete="off">
	<label class="btn btn-primary" for="option5">토론면접</label>
	
	<input type="radio" class="btn-check" name="options" id="option6" autocomplete="off">
	<label class="btn btn-primary" for="option6">실무면접</label>
	
	<input type="radio" class="btn-check" name="options" id="option7" autocomplete="off">
	<label class="btn btn-primary" for="option7">인턴십</label>
	
	<input type="radio" class="btn-check" name="options" id="option8" autocomplete="off">
	<label class="btn btn-primary" for="option8">임원면접</label>
</div>
<div>

</div>