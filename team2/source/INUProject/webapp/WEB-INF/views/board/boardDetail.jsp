<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
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
<style type="text/css">
.inpSel>select {padding: 2px 36px 4px 12px;width: 100%;min-width: 80px;height: 40px;border: 1px solid #d7dce5;border-radius: 4px;box-sizing: border-box;color: #5c667b;font-size: 14px;letter-spacing: -1px;line-height: 20px;text-align: left;vertical-align: top;background: #fff url(//www.saraminimage.co.kr/sri/person/bg/bg_select_default.png) no-repeat right 12px top 50%;cursor: pointer;-webkit-appearance: none;-moz-appearance: none;}
</style>
</head>
<body id="top">
<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.realMember" var="memberVO"/>
</security:authorize>
<input type="hidden" id="boardNo" value="${board.boardNo}">
<input type="hidden" id="memId" value="${memId}">
	<!-- ?????? -->
	<div id="sri_section" class=" layout_full ">
		<div id="sri_wrap">
			<div id="content">
				<div class="company_honest_qna">
					<div class="contents_container detail_wrap">
						<a href="${pageContext.request.contextPath }/board/boardTotal" class="btn_back_list" onmousedown="DETAILPAGE.Detail.gaEvent('qst_detail', 'resume_total')">?????? ?????????</a>

						<!-- ????????? ?????? -->
						<div class="post_view_wrap">
							<div class="post_top">
								<h1 class="qna_subject">${board.boardTitle }</h1>

								<div class="post_btns">
									<c:url value="/board/boardUpdate" var="viewURL">
										<c:param name="what" value="${board.boardNo }" />
									</c:url>

								<input type="hidden" name="memId" value="${memId}" />
								<%-- <p>${board.memId } vs ${memId}</p> --%>
									<c:if test="${board.memId == memId}">
										<a href="${viewURL}" class="btns btnSizeXS colorBlueReverse">??????</a>
										<form action="${pageContext.request.contextPath}/board/boardDelete" method="post" class="btns  btnSizeXS colorGrayReverse">
											<input type="hidden" name="boardNo" value="${board.boardNo }"/>
											<button type="submit" onclick="return check_submit();">??????</button>
										</form>
									</c:if>
								</div>
							</div>

							<!-- ????????? ?????? -->
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
									<span class="post_date">${board.boardDate } ??????</span>
								</div>
								<div class="post_data_wrap">
									<span class="qna_info qna_like likeTotalCount">${board.likeCnt }</span>
									<span class="qna_info qna_reply">${board.replyCnt }</span>
								</div>
							</div>

							<!-- ????????? ?????? -->
							<div class="post_cont">
								<div>${board.boardContent }</div>
								<c:forEach var="i" begin="0" end="4">
									<img style="max-width: 100%;" alt="${board.attatchList[i].attFilename}"
									src="${pageContext.request.contextPath}/resources/attach/boardFolder/${board.attatchList[i].attSavename}">
								</c:forEach>
							</div>

							<!-- ????????? ???????????? -->
							<ul class="post_emoticon">
								<li>
									<!-- ??????????????? ????????? class??? ??????class+on?????? ?????? -->
									<c:choose>
										<c:when test="${likeOn eq 1}">
											<button type="button" class="emotion like on" data-like-type="1" name="like"></button>
										</c:when>
										<c:otherwise>
											<button type="button" class="emotion like" data-like-type="1" name="like"></button>
										</c:otherwise>
									</c:choose>
										<span class="sympathy_result">?????????<br> <strong id="like">${board.like }</strong></span>
								</li>
								<li>
									<c:choose>
										<c:when test="${likeOn eq 2}">
											<button type="button" class="emotion fun on" data-like-type="2" name="fun"></button>
										</c:when>
										<c:otherwise>
											<button type="button" class="emotion fun" data-like-type="2" name="fun"></button>
										</c:otherwise>
									</c:choose>
										<span class="sympathy_result">????????????<br> <strong id="fun">${board.fun }</strong></span>
								</li>
								<li>
									<c:choose>
										<c:when test="${likeOn eq 3}">
											<button type="button" class="emotion help on" data-like-type="3" name="help"></button>
										</c:when>
										<c:otherwise>
											<button type="button" class="emotion help" data-like-type="3" name="help"></button>
										</c:otherwise>
									</c:choose>
										<span class="sympathy_result">????????????<br> <strong id="help">${board.help }</strong></span>
								</li>
								<li>
									<c:choose>
										<c:when test="${likeOn eq 4}">
											<button type="button" class="emotion cheer on" data-like-type="4" name="cheer"></button>
										</c:when>
										<c:otherwise>
											<button type="button" class="emotion cheer" data-like-type="4" name="cheer"></button>
										</c:otherwise>
									</c:choose>
										<span class="sympathy_result">?????????<br> <strong id="cheer">${board.cheer }</strong></span>
								</li>
							</ul>
						</div>

						<!-- -------------------------------------- ?????? ?????? ?????? -------------------------------------- -->
						<form class="qna_answer_form" name="qna_answer_form" method="post" action="${pageContext.request.contextPath}/reply/replyInsert">
							<div class="comment_input_wrap">
								<div class="comment_input img_add">
									<span class="nickname">${memberVO.memId}</span>
									<input type="hidden" name="boardNo" value="${param.boardNo}" />
									<input type="hidden" name="memId" value="${memId}" />
									<textarea name="replyContent" id="contents"
										<c:if test="${memberVO.memId==null}">readonly</c:if>
									 class="scrollbar" placeholder="????????? ?????? ???????????????, ????????? ?????????~??? ??? ????????? ?????? ????????? ?????????, ?????? ?????? ????????? ????????? ?????? ???????????????!" rows="24" cols="80" required></textarea>
								</div>
								<div class="comment_input_bot info_write"></div>
								<button type="submit" class="btnSizeL comment_submit btn_anwr_register"
									<c:if test="${memberVO.memId==null}">disabled</c:if>
								 name="btn_anwr_register">?????? ??????</button>
							</div>
							<security:csrfInput/>
						</form>
						<!-- -------------------------------------- ?????? ?????? ??? -------------------------------------- -->

						<!-- ?????? ?????? -->
							<c:if test="${not empty reply }">
								<div class="comment_lists_wrap" id="qna_answer_box">
									<div class="comment_lists_sort">
										<div class="inpSel">
											<select id="replySort" name="replySort" title="?????? ?????? ??????">
												<option value="last" selected="selected">?????? ?????????</option>
												<option value="like">?????? ?????????</option>
											</select>
										</div>
									</div>
								<form>
									<div class="list_answer paywall">
										<ul class="comment_lists">
											<c:forEach items="${reply }" var="reply">
												<li>
													<div class="wrap_comment">
														<div class="comment_view">
															<span class="comment_txt">${reply.replyContent }
															</span>
															<div class="comment_data_wrap">
																<button type="button" class="comment_data comment_like">???????????? <strong></strong></button>
																<button type="button" class="comment_data comment_reply">??????????????? <strong></strong></button>
															</div>
															<div class="comment_info">
																<span class="comment_from"><span class="nickname">${reply.memId }</span>?????? ${reply.replyDate } ??????</span>
															</div>
														</div>
														<input type="hidden" name="memId" value="${memId}" />
														<c:if test="${reply.memId == memId}">
															<button type="button" class="btn_comment_etc">?????? ??? ??????</button>

																<!-- ?????? ????????? class??? on ?????? : comment_modify_wrap on -->
																<div class="comment_modify_wrap">
			                                                    	<button type="button" class="btn_comment_mnd" id="btnDelete">??????</button>
			                                                    	<input type="hidden" value="${reply.replyNo }"/>
			                                    				</div>
		                                    			</c:if>
													</div>
												</li>
											</c:forEach>
										</ul>
										</div>
									</form>
							</div>
						</c:if>
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
<!-- ????????? -->
<script type="text/javascript">
	// ????????? ???????????? ??????
	   $(function(){
		   let memId = $("#memId").val();
		   if(memId != ""){
			// ????????? ?????? ?????? ??? ?????? ?????? ??????
			$(".emotion").click(function(){
				let likeType = $(this).data("likeType");
				let like = $(this);
				console.log("????????? ???:",likeType);
				let olike = Number($("#like").html());
				let ofun = Number($("#fun").html());
				let ohelp = Number($("#help").html());
				let ocheer = Number($("#cheer").html());

				let emotions = $(".emotion");
				let active = "";
				for (let i = 0; i < emotions.length; i++){
					if($(emotions[i]).hasClass("on") == true) {
						active = $(emotions[i]).data("likeType");
					}
				}
				if (active == "") {
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
							like.toggleClass('on');
								likeCnt();
								if (likeType == "1") {
									$("#like").html(olike + 1);
								} else if (likeType == "2") {
									$("#fun").html(ofun + 1);
								} else if (likeType == "3") {
									$("#help").html(ohelp + 1);
								} else if (likeType == "4") {
									$("#cheer").html(ocheer + 1);
								}
							}
						},
					});
				} else if (active != "") {
					$.ajax({
						url : "likeDelete",
						method : "post",
						data : {
							boardNo:"${ board.boardNo}"
							, likeType:active
						}
						,
						dataType : "JSON"
						,
						success : function(resp) { // ???????????? ?????? -> ?????????(resp)
							if (active == "1") {
								$("#like").html(olike - 1);
							} else if (active == "2") {
								$("#fun").html(ofun - 1);
							} else if (active == "3") {
								$("#help").html(ohelp - 1);
							} else if (active == "4") {
								$("#cheer").html(ocheer - 1);
							}
							$(".emotion").removeClass("on");
							likeCnt();
						},
						error : function(jqXHR, status, error) { // ????????? ?????? ??????(????????? ?????????)
							console.log(jqXHR);
							console.log(status);
							console.log(error);
						}
					});
				}
			});
		}

		//?????? ?????? ????????????
		$(".btn_comment_etc").click(function(){
			$(this).next().toggleClass('on');
		});

		// ?????? ?????? ?????? -> ????????? ??? ????????? ?????? ??????
		$(".btn_comment_mnd").click(function(){
			let replyNo = $(this).siblings("input").val();
			console.log(replyNo);

			if(confirm("???????????? ????????? ?????? ?????????????????????? ???????????? ????????? ???????????? ??? ????????????..?????? ?????? ???????????? ???????????????, ?????? ??? ?????? ??????????????????!")){
				let str = "<div class='comment_view'><span class='comment_txt'>????????? ?????????????????????</span></div><div class='comment_reply_wrap list_reply'><div id='list_reply_785062'></div></div>";

				$.ajax({
					url : "${pageContext.request.contextPath}/reply/replyDelete?replyNo=" + replyNo,
					method : "post",
					dataType : "json" // ???????????????
					,
					success : function(resp) { // ???????????? ?????? -> ?????????(resp)

					},
					error : function(jqXHR, status, error) { // ????????? ?????? ??????(????????? ?????????)
						console.log(jqXHR);
						console.log(status);
						console.log(error);
					}
				});

				$(this).parent().parent().html(str);

// 				document.form1.action = "/board/boardDelete";
// 				document.form1.submit();
			}else{
				$(".comment_modify_wrap").removeClass('on');
			}
		});

		// ????????? ????????? ???
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
		likeCnt(); // ?????? ???????????? ??? ??????????????? ?????? ??????

		// ?????? ???
		function replyCnt(){
			$.ajax({
				url:"replyCount",
				type: "post",
				dataType:"text",
				data:{
					boardNo:"${ board.boardNo}"
				},
				success:function(count){
					$(".qna_reply").html(count);
				},
			})
		}
		replyCnt(); // ?????? ???????????? ??? ??????????????? ?????? ??????
	});
</script>
<script>
	// ????????? ??????
	function check_submit() {
		if (confirm("???????????? ?????? ?????? ?????????????????????? ???????????? ?????? ???????????? ??? ????????????..?????? ??? ????????? ?????? ??????, ?????? ?????? ?????? ??? ??????????????????.")) {
			alert("???????????? ?????? ???????????????.");
		}else{
			return false;
		}
	};
</script>
</body>
</html>