<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Free-Template.co" />

<!-- MAIN CSS -->
<link rel="shortcut icon" href="ftco-32x32.png" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
</head>

<body id="top">
	<div class="site-wrap">
		<!-- HOME -->
		<section class="section-hero overlay inner-page bg-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg')" id="home-section">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1 class="text-white font-weight-bold">내 문의 내역</h1>
						<div class="custom-breadcrumbs">
							<a href="${pageContext.request.contextPath}/help/notice">Help</a>
								<span class="mx-2 slash">/</span>
								<span class="text-white"><strong>My Ask</strong></span>
						</div>
					</div>
				</div>
			</div>
		</section>

		<!-- 작성 -->
		<div id="sri_section" class="  has_banner">
			<div id="sri_wrap">
				<div id="content">
					<div class="wrap_title_recruit">
						<h1 class="title_common">내 문의 내역</h1>
					</div>
					<div class="wrap_board wrap_help">
						<p class="copy">
							평일 09시 에서 17시 까지 문의하신 내용은 당일 답변해드립니다.<br> 17시 이후에 문의하신 내용은
							다음날에 답변, 주말에 문의하신 내용은 그 다음주 월요일에 답변해 드립니다.
						</p>
						<div class="tblType">
							<table>
								<colgroup>
									<col style="width: 100px">
									<col style="width: 210px">
									<col>
									<col style="width: 100px">
									<col style="width: 90px">
								</colgroup>
								<tbody>
									<tr>
										<td class="count">문의번호</td>
										<td class="category">문의종류</td>
										<td class="content_tit">제목</td>
										<td class="date">등록일</td>
										<td class="status end">처리상태</td>
									</tr>

									<c:choose>
										<c:when test="${not empty askList }">
											<c:forEach items="${askList }" var="ask">
												<tr>
													<td>${ask.askNo }</td>
													<td>${ask.askType }</td>
													<td>
														<c:url value="/ask/detailAsk" var="viewURL">
															<c:param name="askNo" value="${ask.askNo }" />
														</c:url>
														<a href="${viewURL}">${ask.askTitle }</a>
													</td>
													<td>${ask.askDate }</td>
													<td>${ask.askStatus }</td>
												</tr>
											</c:forEach>
										</c:when>
										<c:otherwise>
											<tr>
												<td colspan="6">게시글 없음.</td>
											</tr>
										</c:otherwise>
									</c:choose>
								</tbody>
							</table>
						</div>
						<!-- 페이지 -->
					</div>
				</div>
			</div>
		</div>
	</div>

<!-- SCRIPTS -->
<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/stickyfill.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>
</html>