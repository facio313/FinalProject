<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!doctype html>
<html style="background-color: rgb(234, 237, 242);">
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
 				background-color: rgb(234, 237, 242);
				position:relative;
				z-index:1;
				overflow-x: hidden;
			}
			main {
 				position: abosolute;
 				top: 50px;
 				padding-top: 50px;
 				border-radius: 10px;
				background: white;
			}
			button {
				width: 100%;
				
			}
			body::-webkit-scrollbar {
			    width: 8px;  /* 스크롤바의 너비 */
			}
			
			body::-webkit-scrollbar-thumb {
			    height: 30%; /* 스크롤바의 길이 */
			    background: rgba(200, 200, 200, 0.8); /* 스크롤바의 색상 */
			    
			    border-radius: 10px;
			}
			
			body::-webkit-scrollbar-track {
			    background: rgba(245, 245, 245, 0.3);  /*스크롤바 뒷 배경 색상*/
			}
			
			section::-webkit-scrollbar {
			    height: 8px;  /* 스크롤바의 너비 */
			}
			
			section::-webkit-scrollbar-thumb {
			    width: 30%; /* 스크롤바의 길이 */
			    background: rgba(200, 200, 200, 0.8); /* 스크롤바의 색상 */
			    
			    border-radius: 10px;
			}
			
			div::-webkit-scrollbar-track {
			    background: rgba(245, 245, 245, 0.3);  /*스크롤바 뒷 배경 색상*/
			}
						section::-webkit-scrollbar {
			    height: 8px;  /* 스크롤바의 너비 */
			}
			
			div::-webkit-scrollbar-thumb {
			    width: 30%; /* 스크롤바의 길이 */
			    background: rgba(200, 200, 200, 0.8); /* 스크롤바의 색상 */
			    
			    border-radius: 10px;
			}
			
			div::-webkit-scrollbar-track {
			    background: rgba(245, 245, 245, 0.3);  /*스크롤바 뒷 배경 색상*/
			}
		</style>
	</head>
	<body>
		<tiles:insertAttribute  name="headerMenu"/>
		<div class="row">
			<main class="col-md-10 ks-lm-radius mx-auto">
				<tiles:insertAttribute name="subMenu"/>
				<tiles:insertAttribute name="content"/>
			</main>
		</div>
		<tiles:insertAttribute name="floating"/>
		<tiles:insertAttribute name="postScript"/>
	</body>
</html>















