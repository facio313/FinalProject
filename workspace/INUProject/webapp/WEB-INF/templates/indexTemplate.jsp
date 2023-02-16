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
		@font-face {
		    font-family: 'Seoul';
		    src: url('${pageContext.request.contextPath}/resources/fonts/SeoulNamsanL.ttf') format('truetype');
		}
			body {
				width:100%;
 				height:100%;
 				overflow-x:hidden;
 				background-color: rgb(234, 237, 242);
/* 				background-color: rgb(246,246,246); */
				/*   background: #eaedf2; */
				position:relative;
				z-index:1;
			}
			main {
 				position: relative;
 				z-index:2;
 				top: 50px;
 				left: 0;
			}

		</style>
		
	</head>
	<body>
		<tiles:insertAttribute name="headerMenu"/>
		<main class="col-md-10 ks-lm-radius mx-auto">
			<tiles:insertAttribute name="content"/>
		</main>
		<tiles:insertAttribute name="postScript"/>
		<tiles:insertAttribute name="floating"/>
	</body>
</html>
