<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

<div id="" style="display:flex; justify-content : center;">
	<div id="content" style="width:1000px;">
		<div class="">
			<h1 class="">아이디/비밀번호 찾기</h1>
		</div>
		<!-- help_find -->
		<div class="">
			<div class="">
				<p class="">가입한 아이디와 비밀번호를 잊으셨습니까?
				</p>
			</div>
               	<section class="site-section">
                	<div class="container">
	                   	<div class="row">
	                       	<div class="col-lg-6 mb-5">
	                       		<div class="p-4 border rounded">
	                           		<h2 class="mb-4">일반회원</h2>
		                           	<div class="row form-group">
			                           	<div class="col-md-12">
			                               	<input type="button" value="아이디 찾기" onclick="location.href='<c:url value = "/help/find/seekerFindId"/>'" class="btn px-4 btn-primary text-white">
			                               	<input type="button" value="비밀번호 찾기" onclick="location.href='<c:url value = "/help/find/seekerFindPw"/>'" class="btn px-4 btn-primary text-white">
			                           	</div>
		                           	</div>
	                           	</div>
	                       	</div>
	                       	<div class="col-lg-6">
	                       		<div class="p-4 border rounded">
	                           		<h2 class="mb-4">기업회원</h2>
	               
	                           		<div class="row form-group">
	                           			<div class="col-md-12">
	                               			<input type="submit" value="아이디 찾기" onclick="location.href='<c:url value = "/help/find/incruiterFindId"/>'" class="btn px-4 btn-primary text-white">
	                               			<input type="submit" value="비밀번호 찾기" onclick="location.href='<c:url value = "/help/find/incruiterFindPw"/>'" class="btn px-4 btn-primary text-white">
	                           			</div>
	                           		</div>
	                       		</div>
	                       	</div>
	               		</div>
               		</div>
               	</section>
			<div class="">
				<a href="<c:url value='/login'/>" class="" title="로그인 바로가기">로그인</a>
				|
				<a href="<c:url value='/join/seeker'/>" class="" title="회원가입 바로가기">회원가입</a>
				|
				<a href="<c:url value='/help'/>" class="" title="자주 묻는 질문 바로가기">자주 묻는 질문</a>
				<p class="">위 방법으로 계정을 찾을수 없다면, 고객센터로 직접 <a href="<c:url value='/ask'/>">문의</a> 주시기 바랍니다.</p>
			</div>
		</div>
	</div>
</div>
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
