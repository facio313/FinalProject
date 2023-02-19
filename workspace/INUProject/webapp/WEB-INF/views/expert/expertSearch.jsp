<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 1.      허근주      최초작성
* 2023. 2. 2.      허근주      바디 마진 입력, 사이드바 제거
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>





<!-- 바디 영역 -->
<section style="padding-top: 100px; height: 100%" id="home-section">
</section>
<section class="site-section block__62272" id="next-section">
	<div class="col-12 text-center" data-aos="fade">
		<h2 class="section-title mb-3">${exlprod[0].exlprodName }</h2>
	</div>
	<div class="container">
		<div class="row justify-content-center mb-5" data-aos="fade-up">
			<div id="filters" class="filters text-center button-group col-md-7">
				<%--             <a class="btn btn-primary active" href="<%=request.getContextPath() %>/expert/product">컨설팅</a> --%>
				<%--             <a class="btn btn-primary active" href="<%=request.getContextPath() %>/expert/class">클래스</a> --%>
				<button class="btn btn-primary active" style="background: #dee2e6;"
					data-filter="*">All</button>
				<c:forEach items="${exfield }" var="exfield">
					<button class="btn btn-primary"
						data-filter=".${exfield.exfieldId }"
						style="color: #495057; background: #dee2e6;">${exfield.exfieldName }</button>
				</c:forEach>
			</div>
		</div>
		<c:set var="exprodList" value="${pagingVO.dataList }"></c:set>
		<div id="posts" class="row no-gutter">
			<div class="your-class">
				<c:choose>
					<c:when test="${not empty exprodList }">
						<c:forEach items="${exprodList }" var="exprod">
							<div>
								<div
									class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4 ${exprod.exfieldId }">
									<a
										href="<%=request.getContextPath() %>/expert/prod/${exprod.exprodId }"
										class="item-wrap"> <span class="icon-add">${exprod.exprodName }</span>
										<img class="img-fluid"
										src="<%=request.getContextPath()%>/resources/images/우기1.jfif" />
										
									</a>
									<h3><a href="<%=request.getContextPath() %>/expert/prod/${exprod.exprodId }" class="text-black">${exprod.exprodName }</a></h3>
									<div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
								</div>
							</div>
						</c:forEach>
					</c:when>
				</c:choose>
			</div>
		</div>
	</div>
</section>




