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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css">

<!-- MAIN CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

<style>
#temp{
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

</style>

<!-- NAVBAR -->
<header class="site-navbar mt-3">
  <div class="container-fluid">
<!--     <div class="row align-items-center"> -->
<!--       <div class="site-logo col-6"><a href="index.html">필터쓰</a></div> -->
<!-- 			<h1 class="text-white font-weight-bold">필터쓰</h1> -->
<!--     </div> -->
  </div>
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
				<form method="post" class="search-jobs-form">
					<div style="border: 1px solid black">
						<button class="btn btn-outline-dark" type="button" style="width: 200px; margin-right: 20px">지역</button>
						<button class="btn btn-outline-dark" type="button" style="width: 200px; margin-right: 20px">직종</button>
						<button class="btn btn-outline-dark" type="button" style="width: 200px; margin-right: 20px">경력</button>
						<input id="temp" type="text" class="form-control" placeholder="검색어 입력" style="width: 200px; margin-right: 30px">
						<button type="submit" class="btn btn-primary" >Search Job</button>
					</div>
					<div class="next-filter" style="margin-top: 5px; background-color: navy;">
						<div class="container">
					        <div class="row row-cols-4">
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					        </div>
					        <div class="row row-cols-4">
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					          <div class="col">Column</div>
					        </div>
						</div>
					</div>
					<div class="row" style="margin-top: 20px">
						<div class="col-md-12 popular-keywords">
							<h3>Trending Keywords:</h3>
							<ul class="keywords list-unstyled m-0 p-0">
								<li><a href="#" class="">UI Designer</a></li>
								<li><a href="#" class="">Python</a></li>
								<li><a href="#" class="">Developer</a></li>
							</ul>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
	<a href="#next" class="scroll-button smoothscroll">
	   <span class=" icon-keyboard_arrow_down"></span>
	</a>
</section>

<section class="site-section" id="next" style="background-color: white">
	<ul class="job-listings mb-5">
		<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center"  style="margin: 10px;" >
			<a href="${pageContext.request.contextPath}/announcement/view/1"></a>
            <div class="job-listing-logo">
				<img src="resources/images/job_logo_1.jpg" alt="Image" class="img-fluid">
            </div>
            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
				<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
					<h2>모집 공고 제목</h2>
	                <strong>기업명</strong>
	                <div>별점</div>
				</div>
				<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
					<span class="icon-room"></span> 지역<br>
	                <span class="icon-room"></span> 경력<br>
	                <span class="icon-room"></span> 학력<br>
				</div>
				<div class="job-listing-meta">
					<span class="badge badge-danger">D-7</span>
				</div>
			</div>
		</li>
		
		<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center"  style="margin: 10px;" >
			<a href="${pageContext.request.contextPath}/announcement/view/1"></a>
            <div class="job-listing-logo">
				<img src="resources/images/job_logo_1.jpg" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
				<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	                <h2>모집 공고 제목</h2>
	                <strong>기업명</strong>
	                <div>별점</div>
				</div>
				<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	                <span class="icon-room"></span> 지역<br>
	                <span class="icon-room"></span> 경력<br>
	                <span class="icon-room"></span> 학력<br>
				</div>
				<div class="job-listing-meta">
                	<span class="badge badge-success">D-7</span>
				</div>
			</div>
		</li>
          
		<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center"  style="margin: 10px;" >
			<a href="${pageContext.request.contextPath}/announcement/view/1"></a>
            <div class="job-listing-logo">
				<img src="resources/images/job_logo_1.jpg" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
				<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	                <h2>모집 공고 제목</h2>
	                <strong>기업명</strong>
	                <div>별점</div>
				</div>
				<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	                <span class="icon-room"></span> 지역<br>
	                <span class="icon-room"></span> 경력<br>
	                <span class="icon-room"></span> 학력<br>
				</div>
				<div class="job-listing-meta">
                	<span class="badge badge-success">D-7</span>
				</div>
			</div>
		</li>
          
		<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center"  style="margin: 10px;" >
			<a href="${pageContext.request.contextPath}/announcement/view/1"></a>
            <div class="job-listing-logo">
				<img src="resources/images/job_logo_1.jpg" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
				<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	                <h2>모집 공고 제목</h2>
	                <strong>기업명</strong>
	                <div>별점</div>
				</div>
				<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	                <span class="icon-room"></span> 지역<br>
	                <span class="icon-room"></span> 경력<br>
	                <span class="icon-room"></span> 학력<br>
				</div>
				<div class="job-listing-meta">
                	<span class="badge badge-success">D-7</span>
				</div>
			</div>
		</li>
          
		<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center"  style="margin: 10px;" >
			<a href="${pageContext.request.contextPath}/announcement/view/1"></a>
            <div class="job-listing-logo">
				<img src="resources/images/job_logo_1.jpg" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
				<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	                <h2>모집 공고 제목</h2>
	                <strong>기업명</strong>
	                <div>별점</div>
				</div>
				<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	                <span class="icon-room"></span> 지역<br>
	                <span class="icon-room"></span> 경력<br>
	                <span class="icon-room"></span> 학력<br>
				</div>
				<div class="job-listing-meta">
                	<span class="badge badge-success">D-7</span>
				</div>
			</div>
		</li>
          
		<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center"  style="margin: 10px;" >
			<a href="${pageContext.request.contextPath}/announcement/view/1"></a>
            <div class="job-listing-logo">
				<img src="resources/images/job_logo_1.jpg" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
				<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	                <h2>모집 공고 제목</h2>
	                <strong>기업명</strong>
	                <div>별점</div>
				</div>
				<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	                <span class="icon-room"></span> 지역<br>
	                <span class="icon-room"></span> 경력<br>
	                <span class="icon-room"></span> 학력<br>
				</div>
				<div class="job-listing-meta">
                	<span class="badge badge-success">D-7</span>
				</div>
			</div>
		</li>
          
		<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center"  style="margin: 10px;" >
			<a href="${pageContext.request.contextPath}/announcement/view/1"></a>
            <div class="job-listing-logo">
				<img src="resources/images/job_logo_1.jpg" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
				<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	                <h2>모집 공고 제목</h2>
	                <strong>기업명</strong>
	                <div>별점</div>
				</div>
				<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	                <span class="icon-room"></span> 지역<br>
	                <span class="icon-room"></span> 경력<br>
	                <span class="icon-room"></span> 학력<br>
				</div>
				<div class="job-listing-meta">
                	<span class="badge badge-success">D-7</span>
				</div>
			</div>
		</li>
          
		<li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center"  style="margin: 10px;" >
			<a href="${pageContext.request.contextPath}/announcement/view/1"></a>
            <div class="job-listing-logo">
				<img src="resources/images/job_logo_1.jpg" alt="Image" class="img-fluid">
            </div>

            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
				<div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	                <h2>모집 공고 제목</h2>
	                <strong>기업명</strong>
	                <div>별점</div>
				</div>
				<div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	                <span class="icon-room"></span> 지역<br>
	                <span class="icon-room"></span> 경력<br>
	                <span class="icon-room"></span> 학력<br>
				</div>
				<div class="job-listing-meta">
                	<span class="badge badge-success">D-7</span>
				</div>
			</div>
		</li>
	</ul>
	<div class="row pagination-wrap">
		<div class="col-md-6 text-center text-md-left mb-4 mb-md-0">
           	<span>Showing 1-7 Of 43,167 Jobs</span>
         	</div>
         	<div class="col-md-6 text-center text-md-right">
            <div class="custom-pagination ml-auto">
				<a href="#" class="prev">Prev</a>
				<div class="d-inline-block">
					<a href="#" class="active">1</a>
					<a href="#">2</a>
					<a href="#">3</a>
					<a href="#">4</a>
				</div>
				<a href="#" class="next">Next</a>
			</div>
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

