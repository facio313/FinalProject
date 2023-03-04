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

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />

<!-- 숫자 애니메이션 -->
<script src="<%=request.getContextPath()%>/resources/js/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/stickyfill.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.waypoints.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.animateNumber.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/custom.js"></script>

<style>
a:hover {text-decoration: none;}
element.style {padding: 9px 12px 11px 12px;height: 40px;/* border: 1px solid #d7dce5; */border-radius: 4px;box-sizing: border-box;color: #373f57;font-family: "Malgun Gothic",gulim,dotum,sans-serif;font-size: 14px;letter-spacing: -1px;line-height: 20px;vertical-align: middle;background-color: #fff;}
.wrap_community_topic .wrap_slide_category {position: relative;margin-top: 32px;padding-right: 0px;}
.wrap_community_topic .wrap_slide_category:after {display: contents;position: absolute;top: 0;right: 76px;z-index: 5;width: 37px;height: 100%;background: linear-gradient(to right, rgba(255, 255, 255, 0) -22%, rgba(255, 255, 255, 1) 33%);content: "";}
.txt_subject{font-weight: initial;}
.pf {
 	font-size: 24px; 
}

.radiuss{
	width: 100%;
	height: auto;
	border : 1px solid #eaedf4;
	border-radius: 12px;
	padding-top: 50px;
	margin-top: 2%;
	margin-bottom: 2%;
}
</style>


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
<div class="radiuss">
	<div class="qna_write_wrap">
		<div class="qna_write_selection">
			<span class="qna_category_tit" style="font-size: 40px; padding-left: 100px; padding-right: 100px;">이력서</span>
		</div>
	</div>
	<div style="padding-left: 50px; padding-right: 50px;">
		<hr style="background-color: #5c667b; height: 2px;">
		<p class="pf">총체적인 이력서 목록과 항목들</p>
	</div>
	<div id="content">
		<div class="company_honest_qna">
			<div class="contents_container">
				<ul class="main_banners banners_th"></ul>
				<div class="wrap_area_left">
					<div class="wrap_story_panel">
						<div class="qna_search">
							<h3 class="title">
								<a href="${pageContext.request.contextPath }/resume" class="link_go">나의 이력서</a>
							</h3>
							<!-- 검색 -->
							<div class="search_form">
				              <div class="box_search">
				                <div class="input_keyword">
				                  <input type="text" name="input_keyword" id="input_keyword" value="" placeholder="어떤 이력서를 썼더라?" class="inpTypo" title="키워드, 이력서명 입력">
				                  	<button type="button" class="spr btn_search">
				                    	<svg class="icon_search">
				                     	 <use xlink:href="#svg_my_8"></use>
				                   		</svg>
				                    </button>
				                </div>
				              </div>
							  <div class="" style="display:none">
							    <svg xmlns="http://www.w3.org/2000/svg">
							      <symbol id="svg_my_8" viewBox="0 0 24 24">
							        <path fill="currentColor" d="M7 0c3.866 0 7 3.134 7 7 0 1.756-.647 3.36-1.714 4.59l.068.056 3.394 3.395c.195.195.195.511 0 .707-.174.173-.443.193-.638.058l-.07-.058-3.394-3.394-.056-.068C10.36 13.353 8.756 14 7 14c-3.866 0-7-3.134-7-7s3.134-7 7-7zm0 1C3.686 1 1 3.686 1 7s2.686 6 6 6 6-2.686 6-6-2.686-6-6-6z" transform="translate(-1125 -399) translate(447 335) translate(678 64) translate(4 4)"></path>
							      </symbol>
							    </svg>
							  </div>
							</div>
						</div>
	
						<!-- 이력서 -->
						<div class="wrap_section wrap_best_story">
							<div class="section_inner" style="padding-bottom: 17px;">
								<div class="wrap_title">
									<h4 class="title">
										<a href="${pageContext.request.contextPath}/resume" class="link_go">
											<b class="hot">MY!</b> 나의 전체 이력서들 🔥
										</a>
									</h4>
									<a href="${pageContext.request.contextPath}/resume/list" class="link_more">더보기</a>
								</div>
	
								<ul class="list_story">
									<c:forEach items="${resumeList}" var="resume">
									<ul class="list_story">
										<li style="margin: 0 0 17px">
											<a href="${pageContext.request.contextPath}/resume/${resume.resumeSn}" class="link">
												<span class="txt_subject">
													<c:out value="${resume.resumeTitle}" />
												</span>
											</a>
											<div class="util">
												<span>${resume.resumeInsertDate}</span>
											</div>
										</li>
									</ul>
									</c:forEach>
								</ul>
							</div>
						</div>
	
						<!-- 항목 -->
						<div class="wrap_section wrap_community_topic">
							<div class="wrap_title">
								<h3 class="main_tit">이력서 항목</h3>
							</div>
							<div class="wrap_slide_category">
							   <ul class="list_category js-category" style="max-width: 889px;margin: 0 0 0 32px;">
									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
										<a class="item_cate" href="${pageContext.request.contextPath}/education">
											학력
										</a>
									</li>
									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
										<a class="item_cate" href="${pageContext.request.contextPath}/career">
											경력
										</a>
									</li>
									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
										<a class="item_cate" href="${pageContext.request.contextPath}/certification">
											자격증
										</a>
									</li>
									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
										<a class="item_cate" href="${pageContext.request.contextPath}/facility">
											기능
										</a>
									</li>
									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
										<a class="item_cate" href="${pageContext.request.contextPath}/activity">
											주요활동
										</a>
									</li>
									<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
										<a class="item_cate" href="${pageContext.request.contextPath}/course">
											교육이수
										</a>
									</li>
									<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
										<a class="item_cate selected" href="${pageContext.request.contextPath}/award">
											수상내역
										</a>
									</li>
								</ul>
							</div>
	
							<!-- 학력 -->
							<div class="community_list">
								<li>
									<div class="section_inner">
										<div class="wrap_title">
											<h4 class="title">
												<a href="${pageContext.request.contextPath }/education" class="link_go">학력</a>
											</h4>
											<a href="${pageContext.request.contextPath }/education" class="link_more">더보기</a>
										</div>
										<!-- ajax -->
										<div id="eduBody">
										<ul class="list_story">
											<li style="margin: 0 0 17px">
												<a href="학력목록">
													<span class="txt_subject">
														학력 제목
													</span>
												</a>
												<div class="util">
													<span>학력 입력 날짜</span>
												</div>
											</li>
										</ul>
										</div>
										<!-- ajax -->
									</div>
								</li>
	
								<!-- 경력 -->
								<div class="section_inner">
									<div class="wrap_title">
										<h4 class="title">
											<a href="${pageContext.request.contextPath}/career" class="link_go">경력</a>
										</h4>
										<a href="${pageContext.request.contextPath}/career" class="link_more">더보기</a>
									</div>
									<!-- ajax -->
									<ul class="list_story">
										<li style="margin: 0 0 17px">
											<a href="경력목록">
												<span class="txt_subject">
													경력 제목
												</span>
											</a>
											<div class="util">
												<span>경력 입력 날짜</span>
											</div>
										</li>
									</ul>
									<!-- ajax -->
								</div>
								
								<!-- 자격증 -->
								<div class="section_inner">
									<div class="wrap_title">
										<h4 class="title">
											<a href="${pageContext.request.contextPath}/certification" class="link_go">자격증</a>
										</h4>
										<a href="${pageContext.request.contextPath}/certification" class="link_more">더보기</a>
									</div>
									<!-- ajax -->
									<ul class="list_story">
										<li style="margin: 0 0 17px">
											<a href="자격증목록">
												<span class="txt_subject">
													자격증 제목
												</span>
											</a>
											<div class="util">
												<span>자격증 입력 날짜</span>
											</div>
										</li>
									</ul>
									<!-- ajax -->
								</div>
								
								<!-- 기능 -->
								<div class="section_inner">
									<div class="wrap_title">
										<h4 class="title">
											<a href="${pageContext.request.contextPath}/facility" class="link_go">기능</a>
										</h4>
										<a href="${pageContext.request.contextPath}/facility" class="link_more">더보기</a>
									</div>
									<!-- ajax -->
									<ul class="list_story">
										<li style="margin: 0 0 17px">
											<a href="기능목록">
												<span class="txt_subject">
													기능 제목
												</span>
											</a>
											<div class="util">
												<span>기능 입력 날짜</span>
											</div>
										</li>
									</ul>
									<!-- ajax -->
								</div>
								
								<!-- 주요활동 -->
								<div class="section_inner">
									<div class="wrap_title">
										<h4 class="title">
											<a href="${pageContext.request.contextPath}/activity" class="link_go">주요활동</a>
										</h4>
										<a href="${pageContext.request.contextPath}/activity" class="link_more">더보기</a>
									</div>
									<!-- ajax -->
									<ul class="list_story">
										<li style="margin: 0 0 17px">
											<a href="주요활동목록">
												<span class="txt_subject">
													주요활동 제목
												</span>
											</a>
											<div class="util">
												<span>주요활동 입력 날짜</span>
											</div>
										</li>
									</ul>
									<!-- ajax -->
								</div>
								
								<!-- 교육이수 -->
								<div class="section_inner">
									<div class="wrap_title">
										<h4 class="title">
											<a href="${pageContext.request.contextPath}/career" class="link_go">교육이수</a>
										</h4>
										<a href="${pageContext.request.contextPath}/career" class="link_more">더보기</a>
									</div>
									<!-- ajax -->
									<ul class="list_story">
										<li style="margin: 0 0 17px">
											<a href="교육이수목록">
												<span class="txt_subject">
													교육이수 제목
												</span>
											</a>
											<div class="util">
												<span>교육이수 입력 날짜</span>
											</div>
										</li>
									</ul>
									<!-- ajax -->
								</div>
								
								<!-- 수상내역 -->
								<div class="section_inner">
									<div class="wrap_title">
										<h4 class="title">
											<a href="${pageContext.request.contextPath}/career" class="link_go">수상내역</a>
										</h4>
										<a href="${pageContext.request.contextPath}/career" class="link_more">더보기</a>
									</div>
									<!-- ajax -->
									<ul class="list_story">
										<li style="margin: 0 0 17px">
											<a href="수상내역목록">
												<span class="txt_subject">
													수상내역 제목
												</span>
											</a>
											<div class="util">
												<span>수상내역 입력 날짜</span>
											</div>
										</li>
									</ul>
									<!-- ajax -->
								</div>
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>	

	
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

let makeEduTag = function(edu, index){
	return $("<ul>").addClass("list_story").append($("<li>").css("margin", "0 0 17px").append( 
				$("<a>").attr("href", "${pageContext.request.contextPath}/education/" + edu.eduSn).append($("<span>").addClass("txt_subject").html(edu.eduName))
				, $("<div>").addClass("util").append($("<span>").html(edu.eduInsertDate))
	));
}

$.ajax({
	url : "${pageContext.request.contextPath}/education",
	method : "get",
	dataType : "json",
	success : function(resp) {
		console.log(resp);
		eduBody.empty();
		let dataList = resp.educationList;
		let tags = [];
		if (dataList) {
			$.each(dataList, function(index, edu){
				if (index < 4) {
					tags.push(makeEduTag(edu, index));
				}
			});
		} else {
			let none = $("<a>").append($("<span>").addClass("txt_subject").html("학력을 아직 등록하지 않았습니다."));
			tags.push(none);
		}
		console.log(tags);
		eduBody.html(tags);
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