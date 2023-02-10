<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!doctype html>
<html lang="en">
  <head>
    <title>INY &mdash; I Need You</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <meta name="author" content="Free-Template.co" />
    <link rel="shortcut icon" href="ftco-32x32.png">

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
    <!-- layout CSS -->
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
    <!-- board CSS -->
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
    <!-- pattern CSS -->
  	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />

  </head>
<body id="top">
	<!-- <div class="site-wrap"> -->

		<!-- HOME -->
		<section class="section-hero overlay inner-page bg-image"
			style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg');" id="home-section">
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<h1 class="text-white font-weight-bold">글 전체</h1>
						<div class="custom-breadcrumbs">
							<a href="#">Community</a> <span class="mx-2 slash"></span><span
								class="text-white"><strong>Total Board</strong></span>
						</div>
						<div class="custom-breadcrumbs"></div>
					</div>
				</div>
			</div>
		</section>

	<!-- 여기에 작성 -->
		<div id="sri_section" class=" layout_full ">
      <div id="sri_wrap">
        <div id="content">
          <div class="company_honest_qna">
            <input type="hidden" name="qna_action" value="sub" id="qna_action">
            <input type="hidden" name="keyword" value="" id="keyword">
            <input type="hidden" name="qna_searchType" value="" id="qna_searchType">
            <input type="hidden" name="csn" value="" id="csn"> <input type="hidden" name="influencer" value="" id="influencer">
            <input type="hidden" name="type" value="" id="type">
            <div class="contents_container">
              <div class="sub_top_wrap tag_list">
                <span class="sub_title_tag">
                  <strong class="stit">게시글 전체</strong>
                  방 </span>
                <div class="sub_title_desc">
                  현재까지 등록된 전체 게시글입니다.
                </div>
              </div>
              <div class="search_form">
                <div class="list_num_tit sub">전체 <strong>52,507</strong>건</div>
                <div class="box_search">
                  <div class="input_keyword">
                    <input type="text" name="input_keyword" id="input_keyword" value=""
                      placeholder="다른 사람들은 어떤 이야기를 할까?" class="inpTypo" title="키워드, 기업명 입력">
                    <button type="button" class="spr btn_search">
                      <svg class="icon_search">
                        <use xlink:href="#svg_my_8"></use>
                      </svg>
                    </button>
                  </div>
                  <div class="auto_complete_keyword">
                    <div class="wrap_scroll">
                      <div class="scrollbar disable" style="height: 200px;">
                        <div class="track" style="height: 200px;">
                          <div class="thumb">
                            <div class="end"></div>
                          </div>
                        </div>
                      </div>
                      <div class="viewport">
                        <div class="overview" style="top: 0px;">
                          <ul style="display:block">
                          </ul>
                          <p class="no_result" style="display:block">자동완성 검색어가 없습니다</p>
                        </div>
                      </div>
                    </div>
                    <div class="util">
                      <button class="btn_close">닫기</button>
                    </div>
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
              <div class="qna_list_wrap">
                <div class="qna_list_sort">
                  <div class="inpSel">
                    <select name="option_select_category" title="직무·직업 전체">
                      <option value="">직무·직업 전체</option>
                      <option value="16">기획·전략</option>
                      <option value="14">마케팅·홍보·조사</option>
                      <option value="3">회계·세무·재무</option>
                      <option value="5">인사·노무·HRD</option>
                      <option value="4">총무·법무·사무</option>
                      <option value="2">IT개발·데이터</option>
                      <option value="15">디자인</option>
                      <option value="8">영업·판매·무역</option>
                      <option value="21">고객상담·TM</option>
                      <option value="18">구매·자재·물류</option>
                      <option value="12">상품기획·MD</option>
                      <option value="7">운전·운송·배송</option>
                      <option value="10">서비스</option>
                      <option value="11">생산</option>
                      <option value="22">건설·건축</option>
                      <option value="6">의료</option>
                      <option value="9">연구·R&amp;D</option>
                      <option value="19">교육</option>
                      <option value="13">미디어·문화·스포츠</option>
                      <option value="17">금융·보험</option>
                      <option value="20">공공·복지</option>
                    </select>
                  </div>
                  <div class="icoChk_outline filter">
                    <span class="inpChk icoChk">
                      <input type="checkbox" id="popular" class="btn_sort" value="popular" checked="">
                      <label class="lbl" for="popular">인기순</label>
                    </span>
                    <span class="inpChk icoChk">
                      <input type="checkbox" id="reg_dt" class="btn_sort" value="reg_dt">
                      <label class="lbl" for="reg_dt">최신순</label>
                    </span>
                    <span class="inpChk icoChk">
                      <input type="checkbox" id="maxLike" class="btn_sort" value="maxLike">
                      <label class="lbl" for="maxLike">공감 많은 순</label>
                    </span>
                    <span class="inpChk icoChk">
                      <input type="checkbox" id="maxAnwr" class="btn_sort" value="maxAnwr">
                      <label class="lbl" for="maxAnwr">댓글 많은 순</label>
                    </span>
                  </div>
                  <button type="button" class="btnSizeL btn_qna_write"
                    onclick="location.href='${pageContext.request.contextPath }/board/writeBoard'"
                    onmousedown="SEARCH.Main.gaEvent('search_detail', 'qst_reg')">게시글 작성
                  </button>
                </div>
							<ul class="qna_list" id="qst_and_ans_list">
								<div class="list_qna">
									<span class="position" style="transform: translateY(66px);"></span>


									<c:choose>
										<c:when test="${not empty boardList }">
											<c:forEach items="${boardList }" var="boardList">
												<li>
													<c:url value="/board/detailBoard" var="viewURL">
														<c:param name="boardNo" value="${boardList.boardNo }" />
													</c:url>

													<div class="qna_subject_wrap">
														<span class="qna_subject">${boardList.boardTitle }</span>
													</div> <span class="qna_desc">${boardList.boardContent }</span>
													<div class="qna_data_infos">
														<div class="emoticons_wrap">
															<span class="emoticon"><img
																src="http://www.saraminimage.co.kr/sri/company_review/list_emoji_cheer.png"></span>
															<span class="emoticon"><img
																src="http://www.saraminimage.co.kr/sri/company_review/list_emoji_help.png"></span>
															<span class="emoticon_num">공감 <strong>${boardList.totalLike }</strong></span>
														</div>
														<span class="qna_info qna_reply">댓글 <strong>0</strong></span>
														<span class="qna_info qna_view">조회 <strong>${boardList.boardHit }</strong></span>
														<div class="qna_member_info">
															<span class="qna_from"> ${boardList.memId }님이
																${boardList.boardDate } 작성 </span>
															<div class="toolTipWrap">
																<button type="button"
																	class="btn_qna_bookmark reputeScrap " data-idx="8703"
																	data-value="y" data-reported="n">스크랩</button>
															</div>
														</div>
													</div>
													<a href="${viewURL }"
													class="go">자세히 보기</a>
												</li>

											</c:forEach>
										</c:when>
										<c:otherwise>
											<li>등록된 인터뷰 없음.</li>
										</c:otherwise>
									</c:choose>


								</div>
							</ul>
						</div>
            </div>
          </div>
				<script>
					var searchCodes = null;
					var params = {
						"csn" : "",
						"searchword" : "",
						"keyword" : "",
						"cat_mcls" : "",
						"sortValue" : "",
						"sort" : "popular",
						"replySort" : "",
						"influencerFl" : "n",
						"page" : "1",
						"searchType" : "",
						"action" : "sub",
						"prev" : "sub",
						"influencer" : "",
						"type" : ""
					};
				</script>
				<script src="/js/company-review-qst-and-ans/Main.js?v=20230202163408" type="text/javascript"></script>
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