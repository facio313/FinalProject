<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<head>
 <meta charset="utf-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- CSS -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/interview.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />

<style>
.post_btns{text-align: right; padding: 10px 16px 12px 12px;}
</style>
</head>
<body id="top">
<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.realMember" var="memberVO"/>
</security:authorize>
<input type="hidden" id="memId" value="${memId}">
	<div id="overlayer"></div>
	<div class="site-wrap">
		<!-- 작성 -->
		<div id="sri_section" class="  ">
			<div id="sri_wrap">
				<div id="content">
					<c:url value="/interview/interviewUpdate" var="viewURL">
						<c:param name="what" value="${interview.incumNo }" />
					</c:url>
					<div class="contents_container detail_wrap">
						<div class="post_btns">
							<a href="${pageContext.request.contextPath }/interview/interviewList" class="btn_back_list" onmousedown="DETAILPAGE.Detail.gaEvent('qst_detail', 'resume_total')">전체게시글 </a>

							<!-- 운영자만 수정 및 삭제 가능 -->
							<%-- <p>${interview.memId } vs ${memId}</p> --%>

							<c:if test="${memId==memId}">
								<a href="${viewURL }" class="btns btnSizeXS colorBlueReverse">수정</a>
								<form action="${pageContext.request.contextPath}/interview/interviewDelete" method="post" class="btns  btnSizeXS colorGrayReverse">
									<input type="hidden" name="memId" value="${memId}" />
									<input type="hidden" name="incumNo" value="${interview.incumNo }" />
									<button type="submit">삭제</button>
								</form>
							</c:if>
						</div>

						<div class="wrap_interview_part">
							<h1 class="blind">${interview.cmpId  } ${interview.incumTitle }</h1>
							<div class="area_intro">
								<div class="mark_img">
									<img style="max-width: 100%;" alt="${interview.attatchList[0].attFilename}" src="${pageContext.request.contextPath}/resources/attach/interviewFolder/${interview.attatchList[0].attSavename}">
								</div>
								<div class="box_info">
									<p class="company_name">
										<span class="in_name">${interview.cmpName  }</span>
									</p>
									<p class="title">${interview.incumTitle }</p>
									<div class="box_txt">
										<p class="company_part">${interview.department  } ${interview.incumName }</p>
										<div class="day_line">
											<span class="day">${interview.incumDate }</span> <span
												class="view_count">${interview.incumHits }</span>
										</div>
									</div>
								</div>
							</div>

							<div class="area_interview_thebody">
								<p class="top_title">
									<i class="ico_quotation_marks up_mark">따옴표</i>
									${interview.topTitle }
									<i class="ico_quotation_marks down_mark">따옴표</i>
								</p>
								<div class="subtit_type01">
									<div class="content_interview interview_type01">
										<p class="sub_title"> </p>

										<!-- 1번 -->
										<div class="box_inner mix_cont">
											<div class="img">
												<img style="max-width: 100%;" alt="${interview.attatchList[1].attFilename}" src="${pageContext.request.contextPath}/resources/attach/interviewFolder/${interview.attatchList[1].attSavename}">
											</div>
											<div class="box_question">
												<p class="question">
													<em class="q_num"></em>
													Q1.${interview.question1 }
												</p>
												<div class="answer">${interview.answer1 }</div>
											</div>
										</div>

										<!-- 2~4번 -->
										<div class="box_inner">
											<div class="box_question">
												<p class="question">
													<em class="q_num"></em>
													Q2.${interview.question2 }
												</p>
												<div class="answer">${interview.answer2 }</div>
											</div>
										</div>
										<div class="box_inner">
											<div class="box_question">
												<p class="question">
													<em class="q_num"></em>
													Q3.${interview.question3 }
												</p>
												<div class="answer">${interview.answer3 }</div>
											</div>
										</div>
										<div class="box_inner">
											<div class="box_question">
												<p class="question">
													<em class="q_num"></em>
													Q4.${interview.question4 }
												</p>
												<div class="answer">${interview.answer4 }</div>
											</div>
										</div>

										<!-- 5번 -->
										<div class="content_interview interview_type05">
											<p class="sub_title"> </p>
											<div class="box_inner mix_cont">
												<div class="img">
													<img style="max-width: 100%;" alt="${interview.attatchList[2].attFilename}" src="${pageContext.request.contextPath}/resources/attach/interviewFolder/${interview.attatchList[2].attSavename}">
												</div>
												<div class="box_question">
													<p class="question">
														<em class="q_num"></em>
														Q5.${interview.question5 }
													</p>
													<div class="answer">${interview.answer5 }</div>
												</div>
											</div>

											<!-- 6번 -->
											<div class="box_inner inner_position_r">
												<div class="box_question">
													<p class="question">
														<em class="q_num"></em>
														Q6.${interview.question6 }
													</p>
													<div class="answer">${interview.answer6 }</div>
												</div>
											</div>

											<!-- 7~8번 -->
											<div class="box_inner">
												<div class="box_question">
													<p class="question">
														<em class="q_num"></em>
														Q7.${interview.question7 }
													</p>
													<div class="answer">${interview.answer7 }</div>
												</div>
											</div>
											<div class="box_inner">
												<div class="box_question">
													<p class="question">
														<em class="q_num"> </em>
														Q8.${interview.question8 }
													</p>
													<div class="answer">${interview.answer8 }</div>
												</div>
											</div>
										</div>

										<!-- 9번 -->
										<div class="content_interview interview_type02">
											<div class="img">
												<img style="max-width: 100%;" alt="${interview.attatchList[3].attFilename}" src="${pageContext.request.contextPath}/resources/attach/interviewFolder/${interview.attatchList[3].attSavename}">
												<c:if test="${empty interview.attatchList[3].attSavename }">
													<img style="max-width: 100%;" alt="${interview.attatchList[3].attFilename}" src="${pageContext.request.contextPath}/resources/attach/interviewFolder/기본이미지.jpg">
												</c:if>
											</div>
											<p class="sub_title"></p>
											<div class="box_inner">
												<div class="box_question">
													<p class="question">
														<em class="q_num"></em>
														Q9.${interview.question9 }
													</p>
													<div class="answer">${interview.answer9 }</div>
												</div>
											</div>

											<!-- 10~12번 -->
											<div class="box_inner">
												<div class="box_question">
													<p class="question">
														<em class="q_num"></em>
														Q10.${interview.question10 }
													</p>
													<div class="answer">${interview.answer10 }</div>
												</div>
											</div>
										</div>
									</div>
								</div>
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
<script src="${pageContext.request.contextPath}/resources/js/quill.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>
</html>