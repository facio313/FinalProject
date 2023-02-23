<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 20.      최경수            최초작성
* 2023. 2. 22.      최경수            선형진행도, 프로그레스바 자동화
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<link href="<%=request.getContextPath()%>/resources/cks/processDaView.css" rel="stylesheet"/>

<div style="margin-top: 70px; padding-left: 50px; padding-right: 50px;">
	<ul class="responsive-table" style="margin-bottom: 100px; padding-left: 50px; padding-right: 50px;">
	  <li class="table-header">
	    <div class="col col-5">${anno.annoTitle}</div>
	  </li>
	  <li class="table-row">
	    <div class="col col-9">
	    	<table class="table table-border">
				<tr>
					<th>법인명</th>
					<td colspan="3">${anno.company.cmpName}</td>
					<th>법인등록번호</th>
					<td>${anno.company.cmpNo}</td>
				</tr>
				<tr>
					<th>회사대표자성명</th>
					<td colspan="3">${anno.company.cmpRepName}</td>
					<th>사업자등록번호</th>
					<td>${anno.company.cmpBsnsNo}</td>
				</tr>
				<tr>
					<th>기본주소</th>
					<td>${anno.company.cmpAddr1}</td>
					<th>상세주소</th>
					<td>${anno.company.cmpAddr2}</td>
					<th>우편번호</th>
					<td>${anno.company.cmpZip}</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${anno.company.cmpPhone}</td>
					<th>이메일</th>
					<td>${anno.company.cmpEmail}</td>
					<th>사이트</th>
					<td>${anno.company.cmpUrl}</td>
				</tr>
				<tr>
					<th>회사설립일자</th>
					<td>${anno.company.cmpEstblDate}</td>
					<th>회사형태</th>
					<td colspan="3">${anno.company.cmpSmenp}</td>
				</tr>
				<tr>
				</tr>
				<tr>
					<th>회사종업원수</th>
					<td>${anno.company.cmpEmpNo}</td>
					<th>종업원평균근속기간내용</th>
					<td>${anno.company.cmpAvrWork}</td>
					<th>회사1인평균급여금액</th>
					<td>${anno.company.cmpAvrSalary}</td>
				</tr>
				<tr>
					<th>회사주요사업명</th>
					<td>${anno.company.cmpMbName}</td>
					<th>기업소개</th>
					<td colspan="3">${anno.company.cmpContent}</td>
				</tr>
	    	</table>
	    </div>
	    <div>
	    	<img src="${pageContext.request.contextPath}/resources/images/hero_1.jpg" style="width:100%; height: 100%;"/>
	    </div>
	  </li>
	  <li class="table-row">
		  <div class="col col-12">
			<table class="table table-border">
				<tr>
					<th>제목</th>
					<td colspan="3">${anno.annoTitle}</td>
					<th>공고글상태</th>
					<td>${anno.annoStateCd}</td>
					<th>작성일</th>
					<td>${anno.annoDate}</td>
				</tr>
				<tr>	
					<th>근무환경</th>
					<td colspan="3">${anno.annoWorkenv}</td>
					<th>수습기간</th>
					<td>${anno.annoProbation}</td>
					<th>연봉급여</th>
					<td>${anno.annoSalary}</td>
				</tr>
				<tr>				
					<th>공고시작날짜</th>
					<td colspan="3">${anno.annoStartdate}</td>
					<th>공고종료날짜</th>
					<td colspan="3">${anno.annoEnddate}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="7">${anno.annoContent}</td>
				</tr>
			</table>
		  </div>	  
	  </li>
	</ul>
</div>

<div style="position: relative; margin-right: 10px; background-color: rgb(4, 87, 56); left: -20px; width: 90%; height: 100px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
	<span style="position: absolute; left: 20px; top: 7px; font-size: 40px; font-weight: 800; color: white;">세부공고 목록</span>
	<span style="position: absolute; left: 20px; top: 60px; font-size: 15px; font-weight: 600; color: white;">[채용과정 현황]</span>
</div>
<c:choose>
	<c:when test="${not empty anno.detailList}">
		<div class="courses-container">
			<c:forEach items="${anno.detailList}" var="detail">
				<div class="course">
					<div class="course-preview">
					
						<h6 style="color: white;">${detail.daDepartment}</h6>
						<h2 style="color: white;">${detail.daFd}</h2>
						<h6 style="color: white;">${detail.daPrefer}</h6>
						<h6 style="color: white;">${detail.empltypeName}</h6>
						<h6 style="color: white;">${jobName}</h6>
						<h6 style="color: white;">${regionName}</h6>
						
						<a href="${pageContext.request.contextPath}/announcement/view/${anno.annoNo}">공고 내용 보러가기<i class="fas fa-chevron-right"></i></a>
						
					</div>
					<div class="course-info">
					
						<div class="progress-container">
							<div class="progress"></div>
							<div class="progressAfter" style="width: ${detail.percent}%;"></div>
							<c:if test="${not empty detail.processList[0].processCodeId}">
								<span class="progress-text"">
									<c:forEach items="${detail.processList}" var="process" varStatus="status">
										<c:if test="${status.first}">${fn:substring(process.processStartDate, 0, 10)} ~ </c:if>
										<c:if test="${status.last}">${fn:substring(process.processEndDate, 0, 10)}</c:if>
									</c:forEach>
								</span>
							</c:if>
							<c:if test="${empty detail.processList[0].processCodeId}">
								<span class="progress-text">등록된 채용과정 없음</span>
							</c:if>
						</div>
						
						<h4 style="color: gainsboro; font-size: 1.25rem;">[<c:forEach items="${detail.positionList}" var="position" varStatus="status">${position.positionName}<c:if test="${!status.last}"> / </c:if></c:forEach>]</h4>
						<a style="text-decoration: none;" href="${pageContext.request.contextPath}/process/${detail.processList[0].daNo}"><h2>${detail.daTask}</h2></a>
						<h5 style="color: gray; font-size: 1rem;"><c:forTokens items="${detail.careerNames}" delims=", " var="career">${career}</c:forTokens></h5>
						
						
						<div style="position: absolute; width: 94%; height: 50%;">
						
							<div class="pline-container">
							  	<div class="pline">
							    	<div class="percent"></div>
							  	</div>
							  	<div class="steps">
							  		<c:forEach items="${detail.processList}" var="process" varStatus="status">
							  			<c:set var="start" value="${fn:substring(process.processStartDate, 0, 10)}"/>
							  			<c:set var="sd" value="${fn:replace(start, '-', '')}"/>
							  			<c:set var="end" value="${fn:substring(process.processEndDate, 0, 10)}"/>
							  			<c:set var="ed" value="${fn:replace(end, '-', '')}"/>
							    		<div class="step <c:if test="${sd le now and now le ed or ed lt now}">selected</c:if> <c:if test="${ed lt now }">completed</c:if>" id="${status.index}"></div>
							    	</c:forEach>
							  	</div>
						  	</div>						  	
						  	
						  	<div class="process-container">
								<c:forEach items="${detail.processList}" var="process" >
							  		<div class="process">
							  			<h5>${process.processCodeName}</h5>
							  			<h6 style="font-size: 10px;">${process.processStartDate}</h6>
							  			<h6 style="font-size: 10px;">${process.processEndDate}</h6>
							  		</div>
								</c:forEach>
						  	</div>
							
						</div>
						
						<div>
							<span style="position: absolute; top: 87%; font-size: 10px;">
								* 여기다가는 뭔가 긴 글을 적는 것이 좋을 것 같은데 그런 것이 세부 공고에 어떤 것들이 있을까? 얼마나 더 길게 적어야 할까...뭔가 제약사항 등
							</span>
						</div>
					  	
						<c:if test="${not empty detail.processList[0].processCodeId}">
							<button class="listBtn" style="width: 25%;" onclick='location.href="${pageContext.request.contextPath}/process/${anno.annoNo}/${detail.daNo}"'>세부 채용과정 보러가기</button>
						</c:if>
						<c:if test="${empty detail.processList[0].processCodeId}">
							<button class="listBtn" style="width: 25%;" onclick='location.href="${pageContext.request.contextPath}/process/form?daNo=${detail.daNo}"'>채용과정 등록하기</button>
						</c:if>
						
					</div>
				</div>
			</c:forEach>
		</div>
	</c:when>
	<c:otherwise>
		<div class="courses-container">
			<div class="course">
				<div class="course-preview">
					<h6 style="color: white;">회사명</h6>
					<h2 style="color: white;">공고이름</h2>
					<a href="#">공고 내용 보러가기<i class="fas fa-chevron-right"></i></a>
				</div>
				<div class="course-info">
					<div class="progress-container">
						<div class="progress"></div>
						<span class="progress-text">3/8 현재 채용과정 </span>
					</div>
					<h6>직급</h6>
					<h2>직무명</h2>
					<button class="listBtn" style="width: 25%;">채용과정 보러가기</button>
				</div>
			</div>
		</div>
	</c:otherwise>
</c:choose>


<script>
	$('th').css({"color":"white", "background-color":"#95A5A6"});
</script>

<script>
$(".step").on("click", function(event){
	let steps = $(this).parent();
// 	let last = $(".steps").find("div:last-child").attr("id");
	let last = steps.find("div:last-child").attr("id");
	console.log(last);
	let howMuch = 100 / last;
	
	
	let id = $(this).attr("id");
// 	let percent = $(".percent");
	let percent = $(event.target).parents(".pline-container").children(".pline").children(".percent");
	let thisMuch = howMuch * id;
	
	//초기화
	for (let i = 0; i < steps.length; i++) {
		$("#" + i).removeClass("selected").removeClass("completed");
		percent.css("width", thisMuch + "%");
	}
	
	//다시
	for (let i = 0; i < steps.length; i++) {
		$("#" + i).addClass("selected").addClass("completed");
		if (id == i) {
			return;
		}
	}
	
	percent.css("width", thisMuch+"%");	
});


let stepss = $(".steps");
for (let i = 0; i < stepss.length; i++) {
	let lastOne = $(stepss[i]).find("div:last-child").attr("id");
	let howMuchIs = 100 / lastOne;
	let nowProcess = $(stepss[i]).children(".step").filter(".completed").next(".selected").not(".completed");
	let percentLine = $(stepss[i]).parent(".pline-container").children(".pline").children(".percent");
	percentLine.css("width", (howMuchIs * nowProcess.attr("id")) + "%");
}
</script>


