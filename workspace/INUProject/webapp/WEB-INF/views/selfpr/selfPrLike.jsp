<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023.02.23   윤호연      제작
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
    
    <style type="text/css">
    	.img-jobseeker {
			width: 150px;
			height: 130px;    	
    	}
    </style>    
</head>
<body>
<h3>관심인재</h3>

	<!-- 오늘 본 인재 확인 UI -->

 <section class="site-section" id="next">
      <div class="container">
        
      <c:set var="selfprLikeList" value="${pagingVO.dataList }"/>
        <c:choose>
          <c:when test="${not empty selfprLikeList }">
	       <c:forEach items="${selfprLikeList }" var="selfprLike">
	        <ul class="job-listings mb-5">
	          <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	            <a href="job-single.html"></a>
	            <div class="job-listing-logo">
	              <img src="${pageContext.request.contextPath}/resources/images/jobSeeker.png" alt="Image" class="img-jobseeker">
	            </div>
	
	            <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	              <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	              
	              <!-- 여기 추가 쿼리 돌려야함 -->
	                <h3 class="icon-account_circle">&nbsp;이름${selfprLike.prNo }</h3>
	                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                	    원하는 직업</strong>
	                <br>
	                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	                	  해당 직무경력</span>
	              </div>
	              <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	                <span class="icon-room"></span>&nbsp;원하는 지역
	                <br>
	                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 직급</span>
	                <br>
	                <span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;원하는 연봉</span>
	              </div>
	              <div class="job-listing-meta">
	                <span class="badge badge-danger">Part Time</span>
	              </div>
	            </div>
	          </li>
	         </ul>
	       	</c:forEach>
          </c:when>
         </c:choose>

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