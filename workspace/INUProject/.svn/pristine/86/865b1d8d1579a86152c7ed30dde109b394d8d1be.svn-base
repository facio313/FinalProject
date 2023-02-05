<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

    <link rel="stylesheet" href="css/custom-bs.css">
    <link rel="stylesheet" href="css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="css/bootstrap-select.min.css">
    <link rel="stylesheet" href="fonts/icomoon/style.css">
    <link rel="stylesheet" href="fonts/line-icons/style.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/animate.min.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="css/style.css">
      <!-- board CSS -->
  <link rel="stylesheet" href="css/board.css" />
    <!-- board CSS -->
  <link rel="stylesheet" href="css/totalBoard.css" />

    <style>
      .sub_title_tag {display:inline-block;margin-top:60px;padding:8px 0;width:902px;height:56px;box-sizing:border-box;color:#373f57;font-size:36px;letter-spacing:-5px;line-height:56px;vertical-align:top}
      .sub_title_tag strong.stit {display:inline-block;overflow:hidden;padding-right:4px;max-width:95%;text-overflow:ellipsis;vertical-align:top;white-space:nowrap}
      .sub_title_desc {margin-top:13px;color:#5c667b;font-size:15px;letter-spacing:-0.6px;line-height:24px}
      .sub_title_desc {margin-top:8px;width:902px;color:#5c667b;font-size:15px;letter-spacing:-0.6px;line-height:24px}

      .search_form {position:relative;height:42px}
      .search_form .box_search {overflow:hidden;position:absolute;top:0;right:0;z-index:20;border:1px solid #d7dce5;border-radius:4px;background:#fff;box-shadow:none}
      .search_form .input_keyword {position:relative;width:304px;height:40px;box-sizing:border-box}
      .search_form .input_keyword .inpTypo {padding:0 35px 0 12px;width:100%;border:0;background:transparent}
      .search_form .input_keyword .inpTypo::-ms-clear {display:none}
      .search_form .input_keyword .btn_search {position:absolute;top:50%;right:8px;padding:0;width:24px;height:24px;transform:translateY(-50%)}
      .search_form .input_keyword .btn_search:after {display:none}
      .search_form .input_keyword .btn_search svg {padding:2px;width:20px;height:20px;color:#575d6d}
      .search_form .auto_complete_keyword {display:none;border-top:1px solid #e5e5e5}
      .search_form .auto_complete_keyword .wrap_scroll {overflow:hidden;margin-top:7px;height:200px}
      .search_form .auto_complete_keyword .wrap_scroll .scrollbar {width:9px}
      .search_form .auto_complete_keyword .wrap_scroll .track {width:100%}
      .search_form .auto_complete_keyword .wrap_scroll .thumb {width:5px;border-radius:2px;background:#d7dce5}
      .search_form .auto_complete_keyword .wrap_scroll .end {border-radius:2px 2px 0 0;background:#d7dce5} /* WMG-30214 */
      .search_form .auto_complete_keyword .no_result {padding:80px 0;color:#8491a7;font-size:14px;letter-spacing:-1px;line-height:20px;text-align:center}
      .search_form .auto_complete_keyword .btn_keyword {display:block;overflow:hidden;padding:5px 30px 5px 15px;width:100%;height:32px;box-sizing:border-box;color:#222;font-size:13px;letter-spacing:-1px;line-height:22px;text-align:left;text-overflow:ellipsis;white-space:nowrap}
      .search_form .auto_complete_keyword .btn_keyword:hover {font-weight:bold;background:#f2f9ff}
      .search_form .auto_complete_keyword .btn_keyword .match {color:#4876ef;font-weight:bold}
      .search_form .auto_complete_keyword .util {padding:0;height:32px;border-top:1px solid #d7dce5;box-sizing:border-box;text-align:center;background:transparent}
      .search_form .auto_complete_keyword .btn_close {display:block;float:none;padding:0;width:100%;color:#5c667b;font-size:13px;letter-spacing:-1px;line-height:32px}
      .search_form .auto_complete_keyword .btn_close:after {display:none}
      .search_form .box_search.on .auto_complete_keyword {display:block}

      .qna_list_wrap .qna_list_sort {position:relative;padding:20px 0;border-bottom:1px solid #d7dce5}
      .qna_list_wrap .qna_list_sort:after {display:table;clear:both;content:"";table-layout:fixed}
      .qna_list_wrap .qna_list_sort .inpSel {margin-top:8px}
      .qna_list_wrap .qna_list_sort .check_area {margin-top:8px}
      .qna_list_wrap .qna_list_sort .btnSizeL.btn_qna_write {float:right;width:224px;box-sizing:border-box}

      .icoChk_outline {margin-top:8px}

      /* Checkbox */
      .inpChk>.lbl {display:inline-block;color:#373f57;font-size:14px;letter-spacing:-1px;line-height:20px;vertical-align:top}
      .inpChk>.lbl:before {float:left;margin:0 8px 0 0;width:20px;height:20px;background:url(//www.saraminimage.co.kr/sri/person/spr/input_check_radio2.png) no-repeat;content:""}
      .inpChk>.lbl:after {display:table;clear:both;content:"";table-layout:fixed}
      .inpChk>.lbl.hide {visibility:visible;overflow:visible;position:static;top:auto;left:auto;width:auto;height:auto;font-size:0}
      .inpChk>.lbl.hide:before {margin:0}
      .inpChk>.lbl.reverse:before {float:right;margin:0 0 0 8px}
      .inpChk>input {position:absolute;top:0;width:1px;height:1px;outline:none;opacity:0;pointer-events:none}
      .inpChk input+.lbl:before {background-position-y:0}
      .inpChk>input:focus+.lbl:before {outline:5px auto -webkit-focus-ring-color;outline:1px dotted invert}
      .inpChk>input:checked+.lbl:before {background-position-x:-40px}
      .inpChk>input:disabled:checked+.lbl {color:#373f57}
      .inpChk>input:disabled:checked+.lbl:before {background-position-x:-80px}
      .inpChk>input:disabled+.lbl {color:#b4c0d3}
      .inpChk>input:disabled+.lbl:before {background-position-x:-120px}

      .inpChk.icoChk>.lbl {color:#8491a7;line-height:24px}
      .inpChk.icoChk>.lbl:before {margin:0;width:24px;height:24px;background:url(//www.saraminimage.co.kr/sri/person/spr/input_check_radio.png) no-repeat -200px 0}
      .inpChk.icoChk>input:checked+.lbl {color:#373f57}
      .inpChk.icoChk>input:checked+.lbl:before {background-position:-200px -40px}
      .inpChk.icoChk>input:disabled+.lbl:before {background-position:-200px -80px}
      .inpChk.icoChk>input:hover+.lbl,
      .inpChk.icoChk>input:focus+.lbl {color:#373f57}

    .qna_list_wrap .qna_list li .qna_subject {
    display: inline-block;
    overflow: hidden;
    max-width: 100%;
    height: 28px;
    box-sizing: border-box;
    color: #373f57;
    font-size: 20px;
    font-weight: bold;
    letter-spacing: -1px;
    line-height: 28px;
    text-overflow: ellipsis;
    vertical-align: top;
    white-space: nowrap;
}
.qna_list_wrap .qna_list li .qna_desc {
    display: block;
    overflow: hidden;
    margin-top: 12px;
    height: 26px;
    box-sizing: border-box;
    color: #5c667b;
    font-size: 16px;
    letter-spacing: -1px;
    line-height: 26px;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.qna_list_wrap .qna_list li .qna_info {
    display: inline-block;
    float: left;
    position: relative;
    padding-left: 28px;
    height: 24px;
    box-sizing: border-box;
    color: #5c667b;
    font-size: 13px;
    letter-spacing: -0.87px;
    line-height: 24px;
    vertical-align: top;
}
.qna_list_wrap .qna_list li .qna_from {
    display: inline-block;
    overflow: hidden;
    float: left;
    max-width: 300px;
    color: #5c667b;
    font-size: 13px;
    letter-spacing: -0.41px;
    line-height: 24px;
    text-align: right;
    text-overflow: ellipsis;
    white-space: nowrap;
}


    </style>
  </head>
<body id="top">
	<div class="site-wrap">

		<!-- HOME -->
		<section class="section-hero overlay inner-page bg-image"
			style="background-image: url('images/hero_1.jpg');" id="home-section">
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
		<section class="site-section">
			<div class="container">

				<span class="sub_title_tag"> <strong class="stit">게시글
						전체</strong>검색 결과
				</span>
				<div class="sub_title_desc">현재까지 등록된 전체 게시글입니다.</div>


				<!-- 건수 및 검색창 -->
				<div class="search_form">
					<div class="list_num_tit sub">
						전체 <strong>52,332</strong>건
					</div>
					<div class="box_search">
						<div class="input_keyword">
							<input type="text" name="input_keyword" id="input_keyword"
								value="" placeholder="다른 사람들은 어떤 이야기를 할까?" class="inpTypo"
								title="키워드, 기업명 입력">
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
										<ul style="display: block">
										</ul>
										<p class="no_result" style="display: block">자동완성 검색어가 없습니다</p>
									</div>
								</div>
							</div>
							<div class="util">
								<button class="btn_close">닫기</button>
							</div>
						</div>
					</div>
					<div class="" style="display: none">
						<svg xmlns="http://www.w3.org/2000/svg">
                <symbol id="svg_my_8" viewBox="0 0 24 24">
                  <path fill="currentColor"
								d="M7 0c3.866 0 7 3.134 7 7 0 1.756-.647 3.36-1.714 4.59l.068.056 3.394 3.395c.195.195.195.511 0 .707-.174.173-.443.193-.638.058l-.07-.058-3.394-3.394-.056-.068C10.36 13.353 8.756 14 7 14c-3.866 0-7-3.134-7-7s3.134-7 7-7zm0 1C3.686 1 1 3.686 1 7s2.686 6 6 6 6-2.686 6-6-2.686-6-6-6z"
								transform="translate(-1125 -399) translate(447 335) translate(678 64) translate(4 4)"></path>
                </symbol>
              </svg>
					</div>
				</div>

				<!-- 게시글 select/검색조건 -->

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
							<span class="inpChk icoChk"> <input type="checkbox"
								id="popular" class="btn_sort" value="popular"> <label
								class="lbl" for="popular">인기순</label>
							</span> <span class="inpChk icoChk"> <input type="checkbox"
								id="reg_dt" class="btn_sort" value="reg_dt" checked="">
								<label class="lbl" for="reg_dt">최신순</label>
							</span> <span class="inpChk icoChk"> <input type="checkbox"
								id="maxLike" class="btn_sort" value="maxLike"> <label
								class="lbl" for="maxLike">공감 많은 순</label>
							</span> <span class="inpChk icoChk"> <input type="checkbox"
								id="maxAnwr" class="btn_sort" value="maxAnwr"> <label
								class="lbl" for="maxAnwr">댓글 많은 순</label>
							</span>
						</div>
						<button type="button" class="btnSizeL btn_qna_write"
							onclick="location.href='#'">게시글 작성</button>
					</div>
				</div>


				<!-- 검색결과 -->
				<ul class="qna_list" id="qst_and_ans_list">
					<div class="list_qna">
						<span class="position" style="transform: translateY(66px);"></span>
						<li>

							<div class="qna_subject_wrap">
								<span class="qna_subject">남양주 백병원</span>
							</div> <span class="qna_desc">면접보신 분들 있으시면 혹시 면접 분위기가
								어떤가요?&nbsp;자소서 위주로 물어보시는지 어떤 질문을 하시는지 궁금해요</span>
							<div class="qna_data_infos">
								<span class="qna_info qna_like icon-favorite">공감하기</span> <span
									class="qna_info qna_reply icon-comment">댓글달기</span> <span
									class="qna_info qna_view icon-eye">조회 <strong>6</strong></span>
							</div>
					</div>
					<!-- 자세히보기 -->
					<a href="#" class="go"></a>
					</li>

					<div class="row pagination-wrap">
						<div class="col-md-6 text-center text-md-left mb-4 mb-md-0">
						</div>
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