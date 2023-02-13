<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<!-- MAIN CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/help.css" />
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
</head>

<body id="top">
	<!-- HOME -->
	<section class="section-hero overlay inner-page bg-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg')" id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-white">내 문의 내역</h1>
					<div class="custom-breadcrumbs">
						<a href="${pageContext.request.contextPath}/help/notice">Help</a> <span class="mx-2 slash">/</span><span
							class="text-white"><strong>My Ask</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- 작성 -->
	<div id="sri_section" class="  has_banner">
		<div id="sri_wrap">
			<div id="content">
				<div class="wrap_board_view wrap_help">
					<strong class="view_tit">내 문의 내역</strong>
					<div class="wrap_content_view">
						<div class="area_tit">
							<h1 class="content_tit">${ask.askTitle }</h1>
							<dl class="content_info">
								<dt>문의 날짜:</dt>
								<dd>${ask.askDate }</dd>
							</dl>
						</div>
						<div class="area_content">
							<div class="inner">
								<!-- 공지 컨텐츠 -->
								<div style="white-space: pre-line">${ask.askContent }</div>

								<!-- 첨부파일 있을때 -->
								<div class="replies">

									<!-- 답변 -->
									<div class="reply">
										<div class="txt">
											<p>${ask.refContent}</p>
											<p>
												<br>
											</p>
											<p>남겨주신 내용만으로는 파악이 어렵습니다.</p>
											<p>'재 문의하기'를 통해 구체적으로 말씀해 주시면 확인 후 안내도와드리겠습니다.</p>
											<p>
												<br>
											</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="area_btn">
						<a href="${pageContext.request.contextPath }/ask/askList" class="btn_basic_type01 btn_list" title="이전 목록 바로가기">
							목록
						</a>
					</div>

					<div class="help_find">
						<div class="find_method">
							<p class="desc_method">
								아직도 궁금한 점이 남아있다면, 고객센터로 문의해 주세요. ( 전화문의 : <span class="tel">02-2025-4733</span>)
							</p>
						</div>
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
<script src="${pageContext.request.contextPath}/resources/js/quill.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>
</html>