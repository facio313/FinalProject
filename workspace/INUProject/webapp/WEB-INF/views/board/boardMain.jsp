<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>

<head>
<!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />

<style>
a:hover {text-decoration: none;}
element.style {
    padding: 9px 12px 11px 12px;
    height: 40px;
    /* border: 1px solid #d7dce5; */
    border-radius: 4px;
    box-sizing: border-box;
    color: #373f57;
    font-family: "Malgun Gothic",gulim,dotum,sans-serif;
    font-size: 14px;
    letter-spacing: -1px;
    line-height: 20px;
    vertical-align: middle;
    background-color: #fff;
}
</style>
</head>

<body id="top">
	<!-- HOME -->
	<section class="section-hero overlay inner-page bg-image" style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg');" id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1 class="text-white font-weight-bold">홈</h1>
					<div class="custom-breadcrumbs">
						<a href="${pageContext.request.contextPath }/board/boardMain">Community</a>
							<span class="mx-2 slash">/</span>
							<span class="text-white"><strong>Home</strong></span>
					</div>
					<div class="custom-breadcrumbs"></div>
				</div>
			</div>
		</div>
	</section>

	<!-- 작성 -->
	<div id="sri_section" class=" layout_full ">
		<div id="sri_wrap">
			<div id="content">
				<div class="company_honest_qna">
					<input type="hidden" name="qna_action" value="sub" id="qna_action">
		            <input type="hidden" name="keyword" value="" id="keyword">
		            <input type="hidden" name="qna_searchType" value="" id="qna_searchType">
		            <input type="hidden" name="csn" value="" id="csn">
		            <input type="hidden" name="influencer" value="" id="influencer">
		            <input type="hidden" name="type" value="" id="type">
					<div class="contents_container">
						<ul class="main_banners banners_th"></ul>
						<div class="wrap_area_left">
							<div class="wrap_story_panel">
								<div class="qna_search">
									<h3 class="title">
										<a href="${pageContext.request.contextPath }/board/boardTotal" class="link_go">실시간 전체글
											<span class="count">52,473</span>개
										</a>
									</h3>

									<!-- 검색 -->
									<div class="search_form">
						              <div class="box_search">
						                <div class="input_keyword">
						                  <input type="text" name="input_keyword" id="input_keyword" value="" placeholder="다른 사람들은 어떤 이야기를 할까?" class="inpTypo" title="키워드, 기업명 입력">
						                  	<button type="button" class="spr btn_search">
						                    	<svg class="icon_search">
						                     	 <use xlink:href="#svg_my_8"></use>
						                   		</svg>
						                    </button>
						                </div>
						              </div>
					                <div class="" style="display:none">
					                  <svg xmlns="http://www.w3.org/2000/svg">
					                    <symbol id="svg_my_8" viewBox="0 0 24 24">
					                      <path fill="currentColor"
					                        d="M7 0c3.866 0 7 3.134 7 7 0 1.756-.647 3.36-1.714 4.59l.068.056 3.394 3.395c.195.195.195.511 0 .707-.174.173-.443.193-.638.058l-.07-.058-3.394-3.394-.056-.068C10.36 13.353 8.756 14 7 14c-3.866 0-7-3.134-7-7s3.134-7 7-7zm0 1C3.686 1 1 3.686 1 7s2.686 6 6 6 6-2.686 6-6-2.686-6-6-6z"
					                        transform="translate(-1125 -399) translate(447 335) translate(678 64) translate(4 4)"></path>
					                    </symbol>
					                  </svg>
					                </div>
									</div>
								</div>

								<!-- 인기글 -->
								<div class="wrap_section wrap_best_story">
									<div class="section_inner">
										<div class="wrap_title">
											<h4 class="title">
												<a href="#" class="link_go"
													onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_qst_more')">
													<b class="hot">HOT</b> 이번주 전체 인기 글 🔥
												</a>
											</h4>
											<a href="#" class="link_more"
												onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_qst_more')">더보기</a>
										</div>

										<ul class="list_story">
											<li>
												<a href="#" class="link" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_qst')">
													<span class="txt_subject">이력서 90군데를 넣었다.,</span>
												</a>
												<div class="util">
													<span class="reply">6</span>
													<span class="views">0</span>
												</div>
											</li>
											<li>
												<a href="#" class="link" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_qst')">
													<span class="txt_subject">중소 회계업무 입사 1년째인데 원래 이런건가요 이게 맞나요...?ㅠㅠ</span>
												</a>
												<div class="util">
													<span class="reply">3</span>
													<span class="views">559</span>
												</div>
											</li>
										</ul>
									</div>
								</div>

								<!-- 주제별 커뮤니티 -->
								<div class="wrap_section wrap_community_topic">
									<div class="wrap_title">
										<h3 class="main_tit">주제별 커뮤니티</h3>
									</div>
									<div class="wrap_slide_category">
										<div class="bx-wrapper" style="max-width: 1374px;">
											<div class="bx-viewport" aria-live="polite" style="width: 100%; overflow: hidden; position: relative; height: 50px;">
												<ul class="list_category js-category" style="width: 11215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
													<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate selected" href="${pageContext.request.contextPath }/board/boardTotal" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															전체글
														</a>
													</li>
													<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															신입
														</a>
													</li>
													<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															취준
														</a>
													</li>
													<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															채용공고
														</a>
													</li>
													<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															자소서
														</a>
													</li>
													<li aria-hidden="false" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															면접
														</a>
													</li>
													<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															Q&amp;A
														</a>
													</li>
													<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															커리어
														</a>
													</li>
													<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															이직
														</a>
													</li>
													<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															퇴사
														</a>
													</li>
													<li aria-hidden="true" style="float: left; list-style: none; position: relative; width: 114px; margin-right: 12px;">
														<a class="item_cate" href="#" onmousedown="SEARCH.Main.gaEvent('main_qst', 'hot_tag')">
															잡담
														</a>
													</li>
												</ul>
											</div>
											<div class="bx-controls bx-has-controls-direction">
												<div class="bx-controls-direction">
													<button type="button" class="bx-prev disabled">
														<span class="blind">이전</span>
													</button>
													<button type="button" class="bx-next">
														<span class="blind">다음</span>
													</button>
												</div>
											</div>
										</div>
									</div>

										<!-- 전체글 -->
									<div class="community_list">
										<li>
											<div class="section_inner">
												<div class="wrap_title">
													<h4 class="title">
														<a href="${pageContext.request.contextPath }/board/boardTotal" class="link_go" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_1')">전체글</a>
													</h4>
													<a href="${pageContext.request.contextPath }/board/boardTotal" class="link_more" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_1')">더보기</a>
												</div>

												<c:choose>
													<c:when test="${not empty boardList }">
														<c:forEach var="i" begin="1" end="4">
															<c:url value="/board/boardDetail" var="viewURL">
																<c:param name="boardNo" value="${boardList[i].boardNo }" />
															</c:url>
															<ul class="list_story">
																<li style="margin : 0 0 17px">
																	<a href="${viewURL }">
																		<span class="txt_subject">
																			<c:out value="${boardList[i].boardTitle }" />
																		</span>
																	</a>
																	<div class="util">
																		<span class="reply">14</span>
																	</div>
																</li>
															</ul>
														</c:forEach>
													</c:when>
													<c:otherwise>
														<li>등록된 게시글 없음.</li>
													</c:otherwise>
												</c:choose>
											</div>
										</li>

										<!-- 신입 -->
										<div class="section_inner">
											<div class="wrap_title">
												<h4 class="title">
													<a href="#" class="link_go" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_2')">신입</a>
												</h4>
												<a href="#" class="link_more" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_2')">더보기</a>
											</div>
											<ul class="list_story">
												<li>
													<a href="#" class="link" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_2')">
														<span class="txt_subject">근로계약서 미작성 신고가능한가요?</span>
													</a>
													<div class="util">
														<span class="reply">0</span>
													</div>
												</li>
											</ul>
										</div>

										<!-- 취준 -->
										<div class="section_inner">
											<div class="wrap_title">
												<h4 class="title">
													<a href="#" class="link_go" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_3')">취준</a>
												</h4>
												<a href="#" class="link_more" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_3')">더보기</a>
											</div>
											<ul class="list_story">
												<li>
													<a href="#" class="link" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_3')">
														<span class="txt_subject">경기권 대학/전문대 교직원 스펙</span>
													</a>
													<div class="util">
														<span class="reply">0</span>
													</div>
												</li>
											</ul>
										</div>

										<!-- 채용공고 -->
										<div class="section_inner">
											<div class="wrap_title">
												<h4 class="title">
													<a href="#" class="link_go" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_4')">채용공고</a>
												</h4>
												<a href="#" class="link_more" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_4')">더보기</a>
											</div>
											<ul class="list_story">
												<li>
													<a href="#" class="link" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_4')">
														<span class="txt_subject">대두식품</span>
													</a>
													<div class="util">
														<span class="reply">3</span>
													</div>
												</li>
											</ul>
										</div>

										<!-- 자소서 -->
										<div class="section_inner">
											<div class="wrap_title">
												<h4 class="title">
													<a href="#" class="link_go" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_5')">자소서</a>
												</h4>
												<a hhref="#" class="link_more" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_5')">더보기</a>
											</div>
											<ul class="list_story">
												<li>
													<a href="#" class="link" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_5')">
														<span class="txt_subject">입사지원서에서 기존의 레이아웃의 범위를 넘지 않는 선이 뭔가요??ㅠ</span>
													</a>
													<div class="util">
														<span class="reply">0</span>
													</div></li>
											</ul>
										</div>

										<!-- 면접 -->
										<div class="section_inner">
											<div class="wrap_title">
												<h4 class="title">
													<a href="#" class="link_go" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_6')">면접</a>
												</h4>
												<a href="#" class="link_more" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_6')">더보기</a>
											</div>
											<ul class="list_story">
												<li>
													<a href="#" class="link" onmousedown="SEARCH.Main.gaEvent('main_qst', 'topic_6')">
															<span class="txt_subject">법무법인 대륜 수원지사 면접 보신분들 있나요?</span>
													</a>
													<div class="util">
														<span class="reply">0</span>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

<!-- SCRIPT -->
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
<script src="${pageContext.request.contextPath}/resources/js/board/bxslider.js"></script>
<script>
function sliderDisableCheck() {
    if ($('.wrap_slide_category .bx-next').hasClass('disabled')) {
        $('.wrap_slide_category').addClass('category_end');
    } else {
        $('.wrap_slide_category').removeClass('category_end');
    }
}
$('.js-category').bxSlider({
    mode: 'horizontal',
    slideWidth: 114,
    moveSlides: 3,
    maxSlides: 35,
    minSlides: 5,
    slideMargin: 12,
    controls: true,
    pager: false,
    infiniteLoop: false,
    hideControlOnEnd: true,
    prevText: '<span class="blind">이전</span>',
    nextText: '<span class="blind">다음</span>',
    touchEnabled: (navigator.maxTouchPoints > 0),
    onSliderLoad: function () {
        sliderDisableCheck();
        $(this).removeClass('visible_hidden');
    },
    onSlideAfter: function () {
        sliderDisableCheck();
    }
});
</script>
</body>
</html>
