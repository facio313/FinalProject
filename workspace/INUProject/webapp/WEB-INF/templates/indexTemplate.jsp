<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">

		<title>INU : Thank You Very Match!</title>

		<tiles:insertAttribute  name="preScript"/>
		
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
<%-- 				background-image: url("<%=request.getContextPath()%>/resources/background/3.jpg"); --%>
				background-color: rgb(220,225,233);
				position:relative;
				z-index:1;
			}
			main {
 				position: relative;
 				z-index:2;
 				top: 50px;
 				left: 0;
/* 				background: white; */
			}
			footer {
				position: relative;
 				z-index:1;
 				height:80px;
 				background-color:red;
 				bottom:-1500px;
 				left:0;
			}
		</style>
		
	</head>
	<body>
		<tiles:insertAttribute  name="headerMenu"/>
		<main class="col-md-10 ks-lm-radius mx-auto">
			<tiles:insertAttribute  name="content"/>
		</main>
		<footer class="footer" >
			<tiles:insertAttribute  name="footer" ignore="true"/>
		</footer>
		
		<tiles:insertAttribute  name="postScript"/>
	</body>
</html>
