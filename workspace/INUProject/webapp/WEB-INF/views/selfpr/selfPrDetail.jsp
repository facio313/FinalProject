<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* ${date}      윤호연      최초작성
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom-bs.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/line-icons/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.min.css">
    
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">
    
    <style type="text/css">
      .img-jobseeker{
      	height: 150px;
      	width: 160px; 
      	border-radius: 10px;
      }
      .top-interval{
        height: 25px;
      }
      .block_jobseeker {
		position: relative;
		background: #f0f9f7;
		padding: 55px;
		margin-bottom: 3rem;
		border-radius: 15px;
	  }
    </style>
        
</head>

	<!-- HOME -->
	<section class="section-hero home-section overlay inner-page bg-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/hero_1.jpg');" id="home-section">
		<div class="container">
	        <div class="row">
				<div class="col-md-7">
		            <h1 class="text-white font-weight-bold">인재 홍보</h1>
		            <div class="custom-breadcrumbs">
						<a href="${pageContext.request.contextPath}/selfpr">SELFPR</a> <span class="mx-2 slash">/</span>
						<span class="text-white"><strong>Detail</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	
  <section class="site-section">

      <div class="container">
      
       <div class="block_jobseeker mb-6">
          <div class="block__91147 d-flex align-items-center">
         	 <figure class="mr-5"><img src="resources/images/logo.jpg" class="img-jobseeker"></figure>
	          <div>
	             <h3>ㅇㄹㅇㄹ인림ㄴㅇ린ㅁ리</h3>
	             <hr>
	             <span class="position">Web Designer</span>
	             <br>
	             <span>주소</span>
	             <br>
	             <span>전화번호</span>
	             <hr>
	          </div>
          </div>
          <div class="top-interval"></div>
        <div class="prname">
        	<blockquote>
          	<p>Ipsum harum assumenda in eum vel eveniet numquam, cumque vero vitae enim cupiditate deserunt eligendi officia modi consectetur. Expedita tempora quos nobis earum hic ex asperiores quisquam optio nostrum sit</p>
        	</blockquote>
        </div>
        </div> 
        
      </div>

	<div class="container">
      <div class="mb-4">
        <h3 class="mb-4" style="font-size: 1.3em; color: black;"><strong>자기소개</strong></h3>
        <hr>
        <p class="mb-0">Nostrum iure atque enim quisquam minima distinctio omnis consequatur aliquam suscipit quidem esse aspernatur Libero excepturi animi repellendus porro impedit</p>
      </div>
    </div>
    
    <div class="container">
      <div class="row mb-4">
        <div class="col-sm-12 col-md-12 mb-4 col-lg-12">
          <strong class="d-block" style="font-size: 1.3em; color: red;">학력사항</strong>
          <hr>
          <span>대학교 4년 재학</span>
        </div>
        <div class="col-sm-12 col-md-12 mb-4 col-lg-12">
          <strong class="d-block" style="font-size: 1.3em; color: red;">경력사항</strong>
          <hr>
          <span>넥슨 1년 구글 2년</span>
        </div>
        <div class="col-sm-12 col-md-12 mb-4 col-lg-12">
          <strong class="d-block" style="font-size: 1.3em; color: red;">자격증</strong>
          <hr>
          <span>Design, Front-End and Back-End (WordPress)</span>
        </div>
        <div class="col-sm-12 col-md-12 mb-4 col-lg-12">
          <strong class="d-block" style="font-size: 1.3em; color: red;">주요활동</strong>
          <hr>
          <span>Design, Front-End and Back-End (WordPress)</span>
        </div>
        <div class="col-sm-12 col-md-12 mb-4 col-lg-12">
          <strong class="d-block" style="font-size: 1.3em; color: red;">수상경력</strong>
          <hr>
          <span>Design, Front-End and Back-End (WordPress)</span>
        </div>
        <div class="col-sm-12 col-md-12 mb-4 col-lg-12">
          <strong class="d-block" style="font-size: 1.3em; color: red;">교육이수</strong>
          <hr>
          <span>Design, Front-End and Back-End (WordPress)</span>
        </div>
        
        
        
        <div class="top-interval"></div>
        	<div class="card">
	        	<table class="table">
	        		<thead>
		        		<tr>
							<td><strong>고용형태</strong></td>
							<td><strong>희망근무지</strong></td>
							<td><strong>희망연봉</strong></td>
							<td><strong>원하는 분야</strong></td>
		        		</tr>
					</thead>
					<tbody>
						<tr>
							<td>정규직</td>
							<td>대전</td>
							<td>3000만원</td>
							<td>개발</td>
						</tr>
					</tbody>
	        	</table>
        	</div>

	<!-- 이동 -->
    </section>
    <section class=" py-3 site-section mb-5">
      <div class="container">
        <div class="row">
          <div class="col-md-4 text-center">
            <a href="#" class="btn btn-md btn-outline-primary border-width-2 d-block">이전 글</a>
          </div>
          <div class="col-md-4 text-center">
            <a href="#" class="btn btn-md btn-primary border-width-2 d-block">컨택하기</a>
          </div>
          <div class="col-md-4 text-center">
            <a href="#" class="btn btn-md btn-outline-primary border-width-2 d-block">다음 글</a>
          </div>
        </div>
      </div>
    </section>
    
      <!-- SCRIPTS -->
    <script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/isotope.pkgd.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/stickyfill.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.fancybox.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.easing.1.3.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.waypoints.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.animateNumber.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/quill.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap-select.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/daumPostcode.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/custom.js"></script>
</body>
</html>