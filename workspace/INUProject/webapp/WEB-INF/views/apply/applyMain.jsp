<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 14.      최경수            최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<div class="site-wrap">
    <section class="section-hero overlay inner-page bg-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg');" id="home-section">
      <div class="container">
        <div class="row">
          <div class="col-md-7">
            <h1 class="text-white font-weight-bold">지원 관리</h1>
            <div class="custom-breadcrumbs">
              <a href="${pageContext.request.contextPath}/mypage/seeker">My Page</a> <span class="mx-2 slash">/</span>
              <span class="text-white"><strong>My Apply</strong></span>
            </div>
          </div>
        </div>
      </div>
    </section>
</div>
<div class="top shadow-sm" style="height: 70px;">
	<h1>내 지원 목록</h1>
</div>
<div>
	<table class="table hover table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>회사</th>
				<th>공고</th>
				<th>직무</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${applyList}" var="apply" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td><a href="${pageContext.request.contextPath}/apply/${apply.applySn}">${apply.daNo}</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>