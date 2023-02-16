<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.ddit.or.kr/class305"  prefix="ui"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/interview.css" />

<style>
.wrap_title_recruit {position: relative; padding: 0 0 0px;}
#paging{font-size: 22pt;}
</style>
</head>

<body id="top">
	<div id="overlayer"></div>
	<div class="site-wrap">
		<!-- HOME -->
		<section class="section-hero overlay inner-page bg-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg');" id="home-section">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1 class="text-white font-weight-bold">현직자인터뷰</h1>
						<div class="custom-breadcrumbs">
							<a href="${pageContext.request.contextPath }/board/boardMain">Community</a>
								<span class="mx-2 slash">/</span>
								<span class="text-white"><strong>Interview</strong></span>
						</div>
						<div class="custom-breadcrumbs"></div>
					</div>
				</div>
			</div>
		</section>

		<!-- 작성 -->
		<div id="sri_section" class="  ">
			<div id="sri_wrap">
				<div id="content">
					<div class="wrap_title_recruit title_type2">
						<h1 class="title_common">현직자 인터뷰
							<span class="value">전체 <b>939</b>건</span>
						</h1>
						<div class="">
							<div class=""></div>
							<div class="">
								<div class="row">
									<div style="text-align:right; padding:10px 16px 12px 12px">
										<a style="float: right;width: 224px;box-sizing: border-box;" href="${pageContext.request.contextPath }/interview/interviewInsert" class="btn btn-block btn-primary btn-md">게시글 작성</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- 직무 list -->
					<div class="wrap_category_type">
						<ul class="list_category">
							<li class="on">
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">전체</a>
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">기획·전략</a>
								(159)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">마케팅·홍보·조사</a>
								(159)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">회계·세무·재무</a>
								(30)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">인사·노무·HRD</a>
								(82)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">총무·법무·사무</a>
								(36)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">IT개발·데이터</a>
								(108)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">디자인</a>
								(71)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">영업·판매·무역</a>
								(134)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">고객상담·TM</a>
								(14)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">구매·자재·물류</a>
								(18)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">상품기획·MD</a>
								(29)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">운전·운송·배송</a>
								(5)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">서비스</a>
								(58)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">생산</a>
								(54)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">건설·건축</a>
								(34)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">의료</a>
								(9)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">연구·R&amp;D</a>
								(42)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">미디어·문화·스포츠</a>
								(73)
							</li>
							<li>
								<a href="#" onmousedown="try{n_trackEvent('public', 'job-interview' , 'category', '');}catch(e){}">금융·보험</a>
								(10)
							</li>
						</ul>
					</div>

					<!-- 검색 -->
					<div class="recruilt_list_wrap wrap_job_interview">
						<div class="list_info">
							<div class="searchTypoBox">
								<form:form name="frm" id="searchUI" method="get" modelAttribute="simpleCondition" onclick="return false;">
									<input type="hidden" name="cat_mcls" id="cat_mcls" value="">
									<form:input type="text" class="inpTypo" path="searchWord" id="search_keyword" value="" style="width: 230px" placeholder="제목 또는 기업명을 입력하세요."/>
									<button type="submit" class="btnTypoSearch" id="searchBtn">검색</button>
									<button type="button" class="btnTypoReset" onclick="location.href='/INUProject/interview/interviewList';return false;">선택초기화</button>
								</form:form>
							</div>
						</div>

						<!-- 기업정보 -->
						<div class="job_interview_list">
							<ul id="listTop"></ul>
						</div>
						<div class="pagingArea"></div>

					</div>

				</div>
			</div>
		</div>
	</div>

<form id="searchForm">
	<input type="hidden" name="page" />
	<input type="hidden" name="searchWord"/>
</form>

<!-- SCRIPTS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/stickyfill.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/quill.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<script type="text/javascript">

let listBody = $("#listTop");

let pagingArea = $(".pagingArea").on("click", "a.paging", function(event){
	event.preventDefault();
	let page = $(this).data("page");
	if(!page) return false;
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});

let makeTrTag = function(interview){
	return $("<li>").append(
				$("<a>").attr("href","${pageContext.request.contextPath}/interview/interviewDetail?incumNo="+interview.incumNo).attr("class","inlist_box").append(
						$("<p>").attr("class","sub_title").append(
							$("<span>").attr("class", "in_subtit").html(interview.jobName)),

						$("<p>").attr("class","title").append(
							$("<em>").html(interview.incumTitle)),

						$("<div>").attr("class","box_info").append(
							$("<div>").attr("class","txt_detail").append(
								$("<p>").attr("class","company_name").html(interview.cmpId),
								$("<p>").attr("class","company_part").append(
									$("<em>").attr("class","inpart").html(interview.department),
									$("<em>").attr("class","inname").html(interview.incumName)),

								$("<p>").attr("class","day_line").append(
									$("<span>").attr("class","day").html(interview.incumDate),
									$("<span>").attr("class","view_count").html(interview.incumHits))),
							$("<div>").attr("class","img_view").append(
								$("<span>").attr("class","img").append(
									$("<img>").attr("src","https://pds.saramin.co.kr/career-information/asset_thumbnail/202302/01/rpdolq_63pd-2so1pr_asset.png")))
						)));
}

let searchForm = $("#searchForm").on("submit", function(event){
	event.preventDefault();
	let url = this.action;
	let method = this.method;
	let queryString = $(this).serialize();
	$.ajax({
		url : url,
		method : method,
		data : queryString,
		dataType : "json",
		success : function(resp) {
			listBody.empty();
			pagingArea.empty();
			searchForm[0].page.value="";

			let pagingVO = resp.pagingVO;

			let dataList = pagingVO.dataList;
			let trTags = [];

			console.log("여기인가:",dataList);
			if(dataList.length>0){
				$.each(dataList, function(index, interview){
					trTags.push(makeTrTag(interview));
				});
			}else {
				// db에 데이터가 없을 때
				console.log("찾는 것:",dataList);
				let tr = $("<div>").attr("class", "job_interview_list").append(
						$("<div>").attr("class","no_search_jobdata").append(
							$("<p>").html("죄송합니다. 검색하신 조건으로 현직자 인터뷰를 찾지 못했습니다.")
						)
				);
				trTags.push(tr);
			}
			listBody.html(trTags);
			if(resp.pagingHTML)
				pagingArea.html(resp.pagingHTML);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
	return false;
}).submit();

let searchUI = $("#searchUI").on("click", "#searchBtn", function(){
	let inputs = searchUI.find(":input[name]");
	$.each(inputs, function(index, input){
		let name = this.name;
		let value = $(this).val();
		searchForm.find("[name="+name+"]").val(value);
	});
	searchForm.submit();
});

$('#search_keyword').keypress(function(event){
    if ( event.which == 13 ) {
        $('#searchBtn').click();
        return false;
    }
});

</script>
</body>
</html>