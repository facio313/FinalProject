<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* ${date}      양서연      최초작성
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css">
<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

<style>
#temp {
	display: inline-block;
	width: 100%;
    height: calc(1.5em + 0.75rem + 2px);
    padding: 0.375rem 0.75rem;
    font-size: 1rem;
    font-weight: 400;
    line-height: 1.5;
    color: #495057;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid #ced4da;
    border-radius: 0.25rem;
    -webkit-transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;
    -o-transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out, -webkit-box-shadow 0.15s ease-in-out;   
}
.t_center {
	text-align : center;
}
.t_button {
	background-color:transparent;
	border: 0px solid white;
	font-size: 13px;
	color: navy;
}
.close {display:inline-block;*display:inline;  text-shadow: 0px}
.close:after {display: inline-block;content: "\00d7"; font-size:15pt;}
.selectBox {width: 320px; display: inline-block; margin: 2px}
</style>

<!-- NAVBAR -->
<header class="site-navbar mt-3">
	<div class="container-fluid"></div>
</header>

<!-- HOME -->
<section class="section-hero home-section overlay inner-page bg-image" style="background-image: url('resources/images/hero_1.jpg')" id="home-section">
	<div class="container">
		<div class="row align-items-center justify-content-center">
 			<div class="col-md-12">
				<div class="mb-5 text-center">
					<h1 class="text-white font-weight-bold">JOB FILTER</h1>
					<p>조건 걸어서 검색해보자</p>
            	</div>
	            <form method="post" class="search-jobs-form" id="searchUI" >
					<div class="container">
						지역 : 
						<select name="metro" class="form-select form-select-sm selectBox">
							<option value>광역</option>
						</select>
						<select name="regionCode" class="form-select form-select-sm selectBox">
<!-- 						<select name="detailList[0].regionCode"> -->
							<option value>기초</option>
						</select>
					</div>
					<div class="container">
						업종 : 
						<select name="industry0" class="form-select form-select-sm selectBox">
							<option value>상위</option>
						</select>
						<select name="industry1" class="form-select form-select-sm selectBox">
							<option value>중위</option>
						</select>
						<select name="industryCode" class="form-select form-select-sm selectBox">
							<option value>하위</option>
						</select>
					</div>
					<div class="container">
						직종 : 
						<select name="job0" class="form-select form-select-sm selectBox">
							<option value>상위</option>
						</select>
						<select name="job1" class="form-select form-select-sm selectBox">
							<option value>중위</option>
						</select>
						<select name="job" class="form-select form-select-sm selectBox">
							<option value>하위</option>
						</select>
					</div>
					<div class="container">
						경력 : 
						<select name="careerName" class="form-select form-select-sm selectBox">
							<option value>경력사항</option>
							<option value="관계없음">경력무관</option>
							<option value="신입">신입</option>
							<option value="경력">경력</option>
						</select>
					</div>
					<div>
						<ul>
							<li class="jobtype item" data-value="9" data-group="jobtype9" data-type="" >
								<button type="button" class="t_button">
									병역특례 <i class="bi bi-x-lg" style="color:black"></i>
								</button>
							</li>
						</ul>
					</div>
					<div style="border: 1px solid black">
						<button name="regionBtn" class="btn btn-outline-dark" type="button" style="width: 200px; margin-right: 20px">지역</button>
						<button name="industryBtn" class="btn btn-outline-dark" type="button" style="width: 200px; margin-right: 20px">업종</button>
						<button name="jobBtn" class="btn btn-outline-dark" type="button" style="width: 200px; margin-right: 20px">직종</button>
						<button name="careerBtn" class="btn btn-outline-dark" type="button" style="width: 200px; margin-right: 20px">경력</button><!-- 연차 어떻게 할겨.. -->
					</div>
					<!-- 정렬기준 : 기업투명도, 마감남은순, 최신등록순   -->
					<div class="myFilter" style="margin-top: 5px; background-color: navy;">
<!-- 						<div class="container"> -->
<!-- 							<div class="row row-cols-4"> -->
<!-- 								<div class="col t_center" >Column</div> -->
<!-- 								<div class="col t_center">Column</div> -->
<!-- 								<div class="col t_center">Column</div> -->
<!-- 								<div class="col t_center">Column</div> -->
<!-- 								<div class="col t_center">Column</div> -->
<!-- 								<div class="col t_center">Column</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
						<ul id="tagBody"></ul>
					</div>
					<div class="row" style="margin-top: 20px; margin-bottom: 20px">
						<div class="col-md-12 popular-keywords">
							<h3>Trending Keywords:</h3>
							<ul class="keywords list-unstyled m-0 p-0">
		                        <li><a href="#" class="">UI Designer</a></li>
		                        <li><a href="#" class="">Python</a></li>
		                        <li><a href="#" class="">Developer</a></li>
							</ul>
						</div>
					</div>
					<div>
						<input id="temp" type="text" class="form-control" name="searchWord" placeholder="검색어 입력" style="width: 200px; margin-right: 30px">
						<input type="button" id="searchBtn" class="btn btn-primary" value="searchJob" />
<!-- 						<button type="submit" id="searchBtn" class="btn btn-primary" >Search Job</button> -->
					</div>
				</form>
			</div>
		</div>
	</div>
	<a href="#next" class="scroll-button smoothscroll">
		<span class=" icon-keyboard_arrow_down"></span>
	</a>
</section>

<!-- 페이징 -->
<section class="site-section" id="next" style="background-color: white">
	<!-- 리스트 영역 -->
	<ul class="job-listings mb-5" id="listBody"></ul>
	<div class="row pagination-wrap">
		<div class="col-md-6 text-center text-md-left mb-4 mb-md-0">
			<span>Showing 1-7 Of 43,167 Jobs</span>
		</div>
		<div class="col-md-6 text-center text-md-right">
			<!-- 페이징영역 -->
			<div class="pagingArea d-inline-block"></div>
		</div>
	</div>
</section>

<section class="py-5 bg-image overlay-primary fixed overlay" style="background-image: url('resouces/images/hero_1.jpg');">
	<div class="container">
		<div class="row align-items-center">
			<div class="col-md-8">
				<h2 class="text-white">Looking For A Job?</h2>
				<p class="mb-0 text-white lead">Lorem ipsum dolor sit amet consectetur adipisicing elit tempora adipisci impedit.</p>
			</div>
			<div class="col-md-3 ml-auto">
				<a href="#" class="btn btn-warning btn-block btn-lg">Sign Up</a>
			</div>
		</div>
	</div>
</section>


<!-- hidden form -->
<form id="searchForm">
	<input type="hidden" name="page" />
	<input type="hidden" name="regionCode" />
	<input type="hidden" name="industryCode" />
	<input type="hidden" name="job" />
	<input type="hidden" name="careerName" />
	<input type="hidden" name="searchWord"/>
</form>

<!-- SCRIPTS -->

<script>

/* 페이징 */
let listBody = $("#listBody");
   
let pagingArea = $(".pagingArea").on("click", "a.paging", function(event){
	event.preventDefault();
	let page = $(this).data("page");
	if(!page) return false;
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});

let makeTrTag = function(anno){
	return $("<li class='job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center'  style='margin: 10px;' >").append(
				$("<a>").attr("href", "${pageContext.request.contextPath}/announcement/view/"+anno.annoNo)
				, $("<div>").attr("class","job-listing-logo")
				, $("<div>").attr("class","job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4").append(
					$("<div>").attr("class","job-listing-position custom-width w-50 mb-3 mb-sm-0").append(
	 					$("<h2>").html(anno.annoTitle)
						, $("<strong>").html("기업 : " + anno.company.cmpName)
						, $("<div>").html("업종: " + anno.industryName)
					)
					, $("<div>").attr("class","job-listing-location mb-3 mb-sm-0 custom-width w-25").append(
						$("<span>").attr("class","icon-room").html("지역: " + anno.detailList[0].regionName + "<br>")
						, $("<span>").attr("class","icon-room").html("연봉: " + anno.annoSalary + "<br>")
						, $("<span>").attr("class","icon-room").html("경력/별점 <br>")
					)
					, $("<div>").attr("class","job-listing-meta").append(
	//                   $("<span>").attr("class","badge badge-danger").html("D-7")   
						$("<span>").attr("class","badge badge-success").html("D-7")   
					)
           		)
         	);
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
			if(dataList){
				$.each(dataList, function(index, anno){
					trTags.push(makeTrTag(anno));
				});
			}else{
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "7").html("조건에 맞는 공고 없음.")
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
// 	console.log($("[name=industry0]").val());
// 	let inputs = searchUI.find(":input[name]");
// 	$.each(inputs, function(index, input){
// 		let name = this.name;
// 		let value = $(this).val();
// 		console.log("name : ",name);
// 		console.log("value : ",value);
// 		searchForm[0][name].value = value;
// 	});
	searchForm[0]['regionCode'].value=$("[name=regionCode]").val();
	searchForm[0]['industryCode'].value=$("[name=industryCode]").val();
	searchForm[0]['job'].value=$("[name=job]").val();
	searchForm[0]['careerName'].value=$("[name=careerName]").val();
	searchForm[0]['searchWord'].value=$("[name=searchWord]").val();
	
	searchForm.submit();
});


/* 보내자... */
/* 하위 지역 셀렉트... */

$("[name=metro]").on("change", function(){
	$("[name='regionCode'] option").remove();   
	$("[name='regionCode']").append("<option>기초</option>");
	
	let ref = $(this).val();
	let data = [{type:'region',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/select",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			console.log("리스트뽑아옴");
			let regionList = resp.regionList;
			let regionOption = [];
			
			$.each(regionList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.regionCode).html(val.regionName);
				regionOption.push(tr);
			})
			$("select[name=regionCode]").append(regionOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});

/* 하위 업종 셀렉트 */

$("[name=industry0]").on("change", function(){
// 	console.log($(this).val());
// 	console.log($("[name=industry0]").val());
	
	$("[name='industry1'] option").remove();   
	$("[name='industry1']").append("<option>중위</option>");
	$("[name='industryCode'] option").remove();   
	$("[name='industryCode']").append("<option>하위</option>");
	
	let ref = $(this).val();
	let data = [{type:'industry',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/select",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			
			console.log("리스트뽑아옴");
			let industryList = resp.industryList;
			let industryOption = [];
			
			$.each(industryList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.industryCode).html(val.industryName);
				industryOption.push(tr);
			})
			$("select[name=industry1]").append(industryOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});
$("[name=industry1]").on("change", function(){
	
	let ref = $(this).val();
	let data = [{type:'industry',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/select",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			console.log("리스트뽑아옴");
			let industryList = resp.industryList;
			let industryOption = [];
			
			$.each(industryList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.industryCode).html(val.industryName);
				industryOption.push(tr);
			})
			$("select[name=industryCode]").append(industryOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});

/* 직종 하위 셀렉트 */

$("[name=job0]").on("change", function(){
	$("[name='job1'] option").remove();  
	$("[name='job1']").append("<option>중위</option>");
	$("[name='job'] option").remove();   
	$("[name='job']").append("<option>하위</option>");
	
	let ref = $(this).val();
	let data = [{type:'job',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/select",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			console.log("리스트뽑아옴");
			let jobList = resp.jobList;
			let jobOption = [];
			
			$.each(jobList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.jobCode).html(val.jobName);
				jobOption.push(tr);
			})
			$("select[name=job1]").append(jobOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});
$("[name=job1]").on("change", function(){
	
	let ref = $(this).val();
	let data = [{type:'job',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/select",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			console.log("리스트뽑아옴");
			let jobList = resp.jobList;
			let jobOption = [];
			
			$.each(jobList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.jobCode).html(val.jobName);
				jobOption.push(tr);
			})
			$("select[name=job]").append(jobOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});

/* 최상위 셀렉트... */
let topData = [
	{type:'region', code:''}
	, {type:'industry', code:''}
	, {type:'job', code:''}
]
$.ajax({
	url : "${pageContext.request.contextPath}/announcement/select",
	method : "post",
	data : JSON.stringify(topData),
	dataType : "json",
	contentType: 'application/json',
	success : function(resp) {
		console.log("리스트뽑아옴");
		let regionList = resp.regionList;
		let industryList = resp.industryList;
		let jobList = resp.jobList;
		
		console.log("regionList",regionList);
		console.log("industryList",industryList);
		console.log("jobList",jobList);
		
		let regionOption = [];
		let industryOption = [];
		let jobOption = [];
		
		$.each(regionList, function(index, val){
			let tr = null;
			tr = $("<option>").attr("class","code").prop("value",val.regionCode).html(val.regionName);
			regionOption.push(tr);
		})
		$.each(industryList, function(index, val){
			let tr = null;
			tr = $("<option>").attr("class","code").prop("value",val.industryCode).html(val.industryName);
			industryOption.push(tr);
		})
		$.each(jobList, function(index, val){
			let tr = null;
			tr = $("<option>").attr("class","code").prop("value",val.jobCode).html(val.jobName);
			jobOption.push(tr);
		})
		$("select[name=metro]").append(regionOption);
		$("select[name=industry0]").append(industryOption);
		$("select[name=job0]").append(jobOption);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});

</script>
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