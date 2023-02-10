<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<!-- Custom styles for this template -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/custom-bs.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/animate.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/quill.snow.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">  

<c:if test="${not empty SPRING_SECURITY_LAST_EXCEPTION }">
	<script>
		alert("${SPRING_SECURITY_LAST_EXCEPTION.message}");
	</script>
	<c:remove var="SPRING_SECURITY_LAST_EXCEPTION" scope="session"/>
</c:if>

<!-- <div id="overlayer"></div>
<div class="loader">
	<div class="spinner-border text-primary" role="status">
    	<span class="sr-only">Loading...</span>
  	</div>
</div> -->

<section class="site-section" style="display:flex; justify-content : center;">
	<div class="container" style="width:600px;">
		<div class="">
           	<h2 class="mb-4">로그인</h2>
            <form class="p-4 border rounded" action="<c:url value='/login/loginProcess.do'/>" method="post">
				<security:csrfInput/>
				<div class="row form-group">
	                <div class="col-md-12 mb-3 mb-md-0">
	                  <label class="text-black" for="fname">ID</label>
	                  <input type="text" name="memId" class="form-control" placeholder="아이디">
	                </div>
              	</div>
              	<div class="col-auto">
					<div class="form-check">
					<label><input type="checkbox" class="form-check-input" name="아이디 저장" />rememberMe</label>
					</div>
				</div>
				<div class="row form-group">
					<div class="col-md-12 mb-3 mb-md-0">
						<label class="text-black" for="fname">Password</label>
	                  	<input type="password" name="memPass" class="form-control" placeholder="비밀번호">
	                </div>
				</div>

              	<div class="row form-group">
               		<div class="col-md-12">
                  		<input type="submit" value="로그인" class="btn px-4 btn-primary text-white">
                	</div>
                	<div>
	                  	<hr>
	                  	<p>
	                   		<a href="<c:url value='/join/seeker'/>" class="noneunderline">회원가입</a>
	                    	|
	                    	<a href="<c:url value='/help/find'/>" class="noneunderline">아이디/비밀번호 찾기</a>
	                  	</p>
                	</div>
              	</div>
            </form>
         	</div>
   	</div>
</section>

<!-- SCRIPTS -->
<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/stickyfill.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.fancybox.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.waypoints.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.animateNumber.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/quill.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/custom.js"></script>

    
