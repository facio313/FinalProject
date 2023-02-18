<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!doctype html>
<html>

	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

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
				background: white;
				border-radius: 30px;
				padding-top: 50px;
			}
		</style>
	</head>
	
	<body>
		<tiles:insertAttribute  name="headerMenu"/>
		<div class="row">
			<div class="col-md-1"></div>
			<main class="col-md-10">
				<tiles:insertAttribute  name="content"/>
			</main>
			<div class="col-md-1"></div>
		</div>

		<tiles:insertAttribute name="floating"/>
		<tiles:insertAttribute  name="postScript"/>
	</body>
	
</html>













<!-- 		<div id="main_div" class="row"> -->
<%-- 			<tiles:insertAttribute name="leftMenu" ignore="true"/> --%>
<!-- 			<main class="col-md-9" style="border-radius: 30px; padding-top: 50px;"> -->
<%-- 				<tiles:insertAttribute  name="content"/> --%>
<!-- 			</main> -->
<!-- 		</div> -->


