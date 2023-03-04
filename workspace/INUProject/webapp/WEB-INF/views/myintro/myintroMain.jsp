<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 14.      최경수            최초작성
* 2023. 2. 24.      최경수            틀 수정
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

      <div class="container" style="position: relative; top: -190px; left: 250px; scale: 0.8;">
        <div class="row pb-0 block__19738 section-counter" style="position: absolute; left: 30%; width: 70%;">

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <strong class="number" data-number="11">0</strong>
            </div>
            <span class="caption">총 항목 개수</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <strong class="number" data-number="3">0</strong>
            </div>
            <span class="caption">오늘 업데이트한 항목 개수</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <strong class="number" data-number="7">0</strong>
            </div>
            <span class="caption">미완성된 항목 개수</span>
          </div>

          <div class="col-6 col-md-6 col-lg-3 mb-5 mb-lg-0">
            <div class="d-flex align-items-center justify-content-center mb-2">
              <strong class="number" data-number="550">0</strong>
            </div>
            <span class="caption">내 이력서 조회수</span>
          </div>
        </div>
      </div>


<div class="top shadow-sm" style="height: 70px;">
	<h1>내가 작성한 자기소개서 목록</h1>
</div>
<div>
	<a href="${pageContext.request.contextPath}/myintro/form"><h1>+</h1></a>
	<table class="table hover table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>내 자기소개서 제목</th>
				<th>내 자기소개서 작성날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${myintroList}" var="myintro" varStatus="status">
				<tr>
					<td>${status.index + 1}</td>
					<td><a href="${pageContext.request.contextPath}/myintro/${myintro.myintroSn}">${myintro.myintroTitle}</a></td>
					<td>${myintro.myintroInsertDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>