<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>  
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<style>
a {
	color: black;
	text-decoration: none;
}
/* 달력, 일정 */
ul {
	padding: 0px;
}
li {
/*     border-radius: 3px; */
  padding: 25px 30px;
  display: flex;
  justify-content: space-between;
  margin-bottom: 25px;
}
.table-header {
  background-color: #95A5A6;
  font-size: 14px;
  text-transform: uppercase;
  letter-spacing: 0.03em;
  box-shadow: 0 1px 2px rgba(0,0,0,0.16), 0 1px 2px rgba(0,0,0,0.23);
}
.table-row {
  background-color: #ffffff;
  box-shadow: 0px 0px 9px 0px rgba(0,0,0,0.1);
  margin-left: 10px;
  margin-right: 10px;
}
.col-1 {
  flex-basis: 20%;
  color: black;
  left: -25px;
}
.col-2 {
  flex-basis: 40%;
  color: white;
  left: -35px;
}
.col-3 {
  flex-basis: 35%;
  width: 30px;
  left: 50px;
  color: white;
}
.col-4 {
  flex-basis: 5%;
  left: 10px;
  color: white;
}
input {
	border: none;
}
/* 선형 진행도 */
.pline-container {
  position: absolute;
  width: 94%;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
.steps {
  position: relative;
  display: flex;
  justify-content: space-between;
  width: 100%;
}
.step {
  width: 10px;
  height: 10px;
  background: #fff;
  border: 2px solid #0D6EFD;
  border-radius: 50%;
  transition: background 1s;
}
.step.selected {
  border: 2px solid #0D6EFD;   
}
.step.completed {
  border: 2px solid #0D6EFD;
  background: #0D6EFD; 
}
.pline {
  position: absolute;
  width: 100%;
  height: 50%;
  border-bottom: 2px solid #ACACA6;
  z-index: -1;
}
.percent {
  position: absolute;
  top: 3px;
  width: 0;
  height: 100%;
  border-bottom: 4px solid #0D6EFD;
  z-index: 1;
  transition: width 1s;
}
.process-container {
  position: absolute;
  top: 100%;
  text-align: center;
  display: flex;
  justify-content: space-between;
  width: 100%;
}
.process {
  display: inline-block;
  top: 30px;
  width: 100px;
  height: 100px;
  transition: background 1s;
}
.pContainer {
	position: absolute;
	width: 100%;
	height: 100%;
	overflow: auto;
	padding-top: 30px;
}
.plContainer {
	position: relative;
	width: 16%;
	display: inline-block;
	font-size: 20px;
	font-weight: 700;
}
.ppContainer {
	position: relative;
	margin-bottom: 10px;
	width: 80%;
	height: 20%;
	display: inline-block;
}
</style>

<!-- gridstack -->
<link href="<%=request.getContextPath()%>/resources/index/node_modules/gridstack/dist/gridstack.min.css" rel="stylesheet"/>
<link href="<%=request.getContextPath()%>/resources/index/grid.css" rel="stylesheet"/>
<script src="${pageContext.request.contextPath}/resources/index/node_modules/gridstack/dist/gridstack-all.js"></script>
<div class="grid-stack">
<!-- ============================================프로필=================================================== -->
<!-- spring security용 -->
    <div class="grid-stack-item"  gs-x="0" gs-y="0" gs-w="3" gs-h="4">
		<security:authorize url="/mypage.do">
			<security:authentication property="principal" var="memberVOWrapper"/>
			<security:authentication property="principal.realMember" var="authMember"/>
			<!-- incruiter랑 expert도 -->
			<c:choose>
				<c:when test="${not empty authMember.seekerVO.memNickname}">
					<div class="grid-stack-item-content" style="background-image: url('<spring:url value="/image/memberFolder/${authMember.attach.attSavename}"/>'); background-size: cover; background-position: center;">
				</c:when>
				<c:when test="${not empty authMember.incruiterVO.cmpId}">
					<div class="grid-stack-item-content" style="background-image: url('<spring:url value="/image/companyFolder/${authMember.attach.attSavename}"/>'); background-size: cover; background-position: center;">
				</c:when>
				<c:otherwise>
					<div class="grid-stack-item-content" style="background-image: url(${pageContext.request.contextPath}/resources/images/profile.jpg); background-size: cover; background-position: center;">
				</c:otherwise>
			</c:choose>
				<div id="profile" style="padding: 3%; height: 65%;"></div>
				<div style="width: 90%; height: 30%; background-color: rgb(0, 0, 0, 0.4); padding: 20px; border-radius: 16px; margin-left: auto; margin-right: auto;">
					<a href="<c:url value='/mypage/seeker'/>" style="color: white; position: absolute; top: 70%;"><h2 style="color: white; display: inline-block; margin-bottom: 0;">${authMember.memName }</h2>님</a>
					<h6 style="color: white; margin-bottom: 0; position: absolute; top: 81%;">[${authMember.memAuthCd }]</h6>
					<h6 style="color: white; display: inline-block; margin-bottom: 0; position: absolute; top: 86%;">${authMember.seekerVO.memEmail}</h6>
					<h6 style="color: white; display: inline-block; margin-bottom: 0; position: absolute; top: 86%;">${authMember.incruiterVO.incruiterEmail}</h6>
					<a href="<c:url value='/logout'/>" class="logoutBtn" style=" display: inline-block; position: absolute; top: 88%; right: 8%;"><h6 style="color: white; display: inline-block;">로그아웃</h6></a>
				</div>
			</div>
		</security:authorize>
		<security:authorize url="/join/seeker">
	        <div class="grid-stack-item-content" style="background-image: url(${pageContext.request.contextPath}/resources/images/noImage.png); background-size: cover; background-position: center;">
				<div id="profile" style="padding: 3%; height: 65%;"></div>
				<div style="width: 90%; height: 30%; background-color: rgb(0, 0, 0, 0.4); padding: 20px; border-radius: 16px; margin-left: auto; margin-right: auto;">
					<div>
						<a href="<c:url value='/login'/>"><h2 style="color: white;">로그인</h2></a>
					</div>
					<div>
						<a style="color: white;" href="<c:url value='/join/seeker'/>">회원가입</a>
<%-- 						<a href="<c:url value='/join/incruiter'/>">기업회원가입</a> --%>
<%-- 						<a href="<c:url value='/join/seeker'/>">일반회원가입</a> --%>
						<a style="color: white;" href="<c:url value='/help/find'/>">아이디/비밀번호 찾기</a>
					</div>
				</div>
			</div>
		</security:authorize>
    </div>
<!-- ============================================달력=================================================== -->    
    <div class="grid-stack-item"  gs-x="3" gs-y="0" gs-w="6" gs-h="5">
        <div class="grid-stack-item-content">
			<div id="calendar" style="padding: 3%; background-color: rgb(255,255,255,0.5)" data-source="${pageContext.request.contextPath}/process/events/details/process"></div>
		</div>
    </div>
<!-- ============================================일정=================================================== -->
    <div class="grid-stack-item"  gs-x="9" gs-y="0" gs-w="3" gs-h="4">
        <div class="grid-stack-item-content">
			<div id='schedular' class="table-responsive" style="padding-top: 20px; width: 100%; height: 100%;">
				<div style="position: relative; margin-right: 10px; margin-bottom: 15px; background-color: #126CF5; width: 95%%; height: 50px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
					<span style="position: absolute; left: 20px; top: 7px; font-size: 25px; font-weight: 800; color: white;">할 일</span>
				</div>
				<ul class="responsive-table">
				  <li class="table-header">
				    <div class="col col-1">No</div>
				    <div class="col col-2">TODO</div>
				    <div class="col col-3">DEADLINE</div>
				    <div class="col col-4" style="position: relative; left: -15px;">CHECK</div>
				  </li>
				  <li class="table-row">
				    <div class="col col-1">42235</div>
				    <div class="col col-2"><input type="text" value="공고-세부공고-채용과정"></div>
				    <div class="col col-3"><input type="date" value="2023-02-20"></div>
				    <div class="col col-4"><input type="checkBox"></div>
				  </li>
				  <li class="table-row">
				    <div class="col col-1">42442</div>
				    <div class="col col-2"><input type="text" value="세부공고-채용과정"></div>
				    <div class="col col-3"><input type="date" value="2023-02-21"></div>
				    <div class="col col-4"><input type="checkBox"></div>
				  </li>
				  <li class="table-row">
				    <div class="col col-1">42257</div>
				    <div class="col col-2"><input type="text" value="채용과정-항목"></div>
				    <div class="col col-3"><input type="date" value="2023-02-22"></div>
				    <div class="col col-4"><input type="checkBox"></div>
				  </li>
				  <li class="table-row">
				    <div class="col col-1">42311</div>
				    <div class="col col-2"><input type="text" value="점수입력"></div>
				    <div class="col col-3"><input type="date" value="2023-02-23"></div>
				    <div class="col col-4"><input type="checkBox"></div>
				  </li>
				  <li class="table-row">
				    <div class="col col-1">42311</div>
				    <div class="col col-2"><input type="text" value="달력, 선형진행도"></div>
				    <div class="col col-3"><input type="date" value="2023-02-24"></div>
				    <div class="col col-4"><input type="checkBox"></div>
				  </li>
				  <li class="table-row">
				    <div class="col col-1">42311</div>
				    <div class="col col-2"><input type="text" value="첨부파일"></div>
				    <div class="col col-3"><input type="date" value="2023-02-25"></div>
				    <div class="col col-4"><input type="checkBox"></div>
				  </li>
				</ul>
			</div>
		</div>
    </div>
<!-- ============================================빠른메뉴=================================================== -->
    <div class="grid-stack-item"  gs-x="0" gs-y="3" gs-w="3" gs-h="1">
        <div class="grid-stack-item-content">
			<div class="down bg-white" style="height: 100%; display: flex; justify-content: space-evenly;">
				<a href="${pageContext.request.contextPath}/apply" style="display: inline-block; width: 25%; padding: 7px;"><button class="btn btn-outline-primary" style="width: 100%; height: 100%; border-radius: 16px; word-break: keep-all;">지원서</button></a>
				<a href="${pageContext.request.contextPath}/resume" style="display: inline-block; width: 25%; padding: 7px;"><button class="btn btn-outline-primary" style="width: 100%; height: 100%; border-radius: 16px; word-break: keep-all;">이력서</button></a>
				<a href="${pageContext.request.contextPath}/myintro" style="display: inline-block; width: 25%; padding: 7px;"><button class="btn btn-outline-primary" style="width: 100%; height: 100%; border-radius: 16px; word-break: keep-all;">자소서</button></a>
				<a href="${pageContext.request.contextPath}/process" style="display: inline-block; width: 25%; padding: 7px;"><button class="btn btn-outline-primary" style="width: 100%; height: 100%; border-radius: 16px; word-break: keep-all; padding: 0;">채용과정</button></a>
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
			<div class="pContainer">
				<c:forEach items="${list}" var="anno" end="2">
					<c:choose>
						<c:when test="${not empty anno.detailList}">
							<c:forEach items="${anno.detailList}" var="detail">
							<div style="height: 30%; padding-left: 30px;">
								<div class="plContainer">${detail.daFd}</div>
								<div class="ppContainer">
									<c:choose>
										<c:when test="${not empty detail.processList[0].processCodeId}">
											<div class="pline-container">
											  	<div class="pline">
											    	<div class="percent"></div>
											  	</div>
											  	<div class="steps">
											  		<c:forEach items="${detail.processList}" var="process" varStatus="status">
											  			<c:set var="start" value="${fn:substring(process.processStartDate, 0, 10)}"/>
											  			<c:set var="sd" value="${fn:replace(start, '-', '')}"/>
											  			<c:set var="end" value="${fn:substring(process.processEndDate, 0, 10)}"/>
											  			<c:set var="ed" value="${fn:replace(end, '-', '')}"/>
											    		<div class="step <c:if test="${sd le now and now le ed or ed lt now}">selected</c:if> <c:if test="${ed lt now }">completed</c:if>" id="${status.index}"></div>
											    	</c:forEach>
											  	</div>
										  	</div>						  	
										  	
										  	<div class="process-container">
												<c:forEach items="${detail.processList}" var="process" >
											  		<div class="process">
											  			<h5>${process.processCodeName}</h5>
											  			<h6 style="font-size: 7px;">${fn:substring(process.processStartDate, 0, 10)}</h6>
											  			<h6 style="font-size: 7px;">${fn:substring(process.processEndDate, 0, 10)}</h6>
											  		</div>
												</c:forEach>
										  	</div>
									  	</c:when>
									  	<c:otherwise>
									  		<div>
									  			등록된 채용과정이 없습니다.
									  		</div>
									  	</c:otherwise>
									</c:choose>
								</div>
							</div>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<div>
								현재 진행중인 공고가 없음.
							</div>
						</c:otherwise>
					</c:choose>
				</c:forEach>
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
    
    <!-- ============================================유료상품=================================================== -->
    <div class="grid-stack-item"  gs-x="12" gs-y="12" gs-w="12" gs-h="3">
        <div class="grid-stack-item-content">
        
		</div>
    </div>
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
	    initialView: 'dayGridMonth'
//	    , plugins: [ 'interaction', 'dayGrid']
	    , headerToolbar: {
	      	  left: 'prevYear,prev,today',
	      	  center: 'title',
	      	  right: 'dayGridMonth,dayGridWeek,next,nextYear'
	    }
	    , editable: true
	    , droppable: true
	    , locale: 'ko'
	    , buttonText: {
          today: '오늘',
          month: '월',
          week: '주'
	    }
	    , eventSources : {
			url:"${pageContext.request.contextPath}/process/events/details/process",
			dataType:"json",
			extraParams : {
				date : "2022-01-01"
			},
//			textColor : '#252525'
			textColor : 'white'
		}
		, footerToolbar : {
			right: 'anno detail process'
		}
	    , customButtons: {
			anno: {
				text: '공고별',
				click: function() {
					var events = {
		 				url:"${pageContext.request.contextPath}/process/events",
		 				dataType:"json",
		 				extraParams : {
		 					date : "2022-01-01"
		 				},
		 			}
					let eventSources = calendar.getEventSources(); 
					for (let i = 0; i < eventSources.length; i++) { 
					    eventSources[i].remove(); 
					} 
					calendar.addEventSource(events);
					calendar.refetchEvents();					
				}
	        },
	        detail: {
	        	text: '세부공고별',
	        	click: function() {
					var events = {
			 				url:"${pageContext.request.contextPath}/process/events/details",
			 				dataType:"json",
			 				extraParams : {
			 					date : "2022-01-01"
			 				}
			 			}
					let eventSources = calendar.getEventSources(); 
					for (let i = 0; i < eventSources.length; i++) { 
					    eventSources[i].remove(); 
					} 
					calendar.addEventSource(events);
					calendar.refetchEvents();
	        	}
	        },
	        process: {
	        	text: '채용과정별',
	        	click: function() {
					var events = {
			 				url:"${pageContext.request.contextPath}/process/events/details/process",
			 				dataType:"json",
			 				extraParams : {
			 					date : "2022-01-01"
			 				}
			 			}
					let eventSources = calendar.getEventSources(); 
					for (let i = 0; i < eventSources.length; i++) { 
					    eventSources[i].remove(); 
					} 
					calendar.addEventSource(events);
					calendar.refetchEvents();
	        	}
	        }
	    }
	  });
	  
	  calendar.setOption('aspectRatio', 1.2);
	  calendar.setOption('height', '100%');
	  calendar.render();
	  
	  document.querySelector(".fc-today-button").parentNode.style.width = "111%";
	  document.querySelector(".fc-anno-button").parentNode.style.width = "430px";
	  document.querySelector(".fc-anno-button").style.display = "inline-block";
	  document.querySelector(".fc-anno-button").style.width = "130px";
	  document.querySelector(".fc-detail-button").style.display = "inline-block";
	  document.querySelector(".fc-detail-button").style.width = "130px";
	  document.querySelector(".fc-process-button").style.display = "inline-block";
	  document.querySelector(".fc-process-button").style.width = "130px";
	});
	
 	// 선형진행도
 	$(".step").on("click", function(event){
 		let steps = $(this).parent();
 		let last = steps.find("div:last-child").attr("id");
 		console.log(last);
 		let howMuch = 100 / last;
 		
 		
 		let id = $(this).attr("id");
 		let percent = $(event.target).parents(".pline-container").children(".pline").children(".percent");
 		let thisMuch = howMuch * id;
 		
 		//초기화
 		for (let i = 0; i < steps.length; i++) {
 			$("#" + i).removeClass("selected").removeClass("completed");
 			percent.css("width", thisMuch + "%");
 		}
 		
 		//다시
 		for (let i = 0; i < steps.length; i++) {
 			$("#" + i).addClass("selected").addClass("completed");
 			if (id == i) {
 				return;
 			}
 		}
 		
 		percent.css("width", thisMuch+"%");	
 	});


 	let stepss = $(".steps");
 	for (let i = 0; i < stepss.length; i++) {
 		let lastOne = $(stepss[i]).find("div:last-child").attr("id");
 		let howMuchIs = 100 / lastOne;
 		let nowProcess = $(stepss[i]).children(".step").filter(".selected:last")
 		console.log(nowProcess);
 		let percentLine = $(stepss[i]).parent(".pline-container").children(".pline").children(".percent");
 		percentLine.css("width", (howMuchIs * nowProcess.attr("id")) + "%");
 	}
 </script>