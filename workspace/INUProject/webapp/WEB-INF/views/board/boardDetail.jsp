<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="author" content="Free-Template.co" />

<!-- CSS -->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/ftco-32x32.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
</head>

<body id="top">
	<!-- 작성 -->
	<div id="sri_section" class=" layout_full ">
		<div id="sri_wrap">
			<div id="content">
				<div class="company_honest_qna">
					<div class="contents_container detail_wrap">
						<a href="${pageContext.request.contextPath }/board/boardTotal" class="btn_back_list" onmousedown="DETAILPAGE.Detail.gaEvent('qst_detail', 'resume_total')">전체 게시글</a>

						<!-- 게시글 상단 -->
						<div class="post_view_wrap">
							<div class="post_top">
								<h1 class="qna_subject">${board.boardTitle }</h1>

								<!-- 내가 쓴 글 또는 삭제한 글이라면 하단의 div태그를 띄우고 아니라면 상단의 div 태그를 띄운다. -->
								<!-- <div class="post_btns">
										<button type="button" class="btns btnSizeXS colorGrayReverse" onclick="window.login()">신고</button>
									</div> -->

								<div class="post_btns">
									<c:url value="/board/boardUpdate" var="viewURL">
										<c:param name="what" value="${board.boardNo }" />
									</c:url>
									<a href="${viewURL}" class="btns btnSizeXS colorBlueReverse">수정</a>
										<form action="${pageContext.request.contextPath}/board/boardDelete" method="post" class="btns  btnSizeXS colorGrayReverse">
											<input type="hidden" name="boardNo" value="${board.boardNo }"/>
												<button type="submit">삭제</button>
										</form>
								</div>
							</div>

							<!-- 게시글 정보 -->
							<div class="post_infos">
								<div class="post_profile">
									<div class="profile_pic_wrap">
										<a href="#" target="_blank">
											<div class="profile_pic profile1">
												<svg><img src="${pageContext.request.contextPath}/resources/images/saramin/iu1.jfif"></img></svg>
											</div>
										</a>
									</div>
									<span class="nickname">${board.memId }</span>
									<span class="post_date">${board.boardDate } 작성</span>
								</div>
								<div class="post_data_wrap">
									<span class="qna_info qna_like likeTotalCount">${board.likeCnt }</span>
									<span class="qna_info qna_reply">9</span>
								</div>
							</div>

							<!-- 게시글 내용 -->
							<div class="post_cont">
								<div>${board.boardContent }</div>
							</div>

							<!-- 게시글 이모티콘 -->
							<ul class="post_emoticon">

									<li>
										<!-- 감정버튼을 누르면 class가 기본class+on으로 바뀜 -->
										<c:choose>
											<c:when test="${likeOn eq 1}">
												<button type="button" class="emotion like on" data-like-type="1"/>
											</c:when>
											<c:otherwise>
												<button type="button" class="emotion like" data-like-type="1"/>
											</c:otherwise>
										</c:choose>
											<span class="sympathy_result">좋아요<br> <strong>0</strong></span>
										</button>
									</li>
									<li>
										<c:choose>
											<c:when test="${likeOn eq 2}">
												<button type="button" class="emotion fun on" data-like-type="2"/>
											</c:when>
											<c:otherwise>
												<button type="button" class="emotion fun" data-like-type="2"/>
											</c:otherwise>
										</c:choose>
											<span class="sympathy_result">재밌어요<br> <strong>0</strong></span>
										</button>
									</li>
									<li>
										<c:choose>
											<c:when test="${likeOn eq 3}">
												<button type="button" class="emotion help on" data-like-type="3">
											</c:when>
											<c:otherwise>
												<button type="button" class="emotion help" data-like-type="3">
											</c:otherwise>
										</c:choose>
											<span class="sympathy_result">도움돼요<br> <strong>0</strong></span>
										</button>
									</li>
									<li>
										<c:choose>
											<c:when test="${likeOn eq 4}">
												<button type="button" class="emotion cheer on" data-like-type="4">
											</c:when>
											<c:otherwise>
												<button type="button" class="emotion cheer" data-like-type="4">
											</c:otherwise>
										</c:choose>
											<span class="sympathy_result">힘내요<br> <strong>0</strong></span>
										</button>
									</li>

									</when>
							</ul>
						</div>

						<!-- 댓글 등록 -->
						<form class="qna_answer_form" name="qna_answer_form" enctype="multipart/form-data">
							<input type="hidden" name="qust_idx" value="67155" id="qust_idx">
							<input type="hidden" name="csn" value="" id="csn">
							<div class="comment_input_wrap">
								<div class="comment_input img_add">
									<span class="nickname">${board.memId }</span>
									<textarea name="contents" id="contents" class="scrollbar"
										placeholder="“나도 이런 고민했었지, 라떼는 말이야~” 위 고민과 같은 경험이 있거나, 알고 계신 정보가 있다면 조언 부탁드려요!"
										rows="24" cols="80"></textarea>
									<ul class="add_img_list" style="display: none;">
										<li>
											<div class="thumb">
												<img id="reply_preview"
													src="http://www.saraminimage.co.kr/sri/company_review/dummy_pic1.png"
													alt="">
											</div>
											<button type="button" class="img_delete"></button>
										</li>
									</ul>
								</div>
								<div class="comment_input_bot info_write">
									<div class="image_add_wrap">
										<input type="file" id="reply_file" name="reply_file"
											accept="image/*" style="display: none;"> <label
											for="reply_file" class="btn_image_add">이미지첨부</label> *최대 1개 (
										<em>jpg, png, gif</em>만 가능 )
									</div>
									<!-- <span class="comment_count bytes"> <em>0</em>/1000자 -->
									</span>
								</div>
								<button type="button"
									class="btnSizeL comment_submit btn_anwr_register"
									name="btn_anwr_register">댓글 등록</button>
							</div>
						</form>

						<!-- 댓글 정렬 -->
						<div class="comment_lists_wrap" id="qna_answer_box">
							<div class="comment_lists_sort">
								<div class="inpSel">
									<select id="replySort" name="replySort" title="댓글 정렬 선택">
										<option value="last" selected="">최신 댓글순</option>
										<option value="like">인기 댓글순</option>
									</select>
								</div>
							</div>

							<div class="list_answer paywall">
								<ul class="comment_lists">

									<!-- 삭제된 댓글 -->
									<!-- <li>
											<div class="comment_view delete">
												<span class="comment_txt"> 댓글이 삭제되었습니다 </span>
											</div>

											<div class="comment_reply_wrap list_reply">
												<div id="list_reply_785062"></div>
											</div>

										</li> -->

									<li>
										<div class="wrap_comment ">
											<div class="comment_view">
												<span class="comment_txt">댓글입니다.
												</span>
												<div class="comment_data_wrap">
													<button type="button" class="comment_data comment_like " onclick="window.login()">9</button>
													<button type="button" class="comment_data comment_reply " onclick="window.login();">
														대댓글달기 <strong>1</strong>
													</button>
												</div>
												<div class="comment_info">
													<span class="comment_from"> <span class="nickname">${board.memId }</span>님이 2021.07.28 작성</span>
												</div>
											</div>
										</div>

										<!-- <button type="button" class="btn_comment_etc">수정 및 삭제</button>

										<div class="comment_modify_wrap">
											<button class="btn_comment_mnd comment_report" onmousedown="window.login()">신고</button>
											<button class="btn_comment_mnd comment_report" onmousedown="window.login()">사용자 신고</button>
										</div> -->

										<!-- 대댓글 -->
										<div class="comment_reply_wrap list_reply">
											<div id="list_reply_762068">
												<div class="comment_view ">
													<span class="comment_txt"> 대댓글입니다.
													</span>

													<div class="comment_data_wrap">
														<button type="button" class="comment_data comment_like " onclick="window.login()">5</button>
													</div>
													<div class="comment_info">
														<span class="comment_from">
														<span class="nickname" data-reg_mem_idx="14571806"> ${board.memId } </span> 님이 2022.02.22 작성</span>
													</div>

													<!-- <button type="button" class="btn_comment_etc">수정 및 삭제</button>
													<div class="comment_modify_wrap">
														<button class="btn_comment_mnd" onmousedown="window.login()">신고</button>
														<button class="btn_comment_mnd" onmousedown="window.login()">사용자 신고</button>
													</div> -->
												</div>
											</div>
										</div>

										<!-- 대댓글/답글 입력 -->
										<div class="comment_reply_input">
											<div class="comment_write">
												<input type="text" name="reply_contents_762068" id="reply_contents_762068" value="" class="" placeholder="답변에 댓글을 입력해 보세요.">
											</div>
											<button type="button" class="btn_post  comment_reply_submit" data-qust_idx="8703" data-call_mem_idx="" data-uper_anwr_idx="762068" onclick="window.login();">등록</button>
										</div>
									</li>
									<div class="add_list_answer_contents"></div>
								</ul>

								<!-- 댓글 더 있을 경우 -->
								<!-- <input type="hidden" name="answer_more_page" value="2"
										id="answer_more_page">
									<button class="btn_comments answer_more" data-qust_idx="8703"
										data-reply_sort=""
										onmousedown="DETAILPAGE.Detail.gaEvent('qst_detail', 'more_a')">
										<span>댓글 더보기</span>
									</button> -->
							</div>
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
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<form>
	<input type="hidden" name="likeCheck"/>
	<input type="hidden" name="boardNo" value="${board.boardNo }"/>
</form>
<!-- 좋아요 -->
<script type="text/javascript">



	// 좋아요 존재여부 확인
	   $(function(){
		// 좋아요 버튼 클릭 시 추가 또는 취소
		$(".emotion").click(function(){
			let likeType = $(this).data("likeType");
			let like = $(this);
			console.log("클릭한 것:",likeType);
			$.ajax({
				url:"likeInsert",
				type:"post",
				dataType:"JSON",
				data:{
					boardNo:"${ board.boardNo}"
					, likeType:likeType
				},
				success:function(resp){
					console.log(resp);
					//like.addClass('on');
					if(resp.error){

					}else{
					like.addClass('on');
						likeCnt();
					}
				},
			})
		})

		// 게시글 좋아요 수
		function likeCnt(){
			$.ajax({
				url:"likeCount",
				type: "post",
				dataType:"text",
				data:{
					boardNo:"${ board.boardNo}"
				},
				success:function(count){
					$(".likeTotalCount").html(count);
				},
			})
		}
		likeCnt(); // 처음 시작했을 때 실행되도록 함수 호출
	});
</script>








































</body>
</html>