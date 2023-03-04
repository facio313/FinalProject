<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 5.      최경수            최초작성
* 2023. 2. 24.     최경수            틀 다시 맞추기
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

		<!-- 숫자 애니메이션 -->
		<script src="<%=request.getContextPath()%>/resources/js/isotope.pkgd.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/stickyfill.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/jquery.waypoints.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/jquery.animateNumber.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/custom.js"></script>

      <div class="container" style="position: relative; top: -190px; left: 250px; scale: 0.8;">
        <div class="row pb-0 block__19738 section-counter" style="position: absolute; left: 30%; width: 70%;">

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <strong class="number" data-number="11">0</strong>
            </div>
            <span class="caption">총 항목 개수</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <strong class="number" data-number="3">0</strong>
            </div>
            <span class="caption">오늘 업데이트한 항목 개수</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <strong class="number" data-number="7">0</strong>
            </div>
            <span class="caption">미완성된 항목 개수</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <strong class="number" data-number="550">0</strong>
            </div>
            <span class="caption">내 이력서 조회수</span>
          </div>
        </div>
      </div>

<!-- 이력서 -->  
<div class="top shadow-sm" style="height: 70px;">
	<h1>이력서</h1>
</div>
<div class="down" style="height: auto;">
	<a href="${pageContext.request.contextPath}/resume/form"><h1>+</h1></a>
	<table class="table hover table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>제목</th>
				<th>작성일</th>
			</tr>
		</thead>
		<tbody id="resumeBody">
			
		</tbody>
		<tfoot>
		
		</tfoot>
	</table>
</div>



<!-- 그리드 -->
<div class="grid-stack">
    <div class="grid-stack-item"  gs-x="0" gs-y="0" gs-w="6" gs-h="3">
        <div class="grid-stack-item-content">
	       	<!-- 학력 -->
	        <div class="top shadow-sm" style="height: 70px;">
	        	<h1>학력</h1>
	        </div>
        	<div class="down" style="height: 100%;">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>번호</th>
							<th>학교명</th>
							<th>전공</th>
							<th>입학일</th>
							<th>졸업일</th>
							<th>상태</th>
						</tr>
					</thead>
					<tbody id="eduBody">
					</tbody>
					<tfoot>
						<a href="${pageContext.request.contextPath}/education/insert"><h1>+</h1></a>
					</tfoot>
				</table>        
			</div>
		</div>
    </div>
    <div class="grid-stack-item"  gs-x="6" gs-y="0" gs-w="6" gs-h="3">
        <div class="grid-stack-item-content">
        <!-- 경력 -->
     	    <div class="top shadow-sm" style="height: 70px;">
	        	<h1>경력</h1>
	        </div>
        	<div class="down" style="height: 100%;">
		        <table class="table table-bordered">
					<thead>
						<tr>
							<th>번호</th>
							<th>직장명</th>
							<th>직무</th>
							<th>업종</th>
						</tr>
					</thead>
					<tbody id="careerBody">
					</tbody>
					<tfoot>
						<a href="${pageContext.request.contextPath}/career/insert"><h1>+</h1></a>
					</tfoot>
				</table>
			</div>
		</div>
    </div>
    <div class="grid-stack-item"  gs-x="0" gs-y="3" gs-w="6" gs-h="3">
        <div class="grid-stack-item-content">
        <!-- 자격증 -->
       	    <div class="top shadow-sm" style="height: 70px;">
	        	<h1>자격증</h1>
	        </div>
        	<div class="down" style="height: 100%;">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>번호</th>
							<th>자격증명</th>
							<th>시행부처</th>
							<th>발급일</th>
						</tr>
					</thead>
					<tbody id="certBody">
					</tbody>
					<tfoot>
						<a href="${pageContext.request.contextPath}/certification/insert"><h1>+</h1></a>
					</tfoot>					
				</table>
			</div>
		</div>
    </div>
    <div class="grid-stack-item"  gs-x="6" gs-y="3" gs-w="6" gs-h="3">
        <div class="grid-stack-item-content">
        <!-- 기능 -->
        	<div class="top shadow-sm" style="height: 70px;">
	        	<h1>기능</h1>
	        </div>
        	<div class="down" style="height: 100%;">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>번호</th>
							<th>기능명</th>
							<th>기능종류</th>
							<th>수준</th>
						</tr>
					</thead>
					<tbody id="facilityBody">
					</tbody>
					<tfoot>
						<a href="${pageContext.request.contextPath}/facility/insert"><h1>+</h1></a>
					</tfoot>
				</table>
			</div>
		</div>
    </div>
    <div class="grid-stack-item"  gs-x="0" gs-y="6" gs-w="6" gs-h="3">
        <div class="grid-stack-item-content">
        <!-- 주요활동 -->
            <div class="top shadow-sm" style="height: 70px;">
	        	<h1>주요활동</h1>
	        </div>
        	<div class="down" style="height: 100%;">
		        <table class="table table-bordered">
					<thead>
						<tr>
							<th>번호</th>
							<th>주요활동명</th>
							<th>주요활동종류</th>
							<th>주요활동기간</th>
						</tr>
					</thead>
					<tbody id="activityBody">
					</tbody>
					<tfoot>
						<a href="${pageContext.request.contextPath}/activity/insert"><h1>+</h1></a>
					</tfoot>					
				</table>
			</div>
		</div>
    </div>
    <div class="grid-stack-item"  gs-x="6" gs-y="6" gs-w="6" gs-h="3">
        <div class="grid-stack-item-content">
        <!-- 교육이수 -->
            <div class="top shadow-sm" style="height: 70px;">
	        	<h1>교육이수</h1>
	        </div>
        	<div class="down" style="height: 100%;">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>번호</th>
							<th>교육명</th>
							<th>교육기관</th>
							<th>교육종류</th>
							<th>교육기간</th>
						</tr>
					</thead>
					<tbody id="courseBody">
					</tbody>
					<tfoot>
						<a href="${pageContext.request.contextPath}/course/insert"><h1>+</h1></a>
					</tfoot>					
				</table>
			</div>
		</div>
    </div>
    <div class="grid-stack-item"  gs-x="0" gs-y="9" gs-w="6" gs-h="3">
        <div class="grid-stack-item-content">
        <!-- 수상내역 -->
            <div class="top shadow-sm" style="height: 70px;">
	        	<h1>수상내역</h1>
	        </div>
        	<div class="down" style="height: 100%;">
				<table class="table table-bordered">
					<thead>
						<tr>
							<th>번호</th>
							<th>수상대회명</th>
							<th>수상명</th>
							<th>수상기관</th>
						</tr>
					</thead>
					<tbody id="awardBody">
					</tbody>
					<tfoot>
						<a href="${pageContext.request.contextPath}/award/insert"><h1>+</h1></a>
					</tfoot>					
				</table>
			</div>
		</div>
    </div>
</div>
	
<script>
var grid = GridStack.init();
grid.margin(25);
</script>

<!-- 이력서 -->
<script>
let resumeBody = $("#resumeBody");

let makeTrTag0 = function(index, resume){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/resume/" + resume.resumeSn)
				.html(resume.resumeTitle);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(resume.resumeInsertDate)
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/resume",
	method : "get",
	dataType : "json",
	success : function(resp) {
		resumeBody.empty();
		let dataList = resp.resumeList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, resume){
				trTags.push(makeTrTag0(index, resume));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "3")
						.html("경력을 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		resumeBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>

<!-- 학력 -->
<script>
let eduBody = $("#eduBody");

let makeTrTag1 = function(edu, index){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/education/" + edu.eduSn)
				.html(edu.eduName))
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(edu.eduMajor)
				, $("<td>").html(edu.eduEntered.substr(0, 7))
				, $("<td>").html(edu.eduGraduated.substr(0, 7))
				, $("<td>").html(edu.eduStatus)
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/education",
	method : "get",
	dataType : "json",
	success : function(resp) {
		eduBody.empty();
		let dataList = resp.educationList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, edu){
				trTags.push(makeTrTag1(edu, index));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "7")
						.html("경력을 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		eduBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>

<!-- 경력 -->
<script>
let careerBody = $("#careerBody");

let makeTrTag2 = function(career, index){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/career/" + career.careerSn)
				.html(career.careerCompany);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(career.careerTask)
				, $("<td>").html(career.careerCategory)
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/career",
	method : "get",
	dataType : "json",
	success : function(resp) {
		careerBody.empty();
		let dataList = resp.careerList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, career){
				trTags.push(makeTrTag2(career, index));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "7")
						.html("경력을 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		careerBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>

<!-- 자격증 -->
<script>
let certBody = $("#certBody");

let makeTrTag3 = function(cert, index){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/certification/" + cert.certSn)
				.html(cert.certName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(cert.certInstitution)
				, $("<td>").html(cert.certDate.substr(0, 7))
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/certification",
	method : "get",
	dataType : "json",
	success : function(resp) {
		certBody.empty();
		let dataList = resp.certificationList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, cert){
				trTags.push(makeTrTag3(cert, index));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "7")
						.html("자격증을 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		certBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>

<!-- 기능 -->
<script>
let facilityBody = $("#facilityBody");

let makeTrTag4 = function(facility, index){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/facility/" + facility.facilitySn)
				.html(facility.facilityName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(facility.facilityCategory)
				, $("<td>").html(facility.facilityLevel)
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/facility",
	method : "get",
	dataType : "json",
	success : function(resp) {
		facilityBody.empty();
		let dataList = resp.facilityList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, facility){
				trTags.push(makeTrTag4(facility, index));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "7")
						.html("경력을 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		facilityBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>

<!-- 주요활동 -->
<script>
let activityBody = $("#activityBody");

let makeTrTag5 = function(act, index){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/activity/" + act.actSn)
				.html(act.actName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(act.actCategory)
				, $("<td>").html(act.actPeriod)
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/activity",
	method : "get",
	dataType : "json",
	success : function(resp) {
		activityBody.empty();
		let dataList = resp.activityList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, act){
				trTags.push(makeTrTag5(act, index));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "7")
						.html("주요활동을 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		activityBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>

<!-- 교육이수 -->
<script>
let courseBody = $("#courseBody");

let makeTrTag6 = function(course, index){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/course/" + course.courseSn)
				.html(course.courseName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(course.courseInstitution)
				, $("<td>").html(course.courseCategory)
				, $("<td>").html(course.coursePeriod)
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/course",
	method : "get",
	dataType : "json",
	success : function(resp) {
		courseBody.empty();
		let dataList = resp.courseList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, course){
				trTags.push(makeTrTag6(course, index));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "7")
						.html("교육이수를 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		courseBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>

<!-- 수상내역 -->
<script>
let awardBody = $("#awardBody");

let makeTrTag7 = function(award, index){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/award/" + award.awardSn)
				.html(award.awardCompetition);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(award.awardName)
				, $("<td>").html(award.awardInstitution)
				, $("<td>").html(award.awardCategory)
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/award",
	method : "get",
	dataType : "json",
	success : function(resp) {
		awardBody.empty();
		let dataList = resp.awardList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, award){
				trTags.push(makeTrTag7(award, index));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "7")
						.html("수상을 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		awardBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>