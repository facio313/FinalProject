<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    

<script src="${pageContext.request.contextPath}/resources/leftMenu/lib/wow/wow.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/leftMenu/css/style.css">
		
<style>
.hja {
color: white !important;
}
</style>
		
<leftmenu class="col-lg-2 sidebar ks-leftmenu ks-lm-radius">
	<h2 style="text-align:right;"><i id="collapse" class="fa fa-bars"></i></h2>
	<sidebar>
		<h2 class="text-center"><a href="${pageContext.request.contextPath }/systemManagement" class="logo hja">시스템 관리 홈</a></h2>
		<hr>
		<h3 class="text-center"><a href="${pageContext.request.contextPath }/systemManagement/seekerList" class="logo hja">일반 회원 관리</a></h3>
		<hr>
		<ul class="list-unstyled components mb-5 text-left">
			<li class="active">
				<a href="${pageContext.request.contextPath}/systemManagement/seekerList" class="hja"><span class="fa fa-home hja"></span>일반회원 계정목록</a>
			</li>
			<li>
			    <a href="${pageContext.request.contextPath}/systemManagement/cutList" class="hja"><span class="fa fa-user hja"></span>차단 계정목록</a>
			</li>
			<li>
			  	<a href="${pageContext.request.contextPath}/systemManagement/blackList" class="hja"><span class="fa fa-sticky-note hja"></span>블랙리스트 목록</a>
			</li>
		</ul>
		<hr>
		<h3 class="text-center "><a href="${pageContext.request.contextPath }/" class="logo hja">기업 관리</a></h3>
		<hr>
		<ul class="list-unstyled components mb-5 text-left">
			<li class="active">
				<a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-home hja"></span>기업목록</a>
			</li>
			<li class="active">
				<a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-home hja"></span>기업회원 계정목록</a>
			</li>
			<li>
			    <a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-user hja"></span>기업총괄회원 계정목록</a>
			</li>
		</ul>
		<hr>
		<h3 class="text-center"><a href="${pageContext.request.contextPath }/" class="logo hja">전문가, 상품 관리</a></h3>
		<hr>
		<ul class="list-unstyled components mb-5 text-left">
			<li class="active">
				<a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-home hja"></span>전문가 계정목록</a>
			</li>
			<li>
			    <a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-user hja"></span>전문가 신청목록</a>
			</li>
			<li>
			  	<a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-sticky-note hja"></span>상품 신청목록</a>
			</li>
			<li>
			  	<a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-sticky-note hja"></span>상품 철회목록</a>
			</li>
		</ul>
		<hr>
		<h3 class="text-center"><a href="${pageContext.request.contextPath }/" class="logo hja">신고 관리</a></h3>
		<hr>
		<ul class="list-unstyled components mb-5 text-left">
			<li class="active">
				<a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-home hja"></span>신고 게시글 목록</a>
			</li>
			<li>
			    <a href="${pageContext.request.contextPath}/" class="hja"><span class="fa fa-user hja"></span>신고 댓글 목록</a>
			</li>
		</ul>
	</sidebar>
</leftmenu>


<script>
	(function($) {
		"use strict";
		var fullHeight = function() {
			$('.js-fullheight').css('height', $(window).height());
			$(window).resize(function(){
				$('.js-fullheight').css('height', $(window).height());
			});
		};
		fullHeight();
	
		let collapse = $('#collapse').on('click', function () {
			if ($('leftmenu').hasClass('active') == false) {
				$('leftmenu').removeClass('col-lg-2').addClass('col-lg-1 active');
				$('main').removeClass('col-lg-9').addClass('col-lg-10');
			} else {
				$('leftmenu').removeClass('col-lg-1 active').addClass('col-lg-2');
				$('main').removeClass('col-lg-10').addClass('col-lg-9');
			}
		});
    	new WOW().init();

    	// Sticky Navbar
    	$(window).scroll(function () {
        	if ($(this).scrollTop() > 45) {
            	$('leftmenu').addClass('sticky ks-leftmenu-extended').removeClass('ks-leftmenu ks-lm-radius');
        	} else {
            	$('leftmenu').removeClass('sticky ks-leftmenu-extended').addClass('ks-leftmenu ks-lm-radius');
        	}
    	});
	})(jQuery);
</script>