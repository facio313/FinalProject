<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 
   
<script src="${pageContext.request.contextPath}/resources/leftMenu/lib/wow/wow.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/leftMenu/css/style.css">   

<leftmenu class="col-lg-2 sidebar ks-leftmenu ks-lm-radius">   
	<h1 style="text-align:right; color:white;"><i id="collapse" class="fa fa-bars"></i></h1>
	<sidebar>
		<ul class="nav flex-column">     
			<c:forEach items="${menuList }" var="menu">
	    		<security:authorize url="${menu.menuURL }">
					<a href='<c:url value="${menu.menuURL }"/>' style="font-size:30px;" class="text-center">${menu.menuTitle }</a>
					<li class="nav-item">
						<a class="nav-link active" style="color:white;" href="<c:url value='${menu.menuURL }'/>">${menu.menuText }</a>
					</li>
				</security:authorize>
    		</c:forEach> 
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