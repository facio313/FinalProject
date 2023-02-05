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

<!-- MAIN CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    
<div class="site-wrap">
	

	<!-- HOME -->
	<section class="section-hero home-section overlay inner-page bg-image" style="background-image: url('resources/images/hero_1.jpg')" id="home-section">
		<div>
		</div>
		<!-- NAVBAR -->
    <header class="site-navbar mt-3">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="site-logo col-6"><a href="index.html">삼성전자</a></div>
				<div class="right-cta-menu text-right d-flex aligin-items-center col-6">
					<div class="ml-auto">
						<a href="post-job.html" class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-add"></span>관심기업</a>
						<a href="login.html" class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span class="mr-2 icon-lock_outline"></span>D-Day</a>
					</div>
					<a href="#" class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span class="icon-menu h3 m-0 p-0 mt-2"></span></a>
				</div>
			</div>
		</div>
	</header>
		<div class="container">
	      	<!-- 로고이미지 -->
			<div class="job-listing-logo">
				<img src="images/job_logo_1.jpg" alt="Image" class="img-fluid">
			</div>
			
	        <div class="row">
				<div class="col-md-7">
		            <h1 class="text-white font-weight-bold">공고 제목임 지원하셈 </h1>
		            <div class="custom-breadcrumbs">
						<a href="#">접수기간</a> <span class="mx-2 slash">/</span>
						<span class="text-white"><strong>디데이</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="site-section" style="background-color: white" >
		<div class="container">
			<div class="row align-items-center mb-5">
				<div class="col-lg-8 mb-4 mb-lg-0">
					<div class="d-flex align-items-center">
						<div class="border p-2 d-inline-block mr-3 rounded">
							<img src="images/job_logo_5.jpg" alt="Image">
						</div>
						<div>
							<h2>디자이너 모집?</h2>
								<h3 class="mb-4">모집할게</h3>
							<div>
								<span class="ml-0 mr-2 mb-2"><span class="icon-briefcase mr-2"></span>연봉</span>
								<span class="m-2"><span class="icon-room mr-2"></span>직무</span>
								<span class="m-2"><span class="icon-clock-o mr-2"></span><span class="text-primary">고용형태</span></span>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 ml-auto h-100 jm-sticky-top" >
					<div class="row">
						<div class="col-6">
							<a href="#" class="btn btn-block btn-light btn-md"><span class="icon-heart-o mr-2 text-danger"></span>관심공고</a>
						</div>
						<div class="col-6">
							<a href="${pageContext.request.contextPath}/announcement/insert" class="btn btn-block btn-primary btn-md">지원하기</a>
						</div>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8">
					<div class="mb-5">
						<figure class="mb-5"><img src="images/job_single_img_1.jpg" alt="Image" class="img-fluid rounded"></figure>
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-align-left mr-3"></span>공통사항</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus.</p>
						<p>Velit unde aliquam et voluptas reiciendis non sapiente labore, deleniti asperiores blanditiis nihil quia officiis dolor vero iste dolore vel molestiae saepe. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!</p>
					</div>
					<div class="mb-5">
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-rocket mr-3"></span>모집분야</h3>
						<ul class="list-unstyled m-0 p-0">
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Necessitatibus quibusdam facilis</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Velit unde aliquam et voluptas reiciendis n Velit unde aliquam et voluptas reiciendis non sapiente labore</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Commodi quae ipsum quas est itaque</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Deleniti asperiores blanditiis nihil quia officiis dolor</span></li>
						</ul>
					</div>
		            <div class="mb-5">
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-rocket mr-3"></span>채용단계</h3>
						<ul class="list-unstyled m-0 p-0">
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Necessitatibus quibusdam facilis</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Velit unde aliquam et voluptas reiciendis n Velit unde aliquam et voluptas reiciendis non sapiente labore</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Commodi quae ipsum quas est itaque</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Deleniti asperiores blanditiis nihil quia officiis dolor</span></li>
						</ul>
					</div>
		
					<div class="mb-5">
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-book mr-3"></span>복지</h3>
						<ul class="list-unstyled m-0 p-0">
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Necessitatibus quibusdam facilis</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Velit unde aliquam et voluptas reiciendis non sapiente labore</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Commodi quae ipsum quas est itaque</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Deleniti asperiores blanditiis nihil quia officiis dolor</span></li>
						</ul>
					</div>
		
		            <div class="mb-5">
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-turned_in mr-3"></span>기업 후기</h3>
						<ul class="list-unstyled m-0 p-0">
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Necessitatibus quibusdam facilis</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Velit unde aliquam et voluptas reiciendis non sapiente labore</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Commodi quae ipsum quas est itaque</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Deleniti asperiores blanditiis nihil quia officiis dolor</span></li>
						</ul>
					</div>
		
					<ul class="list-unstyled m-0 p-0">
						<li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>담당자 : </span></li>
		                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>담당자 이메일 : </span></li>
		                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>담당자 전화번호 : </span></li>
					</ul>
					<div>
						※ 방문, 우편, 팩스 등 오프라인 접수의 경우, 『채용절차의 공정화에 관한 법률 제11조』 에 따라 구직자는 구인자에게 채용서류 반환을 요청 할 수 있으며, 구인자는 본인임을 확인한 후 채용서류를 반환하여야 합니다.
					</div>
				</div>
				<div class="col-lg-4 ml-auto h-100 jm-sticky-top" style="top: 100px">
					<div class="bg-light p-3 border rounded mb-4">
						<h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">기업 정보</h3>
						<ul class="list-unstyled pl-3 mb-0">
			                <li class="mb-2"><strong class="text-black">업종:</strong> Full-time</li>
							<li class="mb-2"><strong class="text-black">사원수:</strong> 20</li>
							<li class="mb-2"><strong class="text-black">설립일자:</strong> April 14, 2019</li>
							<li class="mb-2"><strong class="text-black">기업형태:</strong> 2 to 3 year(s)</li>
							<li class="mb-2"><strong class="text-black">회사 주소:</strong> New ork City</li>
							<li class="mb-2"><strong class="text-black">투명도:</strong> $60k - $100k</li>
							<li class="mb-2"><strong class="text-black">이메일:</strong> Any</li>
							<li class="mb-2"><strong class="text-black">홈페이지:</strong> April 28, 2019</li>
						</ul>
					</div>
	
					<div class="bg-light p-3 border rounded">
						<h3 class="text-primary  mt-3 h5 pl-3 mb-3 ">Share</h3>
						<div class="px-3">
			                <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-facebook"></span></a>
			                <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-twitter"></span></a>
			                <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-linkedin"></span></a>
			                <a href="#" class="pt-3 pb-3 pr-3 pl-0"><span class="icon-pinterest"></span></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="site-section" id="next">
	  <div class="container">
	    <div class="row mb-5 justify-content-center">
	      <div class="col-md-7 text-center">
	        <h2 class="section-title mb-2">22,392 Related Jobs</h2>
	      </div>
	    </div>
	    
	    <ul class="job-listings mb-5">
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_1.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Product Designer</h2>
	            <strong>Adidas</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> New York, New York
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-danger">Part Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_2.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Digital Marketing Director</h2>
	            <strong>Sprint</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> Overland Park, Kansas 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_3.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Back-end Engineer (Python)</h2>
	            <strong>Amazon</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> Overland Park, Kansas 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_4.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Senior Art Director</h2>
	            <strong>Microsoft</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> Anywhere 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_5.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Product Designer</h2>
	            <strong>Puma</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> San Mateo, CA 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_1.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Product Designer</h2>
	            <strong>Adidas</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> New York, New York
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-danger">Part Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_2.jpg" alt="Image" class="img-fluid">
	        </div>
	
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Digital Marketing Director</h2>
	            <strong>Sprint</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> Overland Park, Kansas 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	    </ul>
	    
	    <div class="row pagination-wrap">
	      <div class="col-md-6 text-center text-md-left mb-4 mb-md-0">
	        <span>Showing 1-7 Of 22,392 Jobs</span>
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
	  </div>
	</section>
	
	<section class="bg-light pt-5 testimony-full">
	    <div class="owl-carousel single-carousel">
	      <div class="container">
	        <div class="row">
	          <div class="col-lg-6 align-self-center text-center text-lg-left">
	            <blockquote>
	              <p>&ldquo;Soluta quasi cum delectus eum facilis recusandae nesciunt molestias accusantium libero dolores repellat id in dolorem laborum ad modi qui at quas dolorum voluptatem voluptatum repudiandae.&rdquo;</p>
	              <p><cite> &mdash; Corey Woods, @Dribbble</cite></p>
	            </blockquote>
	          </div>
	          <div class="col-lg-6 align-self-end text-center text-lg-right">
	            <img src="images/person_transparent_2.png" alt="Image" class="img-fluid mb-0">
	          </div>
	        </div>
	      </div>
	
	      <div class="container">
	        <div class="row">
	          <div class="col-lg-6 align-self-center text-center text-lg-left">
	            <blockquote>
	              <p>&ldquo;Soluta quasi cum delectus eum facilis recusandae nesciunt molestias accusantium libero dolores repellat id in dolorem laborum ad modi qui at quas dolorum voluptatem voluptatum repudiandae.&rdquo;</p>
	              <p><cite> &mdash; Chris Peters, @Google</cite></p>
	            </blockquote>
	          </div>
	          <div class="col-lg-6 align-self-end text-center text-lg-right">
	            <img src="images/person_transparent.png" alt="Image" class="img-fluid mb-0">
	          </div>
	        </div>
	      </div>
	  </div>
	</section>
	
	<section class="pt-5 bg-image overlay-primary fixed overlay" style="background-image: url('images/hero_1.jpg');">
	  <div class="container">
	    <div class="row">
	      <div class="col-md-6 align-self-center text-center text-md-left mb-5 mb-md-0">
	        <h2 class="text-white">Get The Mobile Apps</h2>
	        <p class="mb-5 lead text-white">Lorem ipsum dolor sit amet consectetur adipisicing elit tempora adipisci impedit.</p>
	        <p class="mb-0">
	          <a href="#" class="btn btn-dark btn-md px-4 border-width-2"><span class="icon-apple mr-3"></span>App Store</a>
	          <a href="#" class="btn btn-dark btn-md px-4 border-width-2"><span class="icon-android mr-3"></span>Play Store</a>
	        </p>
	      </div>
	      <div class="col-md-6 ml-auto align-self-end">
	        <img src="images/apps.png" alt="Image" class="img-fluid">
	      </div>
	    </div>
	  </div>
	</section>
</div>

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
   