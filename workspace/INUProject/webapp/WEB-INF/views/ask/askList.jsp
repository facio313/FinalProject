<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <title>INY &mdash; I Need You</title>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="Free-Template.co" />
    <link rel="shortcut icon" href="ftco-32x32.png" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css" />

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css" />
  </head>
<body id="top">
	<div class="site-wrap">
		<!-- HOME -->
		<section class="section-hero overlay inner-page bg-image"
			style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg')"
			id="home-section">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1 class="text-white font-weight-bold">내 문의 내역</h1>
						<div class="custom-breadcrumbs">
							<a href="#">Help</a> <span class="mx-2 slash">/</span><span
								class="text-white"><strong>My Ask</strong></span>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section class="site-section">
			<div class="container">
				<div class="row form-group">
					<div class="col-md-12">
						<p>
							평일 09시 에서 17시까지 문의하신 내용은 당일 답변해드립니다. <br />17시 이후에 문의하신 내용은 다음날에
							답변드리며 주말에 문의하신 내용은 그 다음주 월요일에 답변해 드립니다.
						</p>
					</div>
				</div>

				<div class="job-listings mb-5 ">
					<table>
						<colgroup>
							<col style="width: 60px">
							<col style="width: 210px">
							<col>
							<col style="width: 100px">
							<col style="width: 90px">
						</colgroup>
						<tbody>
							<tr>
								<td>1</td>
								<td>기타</td>
								<td><a
									href="${pageContext.request.contextPath }/ask/detailAsk">샘플</a></td>
								<td class="icon-date_range">2023.01.23</td>
								<td class="badge badge-danger">답변 완료</td>
								<!-- 상태에 따른 class
                              status : 접수완료
                              status ing : 확인중
                              status end : 답변 완료-->
							</tr>
						</tbody>
					</table>
				</div>


				<div class="row pagination-wrap">
					<div class="col-md-6 text-center text-md-right">
						<div class="custom-pagination ml-auto">
							<a href="#" class="prev">Prev</a>
							<div class="d-inline-block">
								<a href="#" class="active">1</a> <a href="#">2</a> <a href="#">3</a>
								<a href="#">4</a>
							</div>
							<a href="#" class="next">Next</a>
						</div>
					</div>
				</div>
			</div>
		</section>


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

	<script src="js/bootstrap-select.min.js"></script>

	<script src="js/custom.js"></script>
</body>
</html>
