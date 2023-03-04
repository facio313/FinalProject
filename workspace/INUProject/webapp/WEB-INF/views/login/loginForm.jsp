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
            <form class="p-4 border rounded" action="<c:url value='/login/loginProcess.do'/>" method="post" id="loginForm">
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
				
				<!-- 로그인 편의 기능, 개발종료시 지워야함 -->
				<div class="row mt-3">
					<div class="col	">
						<select class="form-select" aria-label="Default select example" onchange="selectedLogin(event);">
						  <option>사용자선택</option>
						  <option data-mem-id="zzz98" data-mem-pass="java">관리자(형준)</option>
						  <option data-mem-id="cks1111" data-mem-pass="java">일반회원(경수)</option>
						  <option data-mem-id="lcr0000" data-mem-pass="0000">일반회원(채리)</option>
						  <option data-mem-id="abcabc" data-mem-pass="1234">일반회원(호연)</option>
						  <option data-mem-id="asdf" data-mem-pass="asdf">기업회원(서연)</option>
						  <option data-mem-id="A001" data-mem-pass="java">전문가(근주)</option>
						</select>
						<script>
							function selectedLogin(event){
								let target = $(event.target);
								let option = target.find("option:selected");
								let memId = option.data("memId");
								let memPass = option.data("memPass");
								if(memId && memPass) {
									loginForm.memId.value = memId;
									loginForm.memPass.value = memPass;
		// 							loginForm.submit();
								}
							}
						</script>
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

    
