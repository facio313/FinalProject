<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>INY &mdash; I Need You</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

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
	<!-- HOME -->
	<section class="section-hero overlay inner-page bg-image"
		style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg')"
		id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1 class="text-white font-weight-bold">문의하기</h1>
					<div class="custom-breadcrumbs">
						<a href="#">Help</a> <span class="mx-2 slash">/</span><span
							class="text-white"><strong>Ask</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="site-section" id="next-section" style="display: flex;">
		<div class="container">
			<div class="">
				<div class="">

					<div class="row form-group">
						<div class="col-md-12">
							<p>
								평일 09시 에서 17시까지 문의하신 내용은 당일 답변해드립니다. <br />17시 이후에 문의하신 내용은
								다음날에 답변드리며 주말에 문의하신 내용은 그 다음주 월요일에 답변해 드립니다.
							</p>
						</div>
					</div>
					<form style="display: flex;">

						<div style="padding-right: 100px;">

							<div class="row form-group">
								<div class="col-md-12">
									<label class="text-black" for="email">이메일</label> <input
										type="email" id="email" class="form-control" /> <input
										class="btn btn-primary text-white" type="button" value="인증">
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label class="text-black">구분</label>

									<div class="form-check">
										<input class="form-check-input" type="radio"
											name="flexRadioDefault" id="flexRadioDefault1"> <label
											class="form-check-label" for="flexRadioDefault1">
											개인회원 </label>
									</div>
									<div class="form-check">
										<input class="form-check-input" type="radio"
											name="flexRadioDefault" id="flexRadioDefault2"> <label
											class="form-check-label" for="flexRadioDefault2">
											기업회원 </label>
									</div>
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label class="text-black"> 문의종류 </label> <select
										style="width: 338px">
										<option selected="" value="">선택해주세요</option>
										<option value="4">최저임금 위반/불량 기업/공고 신고</option>
										<option value="5">오류 신고</option>
										<option value="15">이력서 문의</option>
										<option value="16">입사지원 문의</option>
										<option value="17">검색 문의</option>
										<option value="6">회원가입/탈퇴/ID/PW</option>
										<option value="18">공고 문의</option>
										<option value="19">지원자관리 문의</option>
										<option value="20">이메일/알림 문의</option>
										<option value="21">결제/유료 상품 문의</option>
										<option value="12">연봉정보 수정요청</option>
										<option value="24">기업정보</option>
										<option value="9">제안사항</option>
										<option value="13">기타</option>
									</select>
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label class="text-black" for="title">제목</label> <input
										type="text" style="width: 533px" />
								</div>
							</div>

							<div class="row form-group">
								<div class="col-md-12">
									<label class="text-black" for="message">내용</label>
									<textarea name="content" id="content" cols="30" rows="7"
										class="form-control" placeholder="문의 내용을 적어주세요..."></textarea>
								</div>
							</div>

						</div>
						<div>

							<div class="row form-group">
								<div class="col-md-12">
									<label class="text-black">파일첨부</label>
								</div>
							</div>
							<input type="file" />

							<p>
								10MB 이하의 hwp, pdf, zip, MS Office 파일, 이미지 파일(JPG, GIF, PNG, BMP)
								만 등록 가능합니다.
								<!--<br/>(최대 5개까지 가능)-->
							</p>
							<div>
								<h5>
									<strong>[개인정보 수집·이용에 대한 안내]</strong>
								</h5>
								<p>(주)I Need You는 이용자 문의를 처리하기 위해 다음과 같이 개인정보를 수집 및 이용하며,
									이용자의 개인정보를 안전하게 취급하는데 최선을 다하고 있습니다.</p>
								<ul>
									<li>수집항목 : 이메일 주소</li>
									<li>수집·이용목적 : 문의에 따른 원활한 상담 제공</li>
									<li>보유 및 이용기간 :<strong>문의 처리 후 3년간 보관</strong></li>
								</ul>
								<p>
									위 동의를 거부 할 권리가 있으며 동의 거부 시 문의하기 이용이 제한됩니다.<br /> 이외의 방법으로
									문의하시려면 이메일(help@iny.co.kr)을 통하여 문의하시기 바랍니다.
								</p>
								<div>
									<div>
										<input type="checkbox" /> <label>위의 ‘개인정보 수집 및 이용‘에
											동의합니다.</label>
									</div>
								</div>
							</div>
							<div class="row form-group">
								<div class="col-md-12">
									<input type="submit" value="취소하기"
										class="btn btn-primary btn-md text-white" /> <input
										type="submit" value="문의하기"
										class="btn btn-primary btn-md text-white" />
								</div>
							</div>
						</div>
				</div>

				</form>
			</div>
		</div>
		</div>
	</section>
	</div>

	<!-- SCRIPTS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/stickyfill.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/quill.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>
</html>




