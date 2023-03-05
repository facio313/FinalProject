<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
		
<div class="top-bar" style="position: relative; left: -20px; background-color: rgb(4, 87, 56); width: 100%; height: 200px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
	<span style="position: absolute; left: 20px; top: 20px; font-size: 50px; font-weight: 900; color: white;">${menuList[0].menuTitle }</span>
	<span style="position: absolute; left: 20px; top: 100px; font-size: 15px; font-weight: 600; color: white;">${menuList[0].subTitle }</span>
	<div style="position: absolute;  left: 20px; top: 140px; font-size: 20px; font-weight: 600; color: white;">
		<c:forEach items="${menuList }" var="menu">
       		<security:authorize url="${menu.menuURL }">
				<a id="a" style="color: white; margin-right: 5px;" class="btn btn-outline-success" href="<c:url value='${menu.menuURL }'/>">${menu.menuText }</a>
			</security:authorize>
       	</c:forEach> 
	</div>
</div>
<script>
// 	$("#a").on("click", function(){
// 		$($(this)).addClass("active");
// 	});
</script>