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
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    @import url('https://fonts.googleapis.com/css?family=Montserrat');
    
   	.img-jobseeker {
		width: 150px;
		height: 130px;    	
   	}
   	
   @import url('https://fonts.googleapis.com/css?family=Montserrat');

	body {
		font-family: Montserrat, sans-serif;
		min-height: 100vh;
		margin: 0;
	}
	
	h3 {
		margin: 10px 0;
	}
	
	h6 {
		margin: 5px 0;
		text-transform: uppercase;
	}
	
	p {
		font-size: 14px;
		line-height: 21px;
	}
	
	.card-container {
		background-color: #4B7BF5;
		border-radius: 15px;
		box-shadow: 3px 3px 5px 3px rgba(0,0,0,0.75);
		color: #B3B8CD;
		padding-top: 30px;
		position: relative;
		width: 350px;
		max-width: 100%;
		text-align: center;
		margin-bottom: 30px;
	}
	
	.card-container .pro {
		color: #231E39;
		background-color: #FEBB0B;
		border-radius: 3px;
		border : 1px solid black;
		font-size: 14px;
		font-weight: bold;
		padding: 3px 7px;
		position: absolute;
		top: 30px;
		left: 30px;
	}
	
	.card-container .round {
		border: 5px solid #2b4ced;
		border-radius: 50%;
		padding: 7px;
	}
	
	button.primary {
		background-color: #03BFCB;
		border: 1px solid #03BFCB;
		border-radius: 3px;
		color: #231E39;
		font-family: Montserrat, sans-serif;
		font-weight: 500;
		padding: 10px 25px;
	}
	
	button.primary.ghost {
		background-color: transparent;
		color: #02899C;
	}
	
	.skills {
		background-color: #79A9F5;
		text-align: left;
		padding: 15px;
		margin-top: 30px;
		border-radius: 10px;
	}
	
	.skills ul {
		list-style-type: none;
		margin: 0;
		padding: 0;
	}
	
	.skills ul li {
		border: 1px solid #2D2747;
		border-radius: 2px;
		display: inline-block;
		font-size: 12px;
		margin: 0 7px 7px 0;
		padding: 7px;
	}
	    	
    	
    	
    </style>    
</head>
<body>

	<!-- 오늘 본 인재 확인 UI -->
<section class="site-section" id="next">
<div class="container">	
<div class="row">

	<!-- 카드 1 -->
	<c:set var="selfprTodayList" value="${pagingVO.dataList }"/>
	 <c:choose>
          <c:when test="${not empty selfprTodayList }">
	       <c:forEach items="${selfprTodayList }" var="selfprToday">
				<div class="card-container">
					<span class="pro">${selfprToday.prAnnual }</span>
					<img class="round" src="https://randomuser.me/api/portraits/women/79.jpg" alt="user" />
					<h3><strong>${selfprToday.memName }</strong></h3>
					<h6>${selfprToday.regionName }</h6>
					<p>${selfprToday.industryName }<br/>${selfprToday.prWantjob }</p>
					<div class="buttons">
						<button class="primary">
							Message
						</button>
						<button class="primary ghost">
							Following
						</button>
					</div>
					<div class="skills">
						<h6 style="text-align: center;">${selfprToday.prName }</h6>
					</div>
				</div>
				<div style="width: 25px"></div>
	       	</c:forEach>
          </c:when>
         </c:choose>

</div>
</div>
</section>
	
	
	
	
	
	
	
    
    
    
	<form:form id="searchForm" modelAttribute="simpleCondition" method="get">
		<form:hidden path="searchType"/>
		<form:hidden path="searchWord"/>
		<input type="hidden" name="page" />
	</form:form>
    
    <!-- 페이징 -->
	<div class="row pagination-wrap">
	  <div class="col-md-12 text-center text-md-right" style="left: 450px">
		<div id = "pagingArea">
			<ui:pagination pagingVO="${pagingVO }" type="bootstrap"/>
	    </div>
	  </div>
	</div>
	
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

	<script type="text/javascript">
	
	let searchForm = $("#searchForm").on("click", "#searchBtn", function(){
		let inputs = searchUI.find(":input[name]");
		$.each(inputs, function(index, input){
			let name = this.name;
			let value = $(this).val();
			searchForm.find("[name="+name+"]").val(value);
		});
		searchForm.submit();
	});
	
	$("a.paging").on("click", function(event){
		event.preventDefault();
		let page = $(this).data("page");
		if(!page) return false;
		searchForm.find("[name=page]").val(page);
		searchForm.submit();
		return false;
	});
	</script>
</body>
</html>