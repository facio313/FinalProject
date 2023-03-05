<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html style="backgound-color: rgb(234, 237, 242);">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="preconnect" href="https://fonts.googleapis.com">
		<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
		<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
		
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
/*  				overflow-x:hidden; */
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
			body::-webkit-scrollbar {
			    width: 8px;  /* 스크롤바의 너비 */
			}
			
			body::-webkit-scrollbar-thumb {
			    height: 50%; /* 스크롤바의 길이 */
			    background: rgba(145, 145, 145, 0.8); /* 스크롤바의 색상 */
			    
			    border-radius: 10px;
			}
			
			body::-webkit-scrollbar-track {
			    background: rgba(245, 245, 245, 0.3);  /*스크롤바 뒷 배경 색상*/
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
