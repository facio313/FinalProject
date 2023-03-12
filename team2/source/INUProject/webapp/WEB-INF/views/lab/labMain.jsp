<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023.02.02  윤호연      최초작성
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom-bs.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.fancybox.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-select.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/icomoon/style.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/line-icons/style.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.min.css">
	    
	    <!-- MAIN CSS -->
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">    
	
          <section class="site-section block__62849" id="next-section">
            <div class="container">
              <div class="row">
              <hr>
                <div class="col-sm-2"></div>

                <!-- 뉴스 탭 -->
                <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                  <a href="${pageContext.request.contextPath}/lab/News" class="block__16443 text-center d-block" style="border: 1px solid rgba(88, 170, 178, 0.444); border-radius: 15px;">
                    <span class="custom-icon mx-auto"><span class="icon-line-newspaper d-block"></span></span>
                    <h3>NEWS</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit facilis, pariatur harum labore aperiam assumenda.</p>
                  </a>
                </div>

                <!-- 공모전 탭 -->
                <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                  
                  <a href="${pageContext.request.contextPath}/lab/contest" class="block__16443 text-center d-block" style="border: 1px solid rgba(88, 170, 178, 0.444); border-radius: 15px;">
                    <span class="custom-icon mx-auto"><span class="icon-trophy d-block"></span></span>
                    <h3>CONTEST</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugit facilis, pariatur harum labore aperiam assumenda.</p>
                  </a> 

                </div>

                <div class="col-sm-2"></div>
                <div class="col-sm-2"></div>

                <!-- 1:1 상담 탭 -->
                <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                  
                  <a href="${pageContext.request.contextPath}/lab/counseling" class="block__16443 text-center d-block" style="border: 1px solid rgba(88, 170, 178, 0.444); border-radius: 15px;">
                    <span class="custom-icon mx-auto"><span class="icon-supervisor_account d-block"></span></span>
                    <h3>취업상담</h3>
                  </a>            
      
                </div>

                <!-- 취업지원 탭 -->
                <div class="col-6 col-md-6 col-lg-4 mb-4 mb-lg-5">
                  
                  <a href="${pageContext.request.contextPath}/lab/support" class="block__16443 text-center d-block" style="border: 1px solid rgba(88, 170, 178, 0.444); border-radius: 15px;">
                    <span class="custom-icon mx-auto"><span class="icon-object-group d-block"></span></span>
                    <h3>취업지원</h3>
                  </a>
      
                </div>
                <div class="col-sm-2"></div>

			 </div>
            </div>
          <hr>
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
