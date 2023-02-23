<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
				<a href="${pageContext.request.contextPath }/interview/interviewList" class="btn_back_list" onmousedown="DETAILPAGE.Detail.gaEvent('qst_detail', 'resume_total')">
					전체게시글
				</a>
        		<!-- 내가 쓴 글에서만 수정 및 삭제가 가능하다. -->
				<a href="${viewURL }" class="btns btnSizeXS colorBlueReverse">수정</a>
				<form action="${pageContext.request.contextPath}/interview/interviewDelete" method="post" class="btns  btnSizeXS colorGrayReverse">
					<input type="hidden" name="incumNo" value="${interview.incumNo }"/>
						<button type="submit">삭제</button>
				</form>
			</div>

          <div class="wrap_interview_part">
            <h1 class="blind">${interview.cmpId  } ${interview.incumTitle }</h1>
            <div class="area_intro">
              <div class="mark_img">
                <img src="https://pds.saramin.co.kr/career-information/asset/202302/01/rpdol6_8xv3-2so1pr_asset.png" alt="직무인터뷰 사진">
              </div>
              <div class="box_info">
                <p class="company_name"><span class="in_name">${interview.cmpId  }</span></p>
                <p class="title">${interview.incumTitle }</p>
                <div class="box_txt">
                  <p class="company_part">${interview.department  } ${interview.incumName }</p>
                  <div class="day_line">
                    <span class="day">${interview.incumDate }</span>
                    <span class="view_count">${interview.incumHits }</span>
                  </div>
                </div>
              </div>
            </div>

            <div class="area_interview_thebody">
              <p class="top_title"><i class="ico_quotation_marks up_mark">따옴표</i>${interview.subTitle }<i class="ico_quotation_marks down_mark">따옴표</i></p>
              <div class="subtit_type01">
                <div class="content_interview interview_type01">
                  <p class="sub_title"> </p>
                  <div class="box_inner mix_cont">
                    <div class="img">
                    	<img src="http://www.saraminimage.co.kr/event/contents/2019interview/smkat_garo.png" alt="직무인터뷰 관련 사진"></div>

                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q1</em>자기소개 부탁드립니다.
                      </p>
                      <div class="answer">안녕하세요. 세븐미어캣 플랫폼기술사업본부의 크로스플랫폼 앱 개발을 맡은 주니어 개발자 '라온' 박병주 책임입니다.</div>
                    </div>
                  </div>

                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q2</em>담당하고 계신 업무를 소개해 주세요.
                      </p>
                      <div class="answer">플랫폼기술사업본부에는 프론트엔드, 백엔드, 인프라 파트로 구성이 되어 있고, 현재 Flutter 크로스플랫폼 프레임워크를 통해 세븐미어캣 앱
                        개발을 담당하고 있습니다. 세븐미어캣은 주차관리와 아파트를 중심으로 한 생활서비스를 제공하는 플랫폼이라 신규 서비스/기능 개발은 물론 지속적으로 고도화하는 업무를 담당하고
                        있어요.
                      </div>
                    </div>
                  </div>

                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q3</em>업무 하실 때 어떤 프로그램을 사용하시나요?
                      </p>
                      <div class="answer">개발에서는 Dart 언어와 Flutter 프레임워크로 앱 개발을 하고 있고, IDE로는 Visual Studio Code를 주로 사용
                        중입니다. Native 코드를 적용해야 할 때나 배포할 때는 Android Studio와 XCode를 사용을 하고 있습니다. 디자인 협업툴은 Figma를 사용 중이고,
                        GitLab으로 소스 형상 관리를 하고 있습니다.
                       </div>
                    </div>
                  </div>

                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q4</em>직무 수행에 필요한 지식은 어떤 것이 있나요?
                      </p>
                      <div class="answer">우선 Flutter에 대한 지식도 필요하지만 Kotlin이나 Swift 같은 Native 개발 쪽 지식이 중요합니다. 크로스 플랫폼
                        개발이라는 것을 유연하게 사용하려면 참조할 라이브러리가 없다든지, 아니면 해당 라이브러리스 커스텀을 할 때 기능은 안드로이드, IOS 각각의 Native 코드로 구현이 되어
                        있어 해당 언어들을 알아야 수월하게 개발이 가능합니다.
                       </div>
                    </div>
                  </div>
                </div>

                <div class="content_interview interview_type05">
                  <p class="sub_title"> </p>
                  <div class="box_inner mix_cont">
                    <div class="img">
                    	<img src="http://www.saraminimage.co.kr/event/contents/2019interview/smkat_sero.png" alt="직무인터뷰 관련 사진"></div>
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q5</em>커리어 성장을 위해 준비하는 것이 있으신가요?
                      </p>
                      <div class="answer">매번 프로젝트를 마치고 회고를 해보면 효율적인 코드 작성에 대한 부분을 많이 고민을 하는 것 같습니다. 코드의 재사용성을 높이고 효율적으로
                        협업을 할 수 있게 디자인 패턴을 준비하고 있습니다.
                      </div>
                    </div>
                  </div>

                  <div class="box_inner inner_position_r">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q6</em>업무를 하며 가장 보람을 느낄 때는 언제인가요?
                      </p>
                      <div class="answer">플랫폼 개발이다 보니 서비스를 개발하고 최종적으로 사용자들에게 배포 후 큰 이슈 없이 잘 사용할 때 보람과 성취감을 많이 느낍니다. 물론
                        이슈가 생겨서 CS, 마켓 리뷰로 접수가 들어올 때도 있습니다. 그럴 때마다 지속적으로 수정사항을 반영 하면서 서비스가 점점 성장하는 것을 느낍니다.
                      </div>
                    </div>
                  </div>

                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q7</em>해당 직무에서 경력을 쌓으면 어떻게 성장할 수 있나요?
                      </p>
                      <div class="answer">Flutter를 활용한 앱개발은 구글, iOS 등 특정 앱 플랫폼에 국한되지 않고 할 수 있는 것이 많습니다. 지금은 앱 개발 정도만 국내에
                        입지가 잡혀 있는 상태인데, Google에서 현재 지속적인 업데이트를 통해 웹, 데스크탑 개발까지 빠르게 단점을 보완하고 있습니다.
                      </div>
                    </div>
                  </div>

                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q8</em>해당 직무의 전망에 대해서 어떻게 생각하시나요?
                      </p>
                      <div class="answer">현재 Flutter는 정식 Stable 버전 릴리즈부터 시작해 4년차인 아직 신생 프레임워크입니다. Google사에서 지속적인 버전
                        업데이트를 진행해서 현재는 3번의 Major 버전 업데이트를 통해 3.3.10 버전까지 올라오면서 이전에 존재했었던 단점들을 많이 보안을 한 상태입니다. 또 다른 특징은
                        안드로이드, IOS 앱 플랫폼뿐만 아니라 웹, 데스크탑 플랫폼까지 하나의 언어로 개발이 가능하고, 개발 속도가 빠르다는 장점이 있어 점점 더 많은 레퍼런스와 속도가 필요한
                        스타트업뿐만 아니라 프로토타입을 빠르게 개발하고 싶은 기업에서 기술스택으로 사용을 할 것으로 예상됩니다.
                      </div>
                    </div>
                  </div>
                </div>

                <div class="content_interview interview_type02">
                  <div class="img">
                  	<img src="http://www.saraminimage.co.kr/event/contents/2019interview/smkat_center.png" alt="직무인터뷰 관련 사진">
                  </div>
                  <p class="sub_title"> </p>
                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q9</em>속해 계신 부서는 어떤 일을 담당하고 있는 부서인가요?
                      </p>
                      <div class="answer">세븐미어캣 앱 서비스는 인공지능 주차관제 시스템이 연동되어 있는 모빌리티 관련 서비스를 제공하기 때문에 어플을 사용하는 입주민들의 연령층이
                        다양한데요. '세븐미어캣'을 사용하는 모든 고객들이 서비스를 좀 더 편리하고 쉽게 이용할 수 있게 쉬운 사용성을 제일 많이 고려하면서 개발하고 있습니다.
                      </div>
                    </div>
                  </div>

                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q10</em>우리팀만의 문화가 있나요?
                      </p>
                      <div class="answer">우선 서로에 대한 호칭은 별명으로 부르고 있습니다. 대표부터 신입까지 전 직원 모두가 해당됩니다. 제 별명인 '라온'은 즐겁다는 뜻의
                        순우리말을 따왔는데요, 즐겁게 일하고 싶다는 제 의지를 담아 만들었습니다. 처음에는 어색한 부분도 없지 않아 있었지만 시간이 지날수록 익숙해지면서 수평적이고 자유로운 부분을
                        많이 느낄 수 있었습니다. 그리고 매일 점심을 먹고 나서 짧게 30분 정도 티타임 시간을 갖고 있습니다. 티타임 시간에는 업무적인 부분이 아니라 개발에서 새로운 트렌드라든지
                        프레임워크 등 각 팀원들이 이런 부분은 적용하면 괜찮을 것 같다 하는 기술에 대해 공유하고 얘기하는 자리입니다.
                      </div>
                    </div>
                  </div>
                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q11</em>아직 직무를 결정하지 못한 취업준비생들에게 해주고 싶은 조언은 무엇인가요?
                      </p>
                      <div class="answer">직무에 대해 확신이 없더라도 일단 시작해 보라고 말해드리고 싶습니다. 스타트업에서 경력을 쌓으며 회사와 함께 성장해 나가는 것도 좋은
                        방법이라고 생각합니다. 저도 첫 직장이 이곳 세븐미어캣이고, 세븐미어캣에 입사해서 실무 경험을 쌓았습니다. 취준생이었을 때보다 더 많은 것들을 배우고 부딪히며 회사와 함께
                        성장해 나가고 있습니다. 회사가 주차 모빌리티 업계에서 입지가 점점 커지고 있는데 내가 회사의 길을 만들어 나간다는 보람도 크고요.
                      </div>
                    </div>
                  </div>

                  <div class="box_inner">
                    <div class="box_question">
                      <p class="question">
                      	<em class="q_num">Q12</em>마지막으로 하고 싶으신 말씀이 있나요?
                      </p>
                      <div class="answer">취업뽀개기 화이팅! 하시고요, 세븐미어캣 채용 공고가 보이면 주저하지 말고 지원하세요! 즐겁게 함께 할 분들을 기다리겠습니다. </div>
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