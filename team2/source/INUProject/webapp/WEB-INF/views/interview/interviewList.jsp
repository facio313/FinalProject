<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.ddit.or.kr/class305"  prefix="ui"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/interview.css" />

<style>
.wrap_title_recruit {position: relative; padding: 0 0 0px;}
#paging{font-size: 22pt;}
.wrap_category_type .list_category li a {color: #444;letter-spacing: -1px;line-height: 17px;font-weight: initial;}
.job_interview_list .box_info .company_name {overflow: hidden;padding-top: 6px;color: #666;font-size: 15px;letter-spacing: -1px;text-overflow: ellipsis;white-space: nowrap;font-weight: initial;}
</style>
</head>
<body id="top">
	<div id="overlayer"></div>
	<div class="site-wrap">
		<!-- ?????? -->
		<div id="sri_section" class="  ">
			<div id="sri_wrap">
				<div id="content">
					<div class="wrap_title_recruit title_type2">
						<h1 class="title_common">????????? ?????????
							<span class="value">?????? <b id="totalCnt"></b>???</span>
						</h1>
						<div class="">
							<div class=""></div>
							<div class="">
								<div class="row">
									<div style="text-align:right; padding:10px 16px 12px 12px">
									<c:if test="${not empty memId}">
										<a style="float: right; width: 224px;box-sizing: border-box;" href="${pageContext.request.contextPath }/interview/interviewInsert" class="btn btn-block btn-primary btn-md">????????? ??????</a>
									</c:if>
									</div>
								</div>
							</div>
						</div>
					</div>

					<!-- ???????????? -->
					<div class="wrap_category_type">
						<ul class="list_category">
							<li class="on">
								<a class="<c:if test="${fn:length(param.gubun)<1}">active</c:if>" aria-current="page" href="${pageContext.request.contextPath}/interview/interviewList?gubun=">??????</a>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='1'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=1">??????????????</a>
								<span id="cnt1"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='2'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=2">?????????????????????????</a>
								<span id="cnt2"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='3'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=3">??????????????????????</a>
								<span id="cnt3"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='4'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=4">????????????????HRD</a>
								<span id="cnt4"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='5'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=5">??????????????????????</a>
								<span id="cnt5"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='6'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=6">IT?????????????????</a>
								<span id="cnt6"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='7'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=7">?????????</a>
								<span id="cnt7"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='8'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=8">??????????????????????</a>
								<span id="cnt8"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='9'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=9">??????????????TM</a>
								<span id="cnt9"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='10'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=10">??????????????????????</a>
								<span id="cnt10"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='11'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=11">??????????????MD</a>
								<span id="cnt11"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='12'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=12">??????????????????????</a>
								<span id="cnt12"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='13'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=13">?????????</a>
								<span id="cnt13"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='14'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=14">??????</a>
								<span id="cnt14"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='15'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=15">??????????????</a>
								<span id="cnt15"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='16'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=16">??????</a>
								<span id="cnt16"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='17'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=17">????????R&amp;D</a>
								<span id="cnt17"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='18'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=18">????????????????????????????</a>
								<span id="cnt18"></span>
							</li>
							<li>
								<a class="<c:if test="${param.gubun=='19'}">active</c:if>" href="${pageContext.request.contextPath}/interview/interviewList?gubun=19">??????????????</a>
								<span id="cnt19"></span>
							</li>
						</ul>
					</div>

					<!-- ?????? -->
					<div class="recruilt_list_wrap wrap_job_interview">
						<div class="list_info">
							<div class="searchTypoBox">
								<form:form name="frm" id="searchUI" method="get" modelAttribute="simpleCondition" onclick="return false;">
									<input type="hidden" name="cat_mcls" id="cat_mcls" value="">
									<form:input type="text" class="inpTypo" path="searchWord" id="search_keyword" value="" style="width: 230px" placeholder="?????? ?????? ???????????? ???????????????."/>
									<button type="submit" class="btnTypoSearch" id="searchBtn">??????</button>
									<button type="button" class="btnTypoReset" onclick="location.href='/INUProject/interview/interviewList';return false;">???????????????</button>
								</form:form>
							</div>
						</div>

						<!-- ???????????? -->
						<div class="job_interview_list">
							<ul id="listTop"></ul>
						</div>
						<div class="pagingArea"></div>
					</div>
				</div>
			</div>
		</div>
	</div>

<form id="searchForm">
	<input type="hidden" name="page" />
	<input type="hidden" name="searchWord"/>
</form>

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
<script type="text/javascript">

let listBody = $("#listTop");

let pagingArea = $(".pagingArea").on("click", "a.paging", function(event){
	event.preventDefault();
	let page = $(this).data("page");
	if(!page) return false;
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});

let makeTrTag = function(interview){
	return $("<li>").append(
				$("<a>").attr("href","${pageContext.request.contextPath}/interview/interviewDetail?incumNo="+interview.incumNo).attr("class","inlist_box").append(
						$("<p>").attr("class","sub_title").append(
							$("<span>").attr("class", "in_subtit").html(interview.subTitle)),
						$("<p>").attr("class","title").append(
							$("<em>").html(interview.incumTitle)),

						$("<div>").attr("class","box_info").append(
							$("<div>").attr("class","txt_detail").append(
								$("<p>").attr("class","company_name").html(interview.cmpName),
								$("<p>").attr("class","company_part").append(
									$("<em>").attr("class","inpart").html(interview.department),
									$("<em>").attr("class","inname").html(interview.incumName)),

								$("<p>").attr("class","day_line").append(
									$("<span>").attr("class","day").html(interview.incumDate),
									$("<span>").attr("class","view_count").html(interview.incumHits))),
							$("<div>").attr("class","img_view").append(
								$("<span>").attr("class","img").append(
									$("<img>").attr("src","https://pds.saramin.co.kr/career-information/asset_thumbnail/202302/01/rpdolq_63pd-2so1pr_asset.png")))
						)));
}

let searchForm = $("#searchForm").on("submit", function(event){
	event.preventDefault();
	let url = this.action;
	let method = this.method;
	let queryString = $(this).serialize();
	$.ajax({
		url : url,
		method : method,
		data : queryString,
		dataType : "json",
		success : function(resp) {
			console.log("???????????????:",resp);
			$("#totalCnt").html(resp.pagingVO.totalRecord);

			// console.log("??????????????? ??????:",resp);
			if('span[value=1]'){
				$("#cnt1").html("("+resp.pagingVO.totalRecord+")");
			}

			listBody.empty();
			pagingArea.empty();
			searchForm[0].page.value="";

			let pagingVO = resp.pagingVO;

			let dataList = pagingVO.dataList;
			let trTags = [];

			console.log("????????????:",dataList);
			if(dataList.length>0){
				$.each(dataList, function(index, interview){
					trTags.push(makeTrTag(interview));
				});
			}else {
				// db??? ???????????? ?????? ???
				console.log("?????? ???:",dataList);
				let tr = $("<div>").attr("class", "job_interview_list").append(
						$("<div>").attr("class","no_search_jobdata").append(
							$("<p>").html("???????????????. ???????????? ???????????? ????????? ???????????? ?????? ???????????????.")
						)
				);
				trTags.push(tr);
			}
			listBody.html(trTags);
			if(resp.pagingHTML)
				pagingArea.html(resp.pagingHTML);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
	return false;
}).submit();

let searchUI = $("#searchUI").on("click", "#searchBtn", function(){
	let inputs = searchUI.find(":input[name]");
	$.each(inputs, function(index, input){
		let name = this.name;
		let value = $(this).val();
		searchForm.find("[name="+name+"]").val(value);
	});
	searchForm.submit();
});

$('#search_keyword').keypress(function(event){
    if ( event.which == 13 ) {
        $('#searchBtn').click();
        return false;
    }
});

</script>
</body>
</html>