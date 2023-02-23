<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 20.      최경수            최초작성
* 2023. 2. 21.      최경수            나한테 왜 그래...
* 2023. 2. 22.      최경수            선형진행도, 프로그레스바 자동화
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="<%=request.getContextPath()%>/resources/cks/processAnnoList.css" rel="stylesheet" />

<c:choose>
	<c:when test="${not empty list}">
		<div class="courses-container">
		
			<c:forEach items="${list}" var="anno">
				<div class="course">
					<div class="course-preview">
						<h6 style="color: white;">${anno.company.cmpName}</h6>
						<h2 style="color: white;" onclick='location.href="${pageContext.request.contextPath}/announcement/view/${anno.annoNo}"'>${anno.annoTitle}</h2>
						<a href="${pageContext.request.contextPath}/announcement/view/${anno.annoNo}">공고 내용 보러가기<i class="fas fa-chevron-right"></i></a>
					</div>
					<div class="course-info">
						<div class="progress-container">
							<div class="progress"></div>
							<div class="progressAfter" style="width: ${anno.percent}%"></div>
							<span class="progress-text">${anno.annoStartdate} ~ ${anno.annoEnddate}</span>
						</div>
						<h6>[수습기간] ${anno.annoProbation}</h6>
						<h2	>[연봉] ${anno.annoSalary}</h2>
						<div class="topContainer" style="position: absolute; width: 94%; height: auto;">
						
							<div class="tree-container">
								<details>
									<summary class="topSummary" style="height: 40px; padding: 5px; font-size: 20px; font-weight: 600;">${anno.annoTitle} 구조 보기</summary>
									<div class="folder">
										<p>[시작날짜] ${anno.annoStartdate}</p>
										<p>[종료날짜] ${anno.annoEnddate}</p>
										<c:forEach items="${anno.detailList}" var="detail">
											<details open="open">
												<summary style="height: 40px; padding: 5px;">${detail.daTask} / ${detail.daNo}</summary>
												<div class="folder">
													<p>[모집인원] ${detail.daCount}</p>
													<p>[모집분야] ${detail.daFd}</p>
													<c:choose>
														<c:when test="${not empty detail.processList[0].processCodeName}">
															<c:forEach items="${detail.processList}" var="process">
																<details>
																	<summary style="height: 40px; padding: 5px; color: black; background: #EFEFEF;">${process.processCodeName}</summary>
																	<div class="folder">
																		<p>${process.processStartDate}</p>
																		<p>${process.processEndDate}</p>
																	</div>
																</details>
															</c:forEach>
														</c:when>
														<c:otherwise>
															<details>
																<summary style="height: 40px; padding: 5px; color: black; background: #EFEFEF;">등록된 채용과정이 없습니다.</summary>
																<div class="folder">
																	<a href="${pageContext.request.contextPath}/process/form?daNo=${detail.daNo}"><p>채용과정 등록하러 가기</p></a>
																</div>
															</details>														
														</c:otherwise>
													</c:choose>
												</div>
											</details>
										</c:forEach>
									</div>
								</details>
							</div>						
						
							<div>
								<span>${anno.welfareList[0].welfareCode}</span> / <span>${anno.memId}</span><br>
								<span>${anno.industryCode}</span> / <span>${anno.eduCode}</span><br>
								<span>${anno.annoNo}</span> / <span>${anno.annoContent}</span><br>
								<span>${anno.detailList[0].daNo}</span> / <span>${anno.detailList[1].daNo}</span> / <span>${anno.detailList[2].daNo}</span>
							</div>
						</div>
						<button class="listBtn" style="width: 25%;" onclick='location.href="${pageContext.request.contextPath}/process/${anno.annoNo}"'>채용과정 보러가기</button>
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
$('.topSummary').on('click', function(){
	let courseInfo = $(this).parents('.course-info');
	let coursePreview = courseInfo.siblings('.course-preview');
	let course = $(this).parents('.course');
	console.log(course.css('overflow'));
	
	if (course.css('overflow') == 'hidden'){
		course.css('height', '700px').css('overflow', 'auto');
	} else if (course.css('overflow') == 'auto') {
		course.css('height', '350px').css('overflow', 'hidden');
	}
});
</script>



<!-- =anno= -->
<%-- ${anno.annoNo} --%>
<%-- ${anno.cmpId} --%>
<%-- ${anno.memId} --%>
<%-- ${anno.annoTitle} --%>
<%-- ${anno.annoContent} --%>
<%-- ${anno.annoStartdate} --%>
<%-- ${anno.annoEnddate} --%>
<%-- ${anno.annoDate} --%>
<%-- ${anno.annoStateCd} --%>
<%-- ${anno.annoProbation} --%>
<%-- ${anno.annoSalary} --%>
<%-- ${anno.industryName} --%>
<%-- ${anno.eduName} --%>

<!-- =company= -->
<%-- ${anno.company.cmpId} --%>
<%-- ${anno.company.cmpNo} --%>
<%-- ${anno.company.cmpName} --%>
<%-- ${anno.company.cmpAddr1} --%>
<%-- ${anno.company.cmpAddr2} --%>
<%-- ${anno.company.cmpZip} --%>
<%-- ${anno.company.cmpPhone} --%>
<%-- ${anno.company.cmpEmail} --%>
<%-- ${anno.company.cmpUrl} --%>
<%-- ${anno.company.cmpMbName} --%>
<%-- ${anno.company.cmpContent} --%>


<!-- =detail= -->
<%-- ${anno.detailList[0].annoNo} --%>
<%-- ${anno.detailList[0].daNo} --%>
<%-- ${anno.detailList[0].daFd} --%>
<%-- ${anno.detailList[0].daCount} --%>
<%-- ${anno.detailList[0].daTask} --%>
<%-- ${anno.detailList[0].daDepartment} --%>
<%-- ${anno.detailList[0].daCondition} --%>
<%-- ${anno.detailList[0].daPrefer} --%>
<%-- ${anno.detailList[0].regionName} --%>
<%-- ${anno.detailList[0].empltypeName} --%>
<%-- ${anno.detailList[0].jobName} --%>
<%-- ${anno.detailList[0].careerName} --%>
<%-- ${anno.detailList[0].positionName} --%>

<!-- =process= -->
<%-- ${anno.detailList[0].processList[0].daNo} --%>
<%-- ${anno.detailList[0].processList[0].processCodeName} --%>
<%-- ${anno.detailList[0].processList[0].processStartDate} --%>
<%-- ${anno.detailList[0].processList[0].processEndDate} --%>
<%-- ${anno.detailList[0].processList[0].processLimit} --%>
<%-- ${anno.detailList[0].processList[0].processWay} --%>
<%-- ${anno.detailList[0].processList[0].processScore} --%>

<!-- =detail= -->
<%-- ${anno.detailList[0].processList[1].daNo} --%>
<%-- ${anno.detailList[0].processList[1].processCodeName} --%>
<%-- ${anno.detailList[0].processList[1].processStartDate} --%>
<%-- ${anno.detailList[0].processList[1].processEndDate} --%>
<%-- ${anno.detailList[0].processList[1].processLimit} --%>
<%-- ${anno.detailList[0].processList[1].processWay} --%>
<%-- ${anno.detailList[0].processList[1].processScore} --%>

<%-- ${anno.detailList[0].processList[2].daNo} --%>
<%-- ${anno.detailList[0].processList[2].processCodeName} --%>
<%-- ${anno.detailList[0].processList[2].processStartDate} --%>
<%-- ${anno.detailList[0].processList[2].processEndDate} --%>
<%-- ${anno.detailList[0].processList[2].processLimit} --%>
<%-- ${anno.detailList[0].processList[2].processWay} --%>
<%-- ${anno.detailList[0].processList[2].processScore} --%>

<%-- ${anno.welfareList[0].welfareName} --%>
<%-- ${anno.welfareList[0].refName} --%>

<%-- ${anno.company.cmpId} --%>
<%-- ${anno.company.cmpNo} --%>
<%-- ${anno.company.cmpName} --%>
<%-- ${anno.company.cmpAddr1} --%>
<%-- ${anno.company.cmpAddr2} --%>
<%-- ${anno.company.cmpZip} --%>
<%-- ${anno.company.cmpPhone} --%>
<%-- ${anno.company.cmpEmail} --%>
<%-- ${anno.company.cmpUrl} --%>
<%-- ${anno.company.cmpMbName} --%>
<%-- ${anno.company.cmpContent} --%>


