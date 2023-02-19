<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="8kb"%>
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
/*  				overflow-x:hidden; */
 				background-color: rgb(234, 237, 242);
/* 				background-color: rgb(246,246,246); */
				position:relative;
				z-index:1;
			}
			main {
 				position: abosolute;
 				top: 50px;
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
		<div class="row">
			<main class="col-md-10 ks-lm-radius mx-auto">
				<!-- 상단메 -->
				<div class="top-bar" style="position: relative; left: -20px; background-color: rgb(4, 87, 56); width: 100%; height: 200px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
					<span style="position: absolute; left: 20px; top: 20px; font-size: 50px; font-weight: 900; color: white;">채용과정</span>
					<span style="position: absolute; left: 20px; top: 100px; font-size: 15px; font-weight: 600; color: white;">회사 공고의 채용과정을 관리합니다.</span>
					<div style="position: absolute;  left: 20px; top: 140px; font-size: 20px; font-weight: 600; color: white;">
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success active" href="${pageContext.request.contextPath}/apply">지원</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/resume">이력서</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/education">학력</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/career">경력</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/certification">자격증</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/facility">기능</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/activity">주요활동</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/course">교육이수</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/award">수상내역</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/myintro">자기소개서</a>
						<a style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="${pageContext.request.contextPath}/process">채용과정</a>
					</div>
				</div>
				<tiles:insertAttribute  name="content"/>
			</main>
		</div>
		<tiles:insertAttribute name="floating"/>
		<tiles:insertAttribute  name="postScript"/>
	</body>
</html>















