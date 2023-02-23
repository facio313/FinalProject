<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 20.      최경수            최초작성
* 2023. 2. 22.      최경수            틀 잡기
* 2023. 2. 23.      최경수            내용 채우기
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<link href="<%=request.getContextPath()%>/resources/cks/processView.css" rel="stylesheet"/>

<div style="margin-top: 70px; padding-left: 50px; padding-right: 50px;">
	<ul class="responsive-table" style="margin-bottom: 100px; padding-left: 50px; padding-right: 50px;">
	  <li class="table-header">
	    <div class="col col-5">${anno.annoTitle}</div>
	  </li>
	  <li class="table-row">
	    <div class="col col-9">
	    	<table class="table table-border">
				<tr>
					<th>법인명</th>
					<td colspan="2">${anno.company.cmpName}</td>
					<th>회사대표자성명</th>
					<td colspan="2">${anno.company.cmpRepName}</td>
					<th>회사주요사업명</th>
					<td colspan="2">${anno.company.cmpMbName}</td>
				</tr>
				<tr>
					<th>근무환경</th>
					<td colspan="2">${anno.annoWorkenv}</td>
					<th>수습기간</th>
					<td colspan="2">${anno.annoProbation}</td>
					<th>연봉급여</th>
					<td colspan="2">${anno.annoSalary}</td>
				</tr>
				<tr>
					<th>공고시작날짜</th>
					<td colspan="2">${anno.annoStartdate}</td>
					<th>공고종료날짜</th>
					<td colspan="2">${anno.annoEnddate}</td>
					<th>기본주소</th>
					<td colspan="2">${anno.company.cmpAddr1} ${anno.company.cmpAddr2}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="8">${anno.annoContent}</td>
				</tr>
	    	</table>
	    </div>
   	    <div>
	    	<img src="${pageContext.request.contextPath}/resources/images/hero_1.jpg" style="width:100%; height: 100%;"/>
	    </div>
	  </li>
	</ul>
</div>

<c:set var="detail" value="${anno.detailList[0]}"/>

<ul class="responsive-table" style="margin-bottom: 100px; padding-left: 50px; padding-right: 50px;">
<!--   <li class="table-header" style="top:50%; left: 50%; width: 50%; height: 60px; padding: 10px; font-weight: 600; font-size: 25px;"> -->
<!--     <div>진행 현황 모아보기</div> -->
<!--   </li> -->
  <li class="table-row" style="height: 35vh; padding: 0px; box-shadow: 0 0 0 0;">
	<div style="padding-left: 50px; padding-right: 50px; width: 100%; height: 100px;">
		<div style="position: relative; width: 88%; height: 50%; padding: 50px; margin: auto;">
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
		</div>
	  	<div class="card-container">
			<div class="card-contain">
			
				<c:forEach items="${detail.processList}" var="process" varStatus="status">
					<c:set var="start" value="${fn:substring(process.processStartDate, 0, 10)}"/>
		  			<c:set var="sd" value="${fn:replace(start, '-', '')}"/>
		  			<c:set var="end" value="${fn:substring(process.processEndDate, 0, 10)}"/>
		  			<c:set var="ed" value="${fn:replace(end, '-', '')}"/>
					<span class="data-card <c:if test="${sd le now and now le ed}">hovered</c:if>" id="show${status.count}">
						<h3>${process.processCodeName}</h3>
						<h4 style="margin-top: 10px; margin-bottom: 0px;">${fn:substring(process.processStartDate, 0, 10)}</h4>
						<h4>${fn:substring(process.processEndDate, 0, 10)}</h4>
						<p>여기 적을 만한 게 뭐가 있지</p>
						<span class="link-text">내용 보기</span>
					</span>	
				</c:forEach>
			</div>
	  	</div>
	</div>
  </li>
</ul>

<ul class="responsive-table" style="margin-bottom: 100px; padding-left: 50px; padding-right: 50px; width: 100%;">
	<li class="table-row" style="height: 100%; padding: 0px; box-shadow: 0 0 0 0; width: 100%;">
		<div id="disp" style="width: 100%;">
			<c:forEach items="${detail.processList}" var="process" varStatus="status">
				<c:set var="start" value="${fn:substring(process.processStartDate, 0, 10)}"/>
	  			<c:set var="sd" value="${fn:replace(start, '-', '')}"/>
	  			<c:set var="end" value="${fn:substring(process.processEndDate, 0, 10)}"/>
	  			<c:set var="ed" value="${fn:replace(end, '-', '')}"/>
				<div id="disp${status.count }" style="display: <c:choose><c:when test="${sd le now and now le ed}"></c:when><c:otherwise>none</c:otherwise></c:choose>; width: 100%;">
					<ul id="${process.processCodeId}" class="responsive-table itemUl" style="margin-bottom: 100px; padding-left: 50px; width: 100%;">
						<li class="table-header header" style="padding: 10px; font-size: 25px; width: 100%; font-weight: 500; padding-left: 50px; box-shadow: 0px 0px 9px 0px rgb(0 0 0 / 10%);">
							<table style="width: 100%; padding-left: 50px; padding-right: 50px;">
								<tr>
									<th class="col-1"></th>
									<th class="col-2">항목명</th>
									<th class="col-7" style="text-align: center;">상세</th>
									<th class="col-1">점수</th>
									<th class="col-1"></th>
								</tr>
							</table>
						</li>
						
						<!-- ajax 바꿀 곳 -->
						<c:forEach items="${process.itemList}" var="item" varStatus="itemStatus">
						<c:set var="ran"><%= java.lang.Math.round(java.lang.Math.random() * 1234567) %></c:set>
							<li class="table-row" style="height: 100%; padding: 0px; width: 100%; padding-top: 10px; padding-bottom: 10px; padding-left: 50px;">
								<table style="width: 100%;">
									<tr>
										<td class="col-1">${itemStatus.count}</td>
										<td class="col-2">${item.itemCodeName}</td>
										<td class="col-7">${item.itemAsk}</td>
										<td class="col-1">${itemStatus.count * ran}</td>
										<td class="col-1">
											<button class="btn btn-secondary" value="${item.itemCodeId}" style="width: 100%; margin-bottom: 5px;">수정</button>
											<button class="btn btn-danger" value="${item.itemCodeId}" style="width: 100%;">삭제</button>
										</td>
									</tr>						
								</table>
							</li>
						</c:forEach>
						<!-- ajax 바꿀 곳 -->
						
						<li class="table-row footer" style="height: 100%; padding: 0px; box-shadow: 0 0 0 0; width: 100%; padding-top: 10px; padding-bottom: 10px; padding-left: 50px; padding-right: 50px; box-shadow: 0px 0px 9px 0px rgb(0 0 0 / 10%);">
							<table style="width: 100%;">
								<tr>
									<td style="position: relative; text-align: center;">
										<button type="button" class="btn btn-primary newAdd" style="width: 20%;">새 항목 추가하기</button>
										<button type="button" class="btn btn-primary originAdd" style="width: 20%;" data-bs-toggle="modal" data-bs-target="itemModal">기존항목에서 추가하기</button>
									</td>
								</tr>						
							</table>
						</li>
					</ul>
				</div>
			</c:forEach>
		</div>
	</li>
</ul>

<!-- 모달 추가하기 -->


<!-- 모달 추가하기 -->

<script>

let stepss = $(".steps");
for (let i = 0; i < stepss.length; i++) {
	let lastOne = $(stepss[i]).find("div:last-child").attr("id");
	let howMuchIs = 100 / lastOne;
	let nowProcess = $(stepss[i]).children(".step").filter(".completed").next(".selected").not(".completed");
	let percentLine = $(stepss[i]).parent(".pline-container").children(".pline").children(".percent");
	percentLine.css("width", (howMuchIs * nowProcess.attr("id")) + "%");
}
/////////////////////////////////////////////////////////////////////
let newAdd = $(".newAdd");
let itemUl = $(".itemUl");
let header = $(".header:first");
let footer = $(".footer:first");

let makeLiTag = function(index, item) {
	return $("<li>").addClass("table-row").css({"height":"100%", "padding":"0px", "width":"100%", "padding-top":"10px", "padding-bottom":"10px", "padding-left":"50px"}).append(
				$("<table>").css("width", "100%").append(
					$("<tr>").append(
						$("<td>").addClass("col-1").html(index + 1)
						, $("<td>").addClass("col-2").html(item.itemCodeName)
						, $("<td>").addClass("col-7").html(item.itemAsk)
						, $("<td>").addClass("col-1").html("점수")
						, $("<td>").addClass("col-1").append(
							$("<button>").addClass("btn btn-secondary").val(item.itemCodeId).css({"width":"100%", "margin-bottom":"5px"}).html("수정")
							, $("<button>").addClass("btn btn-danger").val(item.itemCodeId).css("width", "100%").html("삭제")
						)
					)
				)
			);
}

let $itemList = function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/process/${anno.annoNo}/${anno.detailList[0].daNo}",
		method : "get",
		dataType : "json",
		success : function(resp) {
			itemUl.empty();
			let processList = resp.anno.detailList[0].processList;
			
			// 나중에 좀 더 효율적으로 바꾸기
			let liTag = [];
			
			$.each(processList, function(index, process) { // 채용과정 개수만큼 돌기(8번)
				let itemList = process.itemList;
				liTag.push(header);
				$.each(itemList, function(index, item) { // 채용과정 항목수만큼 돌기(26번)
					if (process.processCodeId == item.processCodeId) {
						liTag.push(makeLiTag(index, item));
					}
				});
				liTag.push(footer);
				$("#PRC0"+index).append(liTag);
				console.log("#PRC0",index,">>>", liTag)
				liTag = [];
			});
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

/////////////////////////////////////////////////////////////////////
$("span.data-card").on("click", function() {
	// .card-contain이 갖고 있는 모든 span을 조사해서 만약 hovered가 있으면 없애주고
	let spans = $(this).parent().children("span");
	for (let i = 0; i < spans.length; i++) {
		$(spans[i]).removeClass("hovered");
	}
	
	// 선택한 애는 넣어주기
	$(this).addClass("hovered");
	
	// 라디오버튼 체크할 거 값 가져오기
	let id = $(this).attr("id").substring(4);
	$("#disp"+id).show();
	
	let udisp = $("#disp").children().not("#disp"+id);
	for (let i = 0; i < udisp.length; i++) {
		udisp[i].style.display = "none";
	}
	
	$itemList();
});
</script>

