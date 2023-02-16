<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 15.      최경수            최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

		<!-- 숫자 애니메이션 -->
		<script src="<%=request.getContextPath()%>/resources/js/isotope.pkgd.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/stickyfill.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/jquery.waypoints.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/jquery.animateNumber.min.js"></script>
		<script src="<%=request.getContextPath()%>/resources/js/custom.js"></script>

<!-- HOME -->
<div class="site-wrap">
  <section class="section-hero overlay inner-page bg-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg');" id="home-section">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
          <h1 class="text-white font-weight-bold">채용과정 관리</h1>
          <div class="custom-breadcrumbs">
            <a href="${pageContext.request.contextPath}/mypage/seeker">My Page</a> <span class="mx-2 slash">/</span>
            <span class="text-white"><strong>My Process</strong></span>
          </div>
        </div>
      </div>
    </div>
  </section>

  <section class="py-5 bg-image overlay-primary fixed overlay" id="next-section" style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg');">
    <div class="container">
      <div class="row mb-5 justify-content-center">
        <div class="col-md-7 text-center">
          <h2 class="section-title mb-2 text-white">나의 채용과정 현황</h2>
        </div>
      </div>
      <div class="row pb-0 block__19738 section-counter">

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
          <span class="caption">내 채용과정 수</span>
        </div>
      </div>
    </div>
  </section>
</div>
  
<div class="top shadow-sm" style="height: 70px;">
	<h1>채용과정</h1>
</div>
<div class="bottom">
	${processList}
	<table>
		<thead>
			<tr>
				<th>제약사항</th>
				<th>세부공고아이디</th>
				<th>분류코드</th>
				<th>각 세부 공고의 각 과정 순번</th>
				<th>시작날짜</th>
				<th>종료날짜</th>
				<th>온라인, 대면 등</th>
				<th>기준만점</th>
				<th>각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</th>
				<th>과정삭제날짜</th>
				<th>과정추가날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${processList}" var="process">
				<tr>
					<td>${process.processLimit}</td>
					<td>${process.daNo}</td>
					<td>${process.processCodeId}</td>
					<td>${process.processSn}</td>
					<td>${process.processStartDate}</td>
					<td>${process.processEndDate}</td>
					<td>${process.processWay}</td>
					<td>${process.processScore}</td>
					<td>${process.tblId}</td>
					<td>${process.processDeleteDate}</td>
					<td>${process.processInsertDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>