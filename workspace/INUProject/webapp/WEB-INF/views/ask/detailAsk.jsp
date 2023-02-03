<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>JobBoard &mdash; Website Template by Colorlib</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css" />

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
  </head>
<body id="top">
	<!-- NAVBAR -->
	<header class="site-navbar mt-3">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="site-logo col-6">
					<a href="#">I Need You</a>
				</div>

				<nav class="mx-auto site-navigation">
					<ul class="site-menu js-clone-nav d-none d-xl-block ml-0 pl-0">
						<li><a href="#" class="nav-link">채용공고</a></li>
						<li><a href="#">인재홍보</a></li>
						<li><a href="#">유료상품</a></li>
						<li><a href="#">취업랩</a></li>
						<li><a href="#">커뮤니티</a></li>
						<li><a href="#">부가기능</a></li>
						<li><a href="#">시스템관리</a></li>
						<li><a href="#">고객센터</a></li>

						<li class="d-lg-none"><a href="#"><span class="mr-2">+</span>
								공고 등록하기</a></li>
						<li class="d-lg-none"><a href="login.html">Log In</a></li>
					</ul>
				</nav>

				<div
					class="right-cta-menu text-right d-flex aligin-items-center col-6">
					<div class="ml-auto">
						<a href="#"
							class="btn btn-outline-white border-width-2 d-none d-lg-inline-block"><span
							class="mr-2 icon-add"></span>공고 등록하기</a> <a href="login.html"
							class="btn btn-primary border-width-2 d-none d-lg-inline-block"><span
							class="mr-2 icon-lock_outline"></span>Log In</a>
					</div>
					<a href="#"
						class="site-menu-toggle js-menu-toggle d-inline-block d-xl-none mt-lg-2 ml-3"><span
						class="icon-menu h3 m-0 p-0 mt-2"></span></a>
				</div>
			</div>
		</div>
	</header>

	<!-- HOME -->
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg')"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<h1 class="text-white">내 문의 내역</h1>
					<div class="custom-breadcrumbs">
						<a href="#">Help</a> <span class="mx-2 slash">/</span><span
							class="text-white"><strong>My Ask</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="site-section" id="next-section">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 blog-content">
					<h3 class="mb-4">샘플</h3>
					<p>문의 날짜:2023.02.02</p>
					<p>문의내용~~~~~아무말</p>

					<div class="col-md-12">
						<ul class="comment-list">
							<li class="comment bg-light p-3 border rounded mb-4">
								<div class="vcard bio">
									<p class="mb-5">A</p>
								</div>
								<div class="comment-body">
									<p>문의하신 내용 안내해 드립니다.</p>
									<p>
										남겨주신 내용만으로는 파악이 어렵습니다.<br /> 재문의를 통해 구체적으로 말씀해 주시면 확인 후
										안내도와드리겠습니다.<br />
										<br />
									</p>

									<div class="meta">등록일:2023.02.02</div>
								</div>
							</li>
						</ul>
						<!-- END comment-list -->
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer class="site-footer">
		<div class="container">
			<div class="row mb-5">
				<!-- <div class="col-6 col-md-3 mb-4 mb-md-0">
              <h3>Search Trending</h3>
              <ul class="list-unstyled">
                <li><a href="#">Web Design</a></li>
                <li><a href="#">Graphic Design</a></li>
                <li><a href="#">Web Developers</a></li>
                <li><a href="#">Python</a></li>
                <li><a href="#">HTML5</a></li>
                <li><a href="#">CSS3</a></li>
              </ul>
            </div>
            <div class="col-6 col-md-3 mb-4 mb-md-0">
              <h3>Company</h3>
              <ul class="list-unstyled">
                <li><a href="#">About Us</a></li>
                <li><a href="#">Career</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Resources</a></li>
              </ul>
            </div>
            <div class="col-6 col-md-3 mb-4 mb-md-0">
              <h3>Support</h3>
              <ul class="list-unstyled">
                <li><a href="#">Support</a></li>
                <li><a href="#">Privacy</a></li>
                <li><a href="#">Terms of Service</a></li>
              </ul>
            </div>
            <div class="col-6 col-md-3 mb-4 mb-md-0">
              <h3>Contact Us</h3>
              <div class="footer-social">
                <a href="#"><span class="icon-facebook"></span></a>
                <a href="#"><span class="icon-twitter"></span></a>
                <a href="#"><span class="icon-instagram"></span></a>
                <a href="#"><span class="icon-linkedin"></span></a>
              </div>
            </div> -->
			</div>

			<div class="row text-center">
				<div class="col-12">
					<p class="copyright">
						<small> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy; <script>
                    document.write(new Date().getFullYear());
                  </script> All rights reserved | This template is made with <i
							class="icon-heart text-danger" aria-hidden="true"></i> by <a
							href="https://colorlib.com" target="_blank">Colorlib</a> <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></small>
					</p>
				</div>
			</div>
		</div>
	</footer>
	</div>

	<!-- SCRIPTS -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>
	<script src="js/isotope.pkgd.min.js"></script>
	<script src="js/stickyfill.min.js"></script>
	<script src="js/jquery.fancybox.min.js"></script>
	<script src="js/jquery.easing.1.3.js"></script>

	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.animateNumber.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/quill.min.js"></script>

	<script src="js/bootstrap-select.min.js"></script>

	<script src="js/custom.js"></script>
</body>
</html>

