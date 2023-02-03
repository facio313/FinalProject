<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="description" content="">
		<meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
		<meta name="generator" content="Hugo 0.88.1">
		<meta name="theme-color" content="#7952b3">

		<title>Dashboard Template · Bootstrap v5.2</title>
		
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
				background-image: url("<%=request.getContextPath()%>/resources/background/1.jpg");
 				background-size: auto;
 				overflow-x:hidden;
			}
			main {
 				position: abosolute;
 				top: 50px;
 				left: 25px;
				background: white;
			}
		</style>
	</head>
	<body id="top" class="d-flex flex-column">
		<tiles:insertAttribute  name="headerMenu"/>
		<div id="main_div" class="row">
			<tiles:insertAttribute name="leftMenu" ignore="true"/>
			<main class="col-lg-9 ks-lm-radius" >
				<tiles:insertAttribute  name="content"/>
			</main>
		</div>
	
	
		<footer class="footer mt-auto py-3 bg-dark col-md-12 ms-sm-auto col-lg-12">
			<tiles:insertAttribute  name="footer" ignore="true"/>
		</footer>
		
		<tiles:insertAttribute  name="postScript"/>
	</body>
</html>















