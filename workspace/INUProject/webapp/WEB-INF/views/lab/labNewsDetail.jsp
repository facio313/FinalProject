<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023.02.02  윤호연      최초작성
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!doctype html>
<html>
	<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom-bs.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.fancybox.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-select.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/icomoon/style.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/line-icons/style.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.min.css">
	    
	    <!-- MAIN CSS -->
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">    
	</head>

    <!-- HOME -->
	<section class="section-hero home-section overlay inner-page bg-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/hero_1.jpg');" id="home-section">
		<div class="container">
	        <div class="row">
				<div class="col-md-7">
		            <h1 class="text-white font-weight-bold">뉴스</h1>
		            <div class="custom-breadcrumbs">
						<a href="${pageContext.request.contextPath}/lab">Lab</a> <span class="mx-2 slash">/</span>
						<span class="text-white"><strong>NewsDetail</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 뉴스 본문 -->
    <section class="site-section" id="next-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 blog-content">
          	<hr>
            <h3 class="mb-4">${news.newsName }</h3>
            <hr>
            <p style="text-align: right;">기사 조회수 : ${news.newsHit }</p>
            <p><img src="<%=request.getContextPath() %>/resources/images/Dobby.png" alt="Image" class="img-fluid rounded"></p>
            <p>${news.newsContent }</p>
            <br>
            <hr>
            <div>
              <p>작성일 : ${news.newsDate }</p>
            </div>
          </div>
          
	<!-- 오른쪽 Categories -->
	  <div class="col-lg-3">
	    <div class="sidebar-box sidebar-category" style="border: 1px solid #dae791; border-radius: 15px;">
	      <div class="categories">
	        <h3>Categories</h3>
	        <br>
	        <li><a href="#">취업 뉴스 <span>(1)</span></a></li>
	        <li><a href="#">기업 뉴스 <span>(1)</span></a></li>
	        <li><a href="#">공채 뉴스 <span>(1)</span></a></li>
	      </div>
	    </div>
	  </div>
        </div>
      </div>
      
       <div class="col-lg-3" style="left: 135px">
         <button type="submit" class="btn btn-primary text-white" style="width: 100px;" onclick="location.href='<%=request.getContextPath() %>/lab/News'">
         	<span class="icon-database d-block"></span>목록으로</button>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</body>
</html>