<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 5.      최경수            최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>



<form:form modelAttribute="resume" method="post" enctype="multipart/form-data">
<!--인적사항 -->
	<h1>${resume.resumeNo}</h1>
	<h2>기본정보</h2>
	<table class="table table-bordered">
		<tr>
			<th>프로필</th>
			<td>
				<img src='${pageContext.request.contextPath}${resume.seeker.memProfile}' style="width: 120px;height: 120px;"/>
				<form:input path="seeker.memProfile" cssClass="form-control"/>
				<form:errors path="seeker.memId" element="span" cssClass="text-danger" />
			</td>
		</tr>
		<tr>
			<th>아이디</th>
			<td>
				<form:input path="seeker.memId" cssClass="form-control"/>
				<form:errors path="seeker.memId" element="span" cssClass="text-danger" />
			</td>
		</tr>
		<tr>
			<th>이름</th>
			<td>
				<form:input path="seeker.memName" cssClass="form-control"/>
				<form:errors path="seeker.memName" element="span" cssClass="text-danger" />
			</td>			
			</td>
		</tr>
		<tr>
			<th>성별</th>
			<td>
				<form:input path="seeker.memGender" cssClass="form-control"/>
				<form:errors path="seeker.memGender" element="span" cssClass="text-danger" />
			</td>			
			</td>
		</tr>
		<tr>
			<th>생년월일</th>
			<td>
				<form:input path="seeker.memBirth" cssClass="form-control"/>
				<form:errors path="seeker.memBirth" element="span" cssClass="text-danger" />
			</td>			
			</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>
				<form:input path="seeker.memEmail" cssClass="form-control"/>
				<form:errors path="seeker.memEmail" element="span" cssClass="text-danger" />
			</td>			
			</td>
		</tr>
		<tr>
			<th>전화번호</th>
			<td>
				<form:input path="seeker.memTel" cssClass="form-control"/>
				<form:errors path="seeker.memTel" element="span" cssClass="text-danger" />
			</td>			
			</td>
		</tr>
		<tr>
			<th>주소</th>
			<td>
				<form:input path="seeker.memAddr1" cssClass="form-control"/>
				<form:errors path="seeker.memAddr1" element="span" cssClass="text-danger" />
			</td>			
			</td>
		</tr>
	</table>
<!--학력 -->
	<h1>학력사항</h1>
	<table>
<!-- 		<tr> -->
<!-- 			<th></th> -->
<!-- 			<td> -->
<%-- 				<form:input path=""  cssClass="form-control"  /> --%>
<%-- 				<form:errors path="" element="span" cssClass="text-danger" /> --%>
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<th></th> -->
<!-- 			<td> -->
<%-- 				<form:input path=""  cssClass="form-control"  /> --%>
<%-- 				<form:errors path="" element="span" cssClass="text-danger" /> --%>
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 			<tr> -->
<!-- 			<th></th> -->
<!-- 			<td> -->
<%-- 				<form:input path=""  cssClass="form-control"  /> --%>
<%-- 				<form:errors path="" element="span" cssClass="text-danger" /> --%>
<!-- 			</td> -->
<!-- 		</tr> -->
<!-- 		<tr> -->
<!-- 			<th></th> -->
<!-- 			<td> -->
<%-- 				<form:input path=""  cssClass="form-control"  /> --%>
<%-- 				<form:errors path="" element="span" cssClass="text-danger" /> --%>
<!-- 			</td> -->
<!-- 		</tr> -->
		<tr>
			<td colspan="2">
				<input type="submit" value="저장" /> 
				<input type="reset" value="취소" />
			</td>
		</tr>
	</table>
</form:form>	