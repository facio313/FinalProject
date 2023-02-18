<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<!-- MAIN CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
		<!-- gridstack -->
		<link href="<%=request.getContextPath()%>/resources/index/node_modules/gridstack/dist/gridstack.min.css" rel="stylesheet"/>
		<link href="<%=request.getContextPath()%>/resources/index/grid.css" rel="stylesheet"/>
		<script src="${pageContext.request.contextPath}/resources/index/node_modules/gridstack/dist/gridstack-all.js"></script>

		

		<title>INU</title>
		
		<tiles:insertAttribute name="preScript" />
		<c:if test="${not empty message }">
			<script>
				alert("${message}");
			</script>
		</c:if>
		
		<style>
			body {
				width:100%;
 				height:100%;
 				overflow-x:hidden;
 				background-color: rgb(234, 237, 242);
/* 				background-color: rgb(246,246,246); */
				position:relative;
				z-index:1;
			}
			main {
 				position: abosolute;
 				top: 50px;
 				left: 25px;
 				padding-top: 50px;
 				border-radius: 30px;
				background: white;
			}
			button {
				width: 100%;
			}
		</style>
	</head>
	<body>
		<tiles:insertAttribute  name="headerMenu"/>
<!-- 		<div id="main_div" class="row"> -->
<%-- 			<tiles:insertAttribute name="leftMenu" ignore="true"/> --%>
<!-- 			<main class="col-md-9" style="border-radius: 30px; padding-top: 50px;"> -->
<%-- 				<tiles:insertAttribute  name="content"/> --%>
<!-- 			</main> -->
<!-- 		</div> -->
		<div class="row">
			<main class="col-md-10  ks-lm-radius mx-auto">
				<a class="btn btn-outline-success active" href="${pageContext.request.contextPath}/apply">지원</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/resume">이력서</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/education">학력</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/career">경력</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/certification">자격증</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/facility">기능</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/activity">주요활동</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/course">교육이수</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/award">수상내역</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/myintro">자기소개서</a>
				<a class="btn btn-outline-success" href="${pageContext.request.contextPath}/process">채용과정</a>
				<tiles:insertAttribute  name="content"/>
			</main>
		</div>
		<tiles:insertAttribute name="floating"/>
		<tiles:insertAttribute  name="postScript"/>
	</body>
</html>















