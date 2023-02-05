<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>  

<!-- gridstack -->
<link href="<%=request.getContextPath()%>/resources/index/node_modules/gridstack/dist/gridstack.min.css" rel="stylesheet"/>
<script src="${pageContext.request.contextPath}/resources/index/node_modules/gridstack/dist/gridstack-all.js"></script>
<style type="text/css">
	.grid-stack {
		background: transparent;
	}
	.grid-stack-item-content {
		background-color: rgb(255, 255, 255, 0.5);
		border-radius: 16px;
		transition:0.5s;
		box-shadow: 17px 20px 40px rgb(0 0 0 / 21%);
		width:200px;
		
	}
	
	.grid-stack-item-content:hover {
		box-shadow: 17px 20px 50px rgb(0 0 0 / 50%);
	}
	
	.grid-stack-item[gs-w="1"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="2"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="3"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="4"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="5"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="6"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="7"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="8"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="9"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="10"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="11"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	.grid-stack-item[gs-w="12"]:hover {
		transition:0.5s;
		transform:scale(1.02);
	}
	
</style>
<div class="grid-stack">
<!-- ============================================프로필=================================================== -->
<!-- spring security용 -->
    <div class="grid-stack-item"  gs-x="0" gs-y="0" gs-w="3" gs-h="3">
		<security:authorize url="/mypage.do">
			<security:authentication property="principal" var="memberVOWrapper"/>
			<security:authentication property="principal.realMember" var="authMember"/>
			<div class="grid-stack-item-content" style="background-image: url(${pageContext.request.contextPath}/resources/images/Dementor.jpg); background-size: cover; background-position: center;">
				<div id="profile" style="padding: 3%; height: 70%;"></div>
				<div style="height: 30%; background-color: rgb(0, 0, 0, 0.4); color: white;">
					<a href="<c:url value='/mypage/seeker'/>"><h1 style="color: white;">${authMember.memName }[${authMember.memAuthCd }]님</h1></a>
					<a href="<c:url value='/logout'/>" class="logoutBtn">로그아웃</a>
				</div>
			</div>
		</security:authorize>
		<security:authorize url="/join/seeker">
	        <div class="grid-stack-item-content" style="background-image: url(${pageContext.request.contextPath}/resources/images/noImage.png); background-size: cover; background-position: center;">
				<div id="profile" style="padding: 3%; height: 70%;"></div>
				<div style="height: 30%; background-color: rgb(0, 0, 0, 0.4); color: white;">
					<a href="<c:url value='/login'/>"><h1 style="color: white;">로그인</h1></a>
					<a href="<c:url value='/join/seeker'/>">회원가입</a>
				</div>
			</div>
		</security:authorize>
    </div>
<!-- ============================================달력=================================================== -->    
    <div class="grid-stack-item"  gs-x="3" gs-y="0" gs-w="6" gs-h="5">
        <div class="grid-stack-item-content">
			<div id="calendar" style="padding: 3%; background-color: rgb(255,255,255,0.5)"></div>
		</div>
    </div>
<!-- ============================================일정=================================================== -->
    <div class="grid-stack-item"  gs-x="9" gs-y="0" gs-w="3" gs-h="4">
        <div class="grid-stack-item-content">
			<div class="top shadow-sm" style="height: 70px;; background-color: rgb(255, 255, 255, 0.5);">
				<span style="position: relative; left: 8px; top:5px;"><img src="${pageContext.request.contextPath}/resources/images/hero_1.jpg" style="width:60px; height:60px;"></span>
				<span style="position:absolute; left: 68px; top: 5px; font-size: 1.3em;">일정</span><br><span style="position:absolute; left: 68px; top: 40px"><a>자세히 보기</a></span>
			</div>
			<div class="down bg-white" style="height: 100%;">
				<table class="table table-hover table-bordered">
					<thead style="background-color: limegreen;">
						<tr class="col-sm-12">
							<th class="col-sm-2">번호</th>
							<th class="col-sm-3">날짜</th>
							<th class="col-sm-7">일정</th>
						</tr>
					</thead>
					<tbody class="schedule-body">
	
					</tbody>
				</table>
			</div>
		</div>
    </div>
<!-- ============================================빠른메뉴=================================================== -->
    <div class="grid-stack-item"  gs-x="0" gs-y="3" gs-w="3" gs-h="2">
        <div class="grid-stack-item-content">
			<div class="top shadow-sm" style="height: 70px;; background-color: rgb(255, 255, 255, 0.5);">
				<span style="position: relative; left: 8px; top:5px;"><img src="${pageContext.request.contextPath}/resources/images/hero_1.jpg" style="width:60px; height:60px;"></span>
				<span style="position:absolute; left: 68px; top: 5px; font-size: 1.3em;">빠른 메뉴</span><br><span style="position:absolute; left: 68px; top: 40px"><a>설정하러 가지</a></span>
			</div>
			<div class="down bg-white" style="height: 100%;">
			<a href="${pageContext.request.contextPath}/process/apply"><h1 style="color: black;">지원</h1></a>
			<a href="${pageContext.request.contextPath}/resume"><h1 style="color: black;">이력서</h1></a>
			</div>
		</div>
    </div>
<!-- ============================================선형진행도=================================================== -->
    <div class="grid-stack-item"  gs-x="0" gs-y="5" gs-w="6" gs-h="3">
        <div class="grid-stack-item-content">
   			<div class="top shadow-sm" style="height: 70px;; background-color: rgb(255, 255, 255, 0.5);">
				<span style="position: relative; left: 8px; top:5px;"><img src="${pageContext.request.contextPath}/resources/images/Dementor.jpg" style="width:60px; height:60px;"></span>
				<span style="position:absolute; left: 68px; top: 5px; font-size: 1.3em;">빠른 메뉴</span><br><span style="position:absolute; left: 68px; top: 40px"><a>설정하러 가지</a></span>
			</div>
			<div class="down bg-white" style="height: 100%;">
				<br><br><br>
	        	<div class="progress-group row text-center">
		        	<div class="col-sm-3">
		        		<h3>애플</h3>
		        	</div>
					<div class="progress col-sm-9">
					  <div class="progress-bar" role="progressbar" aria-label="Segment one" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
					  <div class="progress-bar bg-success" role="progressbar" aria-label="Segment two" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
					  <div class="progress-bar bg-info" role="progressbar" aria-label="Segment three" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
	        	<div class="progress-group row text-center">
		        	<div class="col-sm-3">
		        		<h3>구글</h3>
		        	</div>
					<div class="progress col-sm-9">
					  <div class="progress-bar" role="progressbar" aria-label="Segment one" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
					  <div class="progress-bar bg-success" role="progressbar" aria-label="Segment two" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
					  <div class="progress-bar bg-info" role="progressbar" aria-label="Segment three" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
	        	<div class="progress-group row text-center">
		        	<div class="col-sm-3">
		        		<h3>아마존</h3>
		        	</div>
					<div class="progress col-sm-9">
					  <div class="progress-bar" role="progressbar" aria-label="Segment one" style="width: 15%" aria-valuenow="15" aria-valuemin="0" aria-valuemax="100"></div>
					  <div class="progress-bar bg-success" role="progressbar" aria-label="Segment two" style="width: 30%" aria-valuenow="30" aria-valuemin="0" aria-valuemax="100"></div>
					  <div class="progress-bar bg-info" role="progressbar" aria-label="Segment three" style="width: 20%" aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"></div>
					</div>
				</div>
			</div>
		</div>
    </div>
<!-- ============================================찜목록=================================================== -->
    <div class="grid-stack-item"  gs-x="6" gs-y="5" gs-w="3" gs-h="3">
        <div class="grid-stack-item-content">
			<div class="top shadow-sm" style="height: 20%; background-color: rgb(255, 255, 255, 0.5);">
				<span style="position: relative; left: 8px; top:5px;"><img src="${pageContext.request.contextPath}/resources/images/Dementor.jpg" style="width:60px; height:60px;"></span>
				<span style="position:absolute; left: 68px; top: 5px; font-size: 1.3em;">디멘터 물리치기 현황</span><br><span style="position:absolute; left: 68px; top: 40px">현재 : 3마리 처치</span>
			</div>
			<div class="down bg-white" style="height: 100%; background-image: url(${pageContext.request.contextPath}/resources/images/app.png); background-size: cover; background-position: center;">
			</div>
		</div>
    </div>
<!-- ============================================알림=================================================== -->
    <div class="grid-stack-item"  gs-x="9" gs-y="4" gs-w="3" gs-h="4">
        <div class="grid-stack-item-content">
			<div class="accordion" id="accordionExample">
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingOne">
						<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
							채용과정
						</button>
					</h2>
					<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
						<table class="table table-hover table-bordered accordion-body">
							<thead>
								<tr class="col-sm-12">
									<th class="col-sm-2">번호</th>
									<th class="col-sm-7">내용</th>
									<th class="col-sm-3">읽음</th>
								</tr>
							</thead>
							<tbody class="alaram-body">
							
							</tbody>
						</table>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingTwo">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
							클래스
						</button>
					</h2>
					<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
						<table class="table table-hover table-bordered accordion-body">
							<thead>
								<tr class="col-sm-12">
									<th class="col-sm-2">번호</th>
									<th class="col-sm-7">내용</th>
									<th class="col-sm-3">읽음</th>
								</tr>
							</thead>
							<tbody class="alaram-body">
							
							</tbody>
						</table>
					</div>
				</div>
				<div class="accordion-item">
					<h2 class="accordion-header" id="headingThree">
						<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
							상담
						</button>
					</h2>
					<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
						<table class="table table-hover table-bordered accordion-body">
							<thead>
								<tr class="col-sm-12">
									<th class="col-sm-2">번호</th>
									<th class="col-sm-7">내용</th>
									<th class="col-sm-3">읽음</th>
								</tr>
							</thead>
							<tbody class="alaram-body">
							
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
    </div>
</div>

<div>
<br><br><br><br><br><br><br><br><br><br><br>
</div>
<!-- ============================================TOP20 공고목록=================================================== -->
<div class="bg-white" style="background-color: rgb(255, 255, 255); border-radius:16px;">
	<div><span><h1>TOP20 공고 목록</h1></span></div>
	<table class="table table-hover table-bordered ">
		<thead>
			<tr>
				<th>순위</th>
				<th>공고회사</th>
				<th>공고명</th>
				<th>자격</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody id="annoBody">
		
		</tbody>
	</table>
</div>

<script>

  var grid = GridStack.init();
  grid.margin(25);

</script>

<!-- fullcalendar -->
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.1/index.global.min.js'></script>
<script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'dayGridMonth',
      headerToolbar: {
    	  left: 'prevYear,prev today',
    	  center: 'title',
    	  right: 'dayGridMonth,dayGridWeek, next,nextYear'
      },
      events: [
    	  {
    		  title: '애플 - 백엔드 개발자 - 입사지원서',
    		  start:'2023-02-03',
    		  end: '2023-02-05'
    	  },
    	  {
    		  title: '애플 - 백엔드 개발자 - 자기소개서',
    		  start:'2023-02-08',
    		  end: '2023-02-10'
    	  }
      ]
    });
    calendar.render();
  $('#calendar').parent().addClass('bg-transparent');
  $('#calendar').children('.fc-view-harness').css('background-color', 'white');
  });
 </script>
 <!-- 일정 -->
 <script>
 	let schedule = "";
 	let alaram = "";
 	for (let i = 1; i <= 5; i++) {
 		schedule += "<tr><td>" + i + "</td><td>2월 3일</td><td>다른 jsp좀 만들어라</td></tr>";
 		alaram += '<tr><td>' + i + '</td><td>알람 내용 넣기</td><td><input type="checkbox"/></td></tr>';
 	}
 	$('.schedule-body').html(schedule);
	$('.alaram-body').html(alaram);
 </script>
 <!-- annoBody -->
 <script>
	let annoTags = "";
 	for (let i = 1; i <= 20; i++) {
 		annoTags += "<tr><td>" + i + "</td><td>" + "-1" + "</td><td>" + "-2" + "</td><td>" + "-3" + "</td><td>" + "-4" + "</td></tr>";
 	}
 	$('#annoBody').html(annoTags);
 </script>