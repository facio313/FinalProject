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
 				background-color: rgb(234, 237, 242);
				position:relative;
				z-index:1;
			}
			
			main {
 				position: relative;
 				top: 50px;
 				left: 25px;
				background: white;
			}
			
			
			section{
				background-color: white;
			}
		</style>
		
	</head>
	<body id="top" class="d-flex flex-column">
		<tiles:insertAttribute  name="headerMenu"/>
		<div id="main_div" class="row">
			<main class="col-md-10 ks-lm-radius mx-auto" style="border-radius: 30px; padding-top: 50px;">
				<tiles:insertAttribute  name="content"/>
			</main>
		</div>
	
		<footer class="footer">
			<tiles:insertAttribute  name="footer" ignore="true"/>
		</footer>
		
		<tiles:insertAttribute  name="postScript"/>
		
	</body>
</html>
