<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<script src="${pageContext.request.contextPath}/resources/header/lib/wow/wow.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/header/js/main.js"></script>
<!-- link -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/header/css/bootstrap.min.css" rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/header/css/style.css" rel="stylesheet">

<header class="ks-header nav-bar bg-transparentt radius">
    <nav class="navbar navbar-expand-lg navbar-light py-0 px-4 bg-transparent radius">
        <a href="${pageContext.request.contextPath}/" class="navbar-brand d-flex align-items-center text-center">
<%--             <img class="img-fluid" src="${pageContext.request.contextPath}/resources/images/logo.jpg" alt="Icon" style="width: 45px; height: 45px;"> --%>
            <img style="width: 30px;">
            &nbsp;&nbsp;&nbsp;
            <h1 style="font-weight: 700; color: green;">INU</h1>
        </a>
        <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
        	<div class="ks-blank ms-auto"></div>
            <div class="navbar-nav ms-auto">
                <a href="${pageContext.request.contextPath}/announcement" class="nav-item nav-link active">채용공고</a>
            </div>
            <div class="navbar-nav ms-auto">
                <a href="${pageContext.request.contextPath}/selfpr" class="nav-item nav-link active">인재홍보</a>
            </div>
            <div class="nav-item dropdown ms-auto">
                <a href="${pageContext.request.contextPath}/expert"  class="nav-link dropdown-toggle" data-bs-toggle="dropdown">유료상품</a>
                <div class="dropdown-menu rounded-0 m-0">
                    <a href="<c:url value='/expert'/>" class="dropdown-item">메인</a>
                    <a href="<c:url value='/expert/class'/>" class="dropdown-item">클래스</a>
                    <a href="<c:url value='/expert/product'/>" class="dropdown-item">상담</a>
                    <a href="<c:url value='/expert/event'/>" class="dropdown-item">이벤트</a>
                    <a href="<c:url value='/expert/review'/>" class="dropdown-item">리뷰</a>
                </div>
            </div>
            <div class="navbar-nav ms-auto">
                <a href="${pageContext.request.contextPath}/lab" class="nav-item nav-link active">취업랩</a>
            </div>
            <div class="nav-item dropdown ms-auto">
                <a href="${pageContext.request.contextPath}/board/boardMain" class="nav-item nav-link active">커뮤니티</a>
                <div class="dropdown-menu rounded-0 m-0">
                    <a href="<c:url value='/board/boardMain'/>" class="dropdown-item">홈</a>
                    <a href="<c:url value='/board/totalBoard'/>" class="dropdown-item">글 전체</a>
                    <a href="<c:url value='/interview/interviewList'/>" class="dropdown-item">현직자인터뷰</a>
                </div>
            </div>
            <div class="navbar-nav ms-auto">
                <a href="${pageContext.request.contextPath}/" class="nav-item nav-link active">부가기능</a>
            </div>
            <!-- 운영자 만 가능 -->
            <div class="navbar-nav ms-auto">
                <a href="<c:url value='/systemManagement'/>" class="nav-item nav-link active">시스템 관리</a>
            </div>
            <div class="nav-item dropdown ms-auto">
                <a href="<c:url value='/help'/>" class="nav-link dropdown-toggle">고객센터</a>
                <div class="dropdown-menu rounded-0 m-0">
                    <a href="<c:url value='/help'/>" class="dropdown-item">도움말</a>
                    <a href="<c:url value='/help/notice'/>" class="dropdown-item">공지사항</a>
                    <a href="<c:url value='/ask'/>" class="dropdown-item">문의하기</a>
                    <a href="<c:url value='/ask/askList'/>" class="dropdown-item">내문의내역</a>
                </div>
            </div>
        	<div class="ks-blank ms-auto"></div>
        </div>
        <a href="${pageContext.request.contextPath}/mypage/seeker" class="btn btn-primary hover px-3 d-none d-lg-flex ms-auto">마이페이지</a>
	</nav>
</header>