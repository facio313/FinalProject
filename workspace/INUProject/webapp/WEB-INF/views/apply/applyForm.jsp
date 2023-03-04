<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 14.    최경수     최초작성
* 2023. 2. 15.    최경수     공고 추가
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<h1>지원하기</h1>
<div>
	<h1>공고</h1>
	<table class="table table-bordered">
		<tr>
			<th>제목</th>
			<td>${anno.annoTitle}</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${anno.annoContent}</td>
		</tr>
		<tr>
			<th>공고시작날짜</th>
			<td>${anno.annoStartdate}</td>
		</tr>
		<tr>
			<th>공고종료날짜</th>
			<td>${anno.annoEnddate}</td>
		</tr>
		<tr>
			<th>작성일</th>
			<td>${anno.annoDate}</td>
		</tr>
		<tr>
			<th>공고글상태</th>
			<td>${anno.annoStateCd}</td>
		</tr>
		<tr>
			<th>근무환경</th>
			<td>${anno.annoWorkenv}</td>
		</tr>
		<tr>
			<th>수습기간</th>
			<td>${anno.annoProbation}</td>
		</tr>
		<tr>
			<th>연봉급여</th>
			<td>${anno.annoSalary}</td>
		</tr>
		<tr>
			<th>업종</th>
			<td>${anno.industryName}</td>
		</tr>
		<tr>
			<th>공통학력</th>
			<td>${anno.eduName}</td>
		</tr>
	</table>
</div>
<div>
	<h1>세부공고</h1>
	<table class="table table-bordered">
		<tbody>
			<c:set var="detailList" value="${anno.detailList}"/>
			<c:choose>
				<c:when test="${not empty detailList}">
					<c:forEach items="${detailList}" var="detail">
						<tr>
							<th>모집분야</th>
							<td>${detail.daFd}</td>
						</tr>
						<tr>
							<th>모집인원</th>
							<td>${detail.daCount}</td>
						</tr>
						<tr>
							<th>담당업무</th>
							<td>${detail.daTask}</td>
						</tr>
						<tr>
							<th>근무부서</th>
							<td>${detail.daDepartment}</td>
						</tr>
						<tr>
							<th>지원조건</th>
							<td>${detail.daCondition}</td>
						</tr>
						<tr>
							<th>우대사항</th>
							<td>${detail.daPrefer}</td>
						</tr>
						<tr>
							<th>근무요일</th>
							<td>${detail.daWorkday}</td>
						</tr>
						<tr>
							<th>근무시간</th>
							<td>${detail.daWorktime}</td>
						</tr>
<!-- 						<tr> -->
<!-- 							<th>경력</th> -->
<%-- 							<td><c:forEach items="${detail.careerName}" var="career"> --%>
<%-- 									· ${career}  --%>
<%-- 							</c:forEach></td> --%>
<!-- 						</tr> -->
						<tr>
							<th>경력년수</th>
							<td>${detail.daCarYeer}</td>
						</tr>
						<tr>
							<th>지역</th>
							<td>${detail.regionName}</td>
						</tr>
						<tr>
							<th>고용형태</th>
							<td>${detail.empltypeName}</td>
						</tr>
						<tr>
							<th>직무코드</th>
							<td>${detail.jobName}</td>
						</tr>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr><td colspan="7"> 공고 없음. </td></tr>
				</c:otherwise>
			</c:choose>
		</tbody>
	</table>
</div>
<div>
	<form:form modelAttribute="apply" action="${pageContext.request.contextPath}/apply" method="post" enctype="multipart/form-data">
		<input name="annoNo" value="${anno.annoNo}" hidden/>
		<div class="form-group">
			<label for="job-title">세부공고</label>
			<form:select path="daNo" cssClass="form-control" >
				<option value="">세부공고선택</option>
				<c:forEach items="${anno.detailList }" var="detail">
					<option value="${detail.daNo}">${detail.daNo}</option>
				</c:forEach>
			</form:select>
			<form:errors path="daNo" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">내 이력서</label>
			<form:select path="resumeSn" cssClass="form-control">
				<option value="">이력서 선택</option>
<%-- 				<form:options item="${resumeList}" itemLabel="resumeTitle" itemValues="resumeSn"/> --%>
				<c:forEach items="${resumeList}" var="resume">
					<option value="${resume.resumeSn}">${resume.resumeTitle}</option>
				</c:forEach>
			</form:select>
			<form:errors path="resumeSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">내 자기소개서</label>
			<form:select path="myintroSn" cssClass="form-control">
				<option value="">자기소개서 선택</option>
				<c:forEach items="${myintroList}" var="myintro">
					<option value="${myintro.myintroSn}">${myintro.myintroTitle}</option>
				</c:forEach>
			</form:select>
			<form:errors path="myintroSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<input type="submit" value="저장" /> 
			<input type="reset" value="취소" />		
		</div>
	</form:form>
</div>
<!-- 
<input id="applySn" value="${apply.applySn}">
<input id="daNo" value="${apply.daNo}">
<input id="resumeSn" value="${apply.resumeSn}">
<input id="myintroSn" value="${apply.myintroSn}">
 -->
<script>
// let applySn = $("#applySn").val();
// let form = $("#form");

// if (applySn != "" || applySn != null) {
// 	form.attr("action","${pageContext.request.contextPath}/apply/" + applySn).attr("method", "put");
// }
</script>