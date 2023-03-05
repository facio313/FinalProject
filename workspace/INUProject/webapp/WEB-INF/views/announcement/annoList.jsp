<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 7.   양서연      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">

<c:set var="prePath" value="${pageContext.request.contextPath}" />
<security:authorize access="isAuthenticated()">
	<security:authentication property="principal" var="memberVOWrapper" />
	<security:authentication property="principal.realMember" var="authMember" />
	<c:set var="authMemId" value="${authMember.memId }" />
</security:authorize>
<c:set var="prePath" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${prePath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${prePath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${prePath}/resources/css/saramin/pattern.css" />
<link rel="stylesheet" href="${prePath}/resources/css/saramin/components.css" />
<link rel="stylesheet" href="${prePath}/resources/css/saramin/jobs-view.css" />
<link rel="stylesheet" href="${prePath}/resources/css/saramin/jobs-recruit.css" />

<!-- MAIN CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

<style>
#temp {
	display: inline-block;
	width: 100%;
	height: calc(1.5em + 0.75rem + 2px);
	padding: 0.375rem 0.75rem;
	font-size: 1rem;
	font-weight: 400;
	line-height: 1.5;
	color: #495057;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid #ced4da;
	border-radius: 0.25rem;
	-webkit-transition: border-color 0.15s ease-in-out, -webkit-box-shadow
		0.15s ease-in-out;
	transition: border-color 0.15s ease-in-out, -webkit-box-shadow 0.15s
		ease-in-out;
	-o-transition: border-color 0.15s ease-in-out, box-shadow 0.15s
		ease-in-out;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
	transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out,
		-webkit-box-shadow 0.15s ease-in-out;
}

.t_center {
	text-align: center;
}

.t_button {
	background-color: transparent;
	border: 0px solid white;
	font-size: 13px;
	color: navy;
}

.close {
	display: inline-block;
	*display: inline;
	text-shadow: 0px
}

.close:after {
	display: inline-block;
	content: "\00d7";
	font-size: 15pt;
}

.selectBox {
	width: 300px;
	display: inline-block;
	margin: 2px
}

.likeIcon {
	margin-left: 5px;
}
</style>
<!-- NAVBAR -->
<header class="site-navbar mt-3">
	<div class="container-fluid"></div>
</header>
<!-- HOME -->
<div class="container">
	<div class="row align-items-center justify-content-center" >
		<div class="col-md-12 ">
			<div class="mb-5 text-center">
				<div class="contents_container">
					<div class="sub_top_wrap tag_list2">
						<span class="sub_title_tag" style="font-size: 30px">
							채용공고 상세검색
						</span>
					</div>
				</div>
			</div>
			<form method="post" class="search-jobs-form" id="searchUI" onsubmit="return false">
				<div class="list_info" style="margin-left: 100px">
					<div>
						<select name="metro" class="form-select form-select-sm selectBox">
							<option value>지역선택(광역)</option>
						</select> 
						<select name="regionCode" class="form-select form-select-sm selectBox">
							<option value>지역선택(기초)</option>
						</select>
					</div>
					<div>
						<select name="industry0" class="form-select form-select-sm selectBox">
							<option value>업종선택(상위)</option>
						</select> 
						<select name="industry1" class="form-select form-select-sm selectBox">
							<option value>업종선택(중위)</option>
						</select> 
						<select name="industryCode" class="form-select form-select-sm selectBox">
							<option value>업종선택(하위)</option>
						</select>
					</div>
					<div>
						<select name="job0" class="form-select form-select-sm selectBox">
							<option value>직종선택(상위)</option>
						</select> <select name="job1" class="form-select form-select-sm selectBox">
							<option value>직종선택(중위)</option>
						</select> <select name="job" class="form-select form-select-sm selectBox">
							<option value>직종선택(하위)</option>
						</select>
					</div>
					<div>
						<select name="careerName" class="form-select form-select-sm selectBox">
							<option value>경력사항선택</option>
							<option value="관계없음">경력무관</option>
							<option value="신입">신입</option>
							<option value="경력">경력</option>
						</select>
					</div>
				</div>
				<div class="searchTypoBox" style="display: inline-block; float: right; margin-right: 65px;">
					<input type="hidden" name="cat_mcls" id="cat_mcls" value="">
					<input id="search_keyword" name="searchWord" style="width: 230px"
						placeholder="제목 또는 기업명을 입력하세요." type="text" class="inpTypo"
						value="" onKeypress="javascript:if(event.keyCode==13) {enterSearch()}">
					<button type="button" class="btnTypoSearch" id="searchBtn" style="background-color: #3157dd">검색</button>
					<button type="button" class="btnTypoReset" onclick="location.href='#';return false;">선택초기화</button>
				</div>
			</form>
		</div>
	</div>
</div>


<!-- 페이징 -->
<section id="next">
	<%-- 	<a href="${pageContext.request.contextPath}/announcement/insert" class="btn btn-block btn-primary btn-md">등록하기</a> --%>
	<!-- 사람인 래퍼 시작 -->
	<div class="recruit_list_renew">
		<div class="wrap_recommend">
			<div class="box_recommend">
				<p class="tit_recommend">
					<strong>추천 업종</strong>
				</p>
				<ul class="tag_recommend">
					<li><a href="/zf_user/jobs/list/industry?ind_cd=703">#제약·보건·바이오</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="top_recruilt_list">
			<section class="list_recruiting">
				<h2 class="blind">공고리스트</h2>
				<div class="list_head">
					<div class="col company_nm">기업명</div>
					<div class="col notification_info">제목</div>
					<div class="col recruit_condition">지원자격</div>
					<div class="col company_info">근무조건</div>
					<div class="col support_info">마감일·등록일</div>
				</div>
				<div class="list_body">

					<!-- 목록1 -->
					<div id="rec-45069696" class="list_item outstand_point">
						<div class="col company_nm">
							<a class="str_tit"
								onclick="s_trackApply(this, 'industry_recruit', 'general');"
								title="(주)네오바이오텍"
								href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=45069696"
								target="_blank"> <span>(주)네오바이오텍</span>
							</a>
							<div class="toolTipWrap wrap_interested_corp">
								<button type="button" csn="QWErT1oxK2RNeXBqcUR1dGNtWnBBZz09"
									title="관심기업 등록" del_fl="n" aria-pressed="false"
									class="interested_corp interested_on"
									onclick="try{Saramin.btnJob('favor', this, '', 'list');}catch(e){}"
									first_nudge="off">
									<span>관심기업 등록</span>
								</button>
								<div class="toolTip">
									<span class="tail tail_bottom_center"></span>
									<div class="toolTipCont txtCenter">관심기업 등록</div>
								</div>
							</div>
							<span class="main_corp" title="노바렉스그룹">노바렉스그룹</span>
							<div class="icon"></div>
						</div>
						<div class="col notification_info">
							<div class="job_tit">
								<span class="prd_icon_02"></span> <a class="str_tit"
									id="rec_link_45069696"
									onclick="s_trackApply(this, 'industry_recruit', 'general');"
									title="[네오바이오텍] 물류관리팀 CS 채용 모집 공고"
									href="/zf_user/jobs/relay/view?view_type=list&amp;rec_idx=45069696"
									target="_blank"> <span>[네오바이오텍] 물류관리팀 CS 채용 모집 공고</span>
								</a>
								<div class="toolTipWrap wrap_scrap">
									<button type="button"
										onclick="Saramin.btnJob('scrap',this,'','list');" scraped="n"
										rec_idx="45069696" bbs_fl="n" imgtype="button"
										class="spr_scrap btn_scrap scrap-45069696 on">
										<span class="blind">스크랩</span>
									</button>
									<div class="toolTip">
										<span class="tail tail_bottom_center"></span>
										<div class="toolTipCont txtCenter">스크랩</div>
									</div>
								</div>
							</div>
							<div class="job_meta">
								<span class="job_sector"> <span>치과위생사</span> <span>치기공사</span>
									<span>치과</span> <span>영업지원</span> <span>온라인영업</span> 외
								</span>
							</div>
						</div>
						<div class="col recruit_condition">
							<p class="career">경력 2년↑</p>
							<p class="education">학력무관</p>
						</div>
						<div class="col company_info">
							<p class="employment_type">정규직</p>
							<p class="work_place">대구 달서구</p>
						</div>
						<div class="col support_info">
							<p class="support_type">
								<button class="sri_btn_xs" title="클릭하면 입사지원할 수 있는 창이 뜹니다."
									onclick="try{quickApplyForm('45069696','','t_category=industry_recruit&amp;t_content=general', ''); return false;} catch (e) {}; return false;">
									<span class="sri_btn_immediately">입사지원</span>
								</button>
							</p>
							<p class="deadlines">
								<!-- ~ 04/16(일) -->
								<b style="font-weight: bold; color: #d63131;">오늘마감</b> <span
									class="reg_date">(3일 전 등록)</span>
							</p>
						</div>
						<div class="similar_recruit"></div>
					</div>

					<!-- 기존 리스트 영역 시작 -->
					<div id="listBody" class="list_body"></div>
					<!-- 테스트 영역 -->
					<!-- 테스트 영역 끝 -->
					<div class="row pagination-wrap">
						<div class="text-center">
							<!-- 페이징영역 -->
							<div class="pagingArea d-inline-block"></div>
						</div>
					</div>
					<!-- 기존 리스트 영역 끝 -->


				</div>
			</section>
		</div>
	</div>
	<!-- 사람인 래퍼 끝 -->
</section>


<!-- hidden form -->
<form id="searchForm">
	<input type="hidden" name="page" /> <input type="hidden"
		name="regionCode" /> <input type="hidden" name="industryCode" /> <input
		type="hidden" name="job" /> <input type="hidden" name="careerName" />
	<input type="hidden" name="searchWord" />
</form>

<!-- SCRIPTS -->

<script>
function timeForToday(value) {
    let today = new Date();
    let timeValue = new Date(value);

    let betweenTime = Math.floor((today.getTime() - timeValue.getTime())/1000/60);
    if (betweenTime<1) return '방금 전 등록';
    if (betweenTime<60) {
        return betweenTime+'분 전 등록';
    }

    let betweenTimeHour = Math.floor(betweenTime/60);
    if (betweenTimeHour<24) {
        return betweenTimeHour+'시간 전 등록';
    }

    let betweenTimeDay = Math.floor(betweenTime/60/24);
    if (betweenTimeDay<365) {
        return betweenTimeDay+'일 전 등록';
    }
    return Math.floor(betweenTimeDay/365)+'년 전 등록';
}

/* 페이징 */
let listBody = $("#listBody");
   
let pagingArea = $(".pagingArea").on("click", "a.paging", function(event){
	event.preventDefault();
	let page = $(this).data("page");
	if(!page) return false;
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});

let makeNewTag00 = function(anno,annoDate,careerNameList,jobTag,empltypeName){
	return $("<div class='list_item'>").attr("id",anno.annoNo)
			//파란 강조 글씨
// 	       $("<div class='list_item outstand_point'>").attr("id",anno.annoNo)
			.append(
				$("<div class='col company_nm'>").attr("id",anno.cmpId).append(
					$("<a class='str_tit' target='_blank'>").attr("title",anno.company.cmpName).attr("href","회사상세페이지주소").append(
						$("<span>").html(anno.company.cmpName)
					)
					, $("<div class='toolTipWrap wrap_interested_corp'>").append(
						$("<button>").attr("type","button").attr("aria-pressed","false").attr("class","likeCmpBtn interested_corp likeIcon")
						//관심기업 추가되어 있으면 하트에 불 들어옴
// 						$("<button>").attr("type","button").attr("aria-pressed","false").attr("class","likeCmpBtn interested_corp likeIcon interested_on")
						.attr("first_nudge","off").attr("title","관심기업 등록").append(
							$("<span>").html("관심기업 등록")
						)
						, $("<div class='toolTip'>").append(
							$("<span class='tail tail_bottom_center'>")
							, $("<div class='toolTipCont txtCenter'>").html("관심기업 등록")		
						)
					)
				)
				, $("<div class='col notification_info'>").append(
					$("<div class='job_tit'>").append(
						//HOT 아이콘	
// 						$("<span class='prd_icon_02'>"),
						$("<a class='str_tit' target='_blank'>").attr("title",anno.annoTitle)
							.attr("href","${pageContext.request.contextPath}/announcement/view/"+anno.annoNo)
							.append(
								$("<span>").html(anno.annoTitle)		
							)
						, $("<div class='toolTipWrap wrap_scrap'>").append(
							$("<button type='button' scraped='n' bbs_fl='n' imgtype='button' class='likeAnnoBtn spr_scrap btn_scrap likeIcon'>")
							//관심공고 추가되어 있으면 별에 불 들어옴
// 							$("<button type='button' scraped='n' bbs_fl='n' imgtype='button' class='likeAnnoBtn spr_scrap btn_scrap likeIcon on'>")
							.append(
								$("<span class='blind'>").html("스크랩")
							)
							, $("<div class='toolTip'>").append(
								$("<span class='tail tail_bottom_center'>")
								, $("<div class='toolTipCont txtCenter'>").html("스크랩")
							)
						)
					)	
					, $("<div class='job_meta'>").append(
						$("<span class='job_sector'>").append(
							jobTag
// 							$("<span>").html(" M직종01 ")
// 							, $("<span>").html(" M직종02 ")
// 							, $("<span>").html(" M직종03 ")
						)
					)
				)
				, $("<div class='col recruit_condition'>").append(
					$("<p class='career'>").html(careerNameList)
					, $("<p class='education'>").html(anno.eduName)
				)
				, $("<div class='col company_info'>").append(
					$("<p class='employment_type'>").html(empltypeName)
					, $("<p class='work_place'>").html(anno.regionName)	
				)
				, $("<div class='col support_info'>").append(
					$("<p class='support_type'>").append(
						$("<button class='sri_btn_xs' title='클릭하면 입사지원할 수 있는 창이 뜹니다.'>").append(
							$("<span class='sri_btn_immediately'>").html("입사지원")
						)
					)
					, $("<p class='deadlines'>")
						//오늘마감
// 						.append($("<b style='font-weight: bold; color: #d63131;'>").html("오늘마감"))
						.append("~ "+anno.annoEnddate)
						.append($("<span class='reg_date'>").html(annoDate))
				)
	);
}
let makeNewTag10 = function(anno,annoDate,careerNameList,jobTag,empltypeName){
	return $("<div class='list_item'>").attr("id",anno.annoNo)
			//파란 강조 글씨
// 	       $("<div class='list_item outstand_point'>").attr("id",anno.annoNo)
			.append(
				$("<div class='col company_nm'>").attr("id",anno.cmpId).append(
					$("<a class='str_tit' target='_blank'>").attr("title",anno.company.cmpName).attr("href","회사상세페이지주소").append(
						$("<span>").html(anno.company.cmpName)
					)
					, $("<div class='toolTipWrap wrap_interested_corp'>").append(
// 						$("<button>").attr("type","button").attr("aria-pressed","false").attr("class","likeCmpBtn interested_corp likeIcon")
						//관심기업 추가되어 있으면 하트에 불 들어옴
						$("<button>").attr("type","button").attr("aria-pressed","false").attr("class","likeCmpBtn interested_corp likeIcon interested_on")
						.attr("first_nudge","off").attr("title","관심기업 등록").append(
							$("<span>").html("관심기업 등록")
						)
						, $("<div class='toolTip'>").append(
							$("<span class='tail tail_bottom_center'>")
							, $("<div class='toolTipCont txtCenter'>").html("관심기업 등록")		
						)
					)
				)
				, $("<div class='col notification_info'>").append(
					$("<div class='job_tit'>").append(
						//HOT 아이콘	
// 						$("<span class='prd_icon_02'>"),
						$("<a class='str_tit' target='_blank'>").attr("title",anno.annoTitle)
							.attr("href","${pageContext.request.contextPath}/announcement/view/"+anno.annoNo)
							.append(
								$("<span>").html(anno.annoTitle)		
							)
						, $("<div class='toolTipWrap wrap_scrap'>").append(
							$("<button type='button' scraped='n' bbs_fl='n' imgtype='button' class='likeAnnoBtn spr_scrap btn_scrap likeIcon'>")
							//관심공고 추가되어 있으면 별에 불 들어옴
// 							$("<button type='button' scraped='n' bbs_fl='n' imgtype='button' class='likeAnnoBtn spr_scrap btn_scrap likeIcon on'>")
							.append(
								$("<span class='blind'>").html("스크랩")
							)
							, $("<div class='toolTip'>").append(
								$("<span class='tail tail_bottom_center'>")
								, $("<div class='toolTipCont txtCenter'>").html("스크랩")
							)
						)
					)	
					, $("<div class='job_meta'>").append(
						$("<span class='job_sector'>").append(
							jobTag
// 							$("<span>").html(" M직종01 ")
// 							, $("<span>").html(" M직종02 ")
// 							, $("<span>").html(" M직종03 ")
						)
					)
				)
				, $("<div class='col recruit_condition'>").append(
					$("<p class='career'>").html(careerNameList)
					, $("<p class='education'>").html(anno.eduName)
				)
				, $("<div class='col company_info'>").append(
					$("<p class='employment_type'>").html(empltypeName)
					, $("<p class='work_place'>").html(anno.regionName)	
				)
				, $("<div class='col support_info'>").append(
					$("<p class='support_type'>").append(
						$("<button class='sri_btn_xs' title='클릭하면 입사지원할 수 있는 창이 뜹니다.'>").append(
							$("<span class='sri_btn_immediately'>").html("입사지원")
						)
					)
					, $("<p class='deadlines'>")
						//오늘마감
// 						.append($("<b style='font-weight: bold; color: #d63131;'>").html("오늘마감"))
						.append("~ "+anno.annoEnddate)
						.append($("<span class='reg_date'>").html(annoDate))
				)
	);
}
let makeNewTag01 = function(anno,annoDate,careerNameList,jobTag,empltypeName){
	return $("<div class='list_item'>").attr("id",anno.annoNo)
			//파란 강조 글씨
// 	       $("<div class='list_item outstand_point'>").attr("id",anno.annoNo)
			.append(
				$("<div class='col company_nm'>").attr("id",anno.cmpId).append(
					$("<a class='str_tit' target='_blank'>").attr("title",anno.company.cmpName).attr("href","회사상세페이지주소").append(
						$("<span>").html(anno.company.cmpName)
					)
					, $("<div class='toolTipWrap wrap_interested_corp'>").append(
						$("<button>").attr("type","button").attr("aria-pressed","false").attr("class","likeCmpBtn interested_corp likeIcon")
						//관심기업 추가되어 있으면 하트에 불 들어옴
// 						$("<button>").attr("type","button").attr("aria-pressed","false").attr("class","likeCmpBtn interested_corp likeIcon interested_on")
						.attr("first_nudge","off").attr("title","관심기업 등록").append(
							$("<span>").html("관심기업 등록")
						)
						, $("<div class='toolTip'>").append(
							$("<span class='tail tail_bottom_center'>")
							, $("<div class='toolTipCont txtCenter'>").html("관심기업 등록")		
						)
					)
				)
				, $("<div class='col notification_info'>").append(
					$("<div class='job_tit'>").append(
						//HOT 아이콘	
// 						$("<span class='prd_icon_02'>"),
						$("<a class='str_tit' target='_blank'>").attr("title",anno.annoTitle)
							.attr("href","${pageContext.request.contextPath}/announcement/view/"+anno.annoNo)
							.append(
								$("<span>").html(anno.annoTitle)		
							)
						, $("<div class='toolTipWrap wrap_scrap'>").append(
// 							$("<button type='button' scraped='n' bbs_fl='n' imgtype='button' class='likeAnnoBtn spr_scrap btn_scrap likeIcon'>")
							//관심공고 추가되어 있으면 별에 불 들어옴
							$("<button type='button' scraped='n' bbs_fl='n' imgtype='button' class='likeAnnoBtn spr_scrap btn_scrap likeIcon on'>")
							.append(
								$("<span class='blind'>").html("스크랩")
							)
							, $("<div class='toolTip'>").append(
								$("<span class='tail tail_bottom_center'>")
								, $("<div class='toolTipCont txtCenter'>").html("스크랩")
							)
						)
					)	
					, $("<div class='job_meta'>").append(
						$("<span class='job_sector'>").append(
							jobTag
// 							$("<span>").html(" M직종01 ")
// 							, $("<span>").html(" M직종02 ")
// 							, $("<span>").html(" M직종03 ")
						)
					)
				)
				, $("<div class='col recruit_condition'>").append(
					$("<p class='career'>").html(careerNameList)
					, $("<p class='education'>").html(anno.eduName)
				)
				, $("<div class='col company_info'>").append(
					$("<p class='employment_type'>").html(empltypeName)
					, $("<p class='work_place'>").html(anno.regionName)	
				)
				, $("<div class='col support_info'>").append(
					$("<p class='support_type'>").append(
						$("<button class='sri_btn_xs' title='클릭하면 입사지원할 수 있는 창이 뜹니다.'>").append(
							$("<span class='sri_btn_immediately'>").html("입사지원")
						)
					)
					, $("<p class='deadlines'>")
						//오늘마감
// 						.append($("<b style='font-weight: bold; color: #d63131;'>").html("오늘마감"))
						.append("~ "+anno.annoEnddate)
						.append($("<span class='reg_date'>").html(annoDate))
				)
	);
}
let makeNewTag11 = function(anno,annoDate,careerNameList,jobTag,empltypeName){
	return $("<div class='list_item'>").attr("id",anno.annoNo)
			//파란 강조 글씨
// 	       $("<div class='list_item outstand_point'>").attr("id",anno.annoNo)
			.append(
				$("<div class='col company_nm'>").attr("id",anno.cmpId).append(
					$("<a class='str_tit' target='_blank'>").attr("title",anno.company.cmpName).attr("href","회사상세페이지주소").append(
						$("<span>").html(anno.company.cmpName)
					)
					, $("<div class='toolTipWrap wrap_interested_corp'>").append(
// 						$("<button>").attr("type","button").attr("aria-pressed","false").attr("class","likeCmpBtn interested_corp likeIcon")
						//관심기업 추가되어 있으면 하트에 불 들어옴
						$("<button>").attr("type","button").attr("aria-pressed","false").attr("class","likeCmpBtn interested_corp likeIcon interested_on")
						.attr("first_nudge","off").attr("title","관심기업 등록").append(
							$("<span>").html("관심기업 등록")
						)
						, $("<div class='toolTip'>").append(
							$("<span class='tail tail_bottom_center'>")
							, $("<div class='toolTipCont txtCenter'>").html("관심기업 등록")		
						)
					)
				)
				, $("<div class='col notification_info'>").append(
					$("<div class='job_tit'>").append(
						//HOT 아이콘	
// 						$("<span class='prd_icon_02'>"),
						$("<a class='str_tit' target='_blank'>").attr("title",anno.annoTitle)
							.attr("href","${pageContext.request.contextPath}/announcement/view/"+anno.annoNo)
							.append(
								$("<span>").html(anno.annoTitle)		
							)
						, $("<div class='toolTipWrap wrap_scrap'>").append(
// 							$("<button type='button' scraped='n' bbs_fl='n' imgtype='button' class='likeAnnoBtn spr_scrap btn_scrap likeIcon'>")
							//관심공고 추가되어 있으면 별에 불 들어옴
							$("<button type='button' scraped='n' bbs_fl='n' imgtype='button' class='likeAnnoBtn spr_scrap btn_scrap likeIcon on'>")
							.append(
								$("<span class='blind'>").html("스크랩")
							)
							, $("<div class='toolTip'>").append(
								$("<span class='tail tail_bottom_center'>")
								, $("<div class='toolTipCont txtCenter'>").html("스크랩")
							)
						)
					)	
					, $("<div class='job_meta'>").append(
						$("<span class='job_sector'>").append(
							jobTag
// 							$("<span>").html(" M직종01 ")
// 							, $("<span>").html(" M직종02 ")
// 							, $("<span>").html(" M직종03 ")
						)
					)
				)
				, $("<div class='col recruit_condition'>").append(
					$("<p class='career'>").html(careerNameList)
					, $("<p class='education'>").html(anno.eduName)
				)
				, $("<div class='col company_info'>").append(
					$("<p class='employment_type'>").html(empltypeName)
					, $("<p class='work_place'>").html(anno.regionName)	
				)
				, $("<div class='col support_info'>").append(
					$("<p class='support_type'>").append(
						$("<button class='sri_btn_xs' title='클릭하면 입사지원할 수 있는 창이 뜹니다.'>").append(
							$("<span class='sri_btn_immediately'>").html("입사지원")
						)
					)
					, $("<p class='deadlines'>")
						//오늘마감
// 						.append($("<b style='font-weight: bold; color: #d63131;'>").html("오늘마감"))
						.append("~ "+anno.annoEnddate)
						.append($("<span class='reg_date'>").html(annoDate))
				)
	);
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
			listBody.empty();
			pagingArea.empty();
			searchForm[0].page.value="";
         
			let pagingVO = resp.pagingVO;
         
			let dataList = pagingVO.dataList;
			let newTags = [];
			if(dataList){
				$.each(dataList, function(index, anno){
					let annoDate = timeForToday(anno.annoDate);
					let jobTag = [];
					let tempC = [];
					let careerNameList = [];
					let tempE = [];
					let empltypeName = [];
					let cntC=0;
					let cntE=0;
					//~ 03/18(토)
					//anno.annoEnddate
					let ed = new Date(anno.annoEnddate);
					let week = new Array('일', '월', '화', '수', '목', '금', '토');
					anno.annoEnddate = ed.getMonth()+1+'/'+ed.getDate()+'('+ week[ed.getDay()] +')';
					$.each(anno.detailList,function(index,detail){
						$.each(detail.careerNames,function(index,careers){
							if (!tempC.includes(careers)) {
								if(cntC==0){
									tempC.push(careers);
									careerNameList.push(careers);
									cntC=cntC+1;
								} else {
									tempC.push(careers);
									careerNameList.push(","+careers);
									cntC=cntC+1;
								}
							}
						})
					});
					$.each(anno.detailList,function(index,detail){
						jobTag.push($("<span>").html(detail.jobName));
					});
					$.each(anno.detailList,function(index,detail){
						if (!tempE.includes(detail.empltypeName)) {
							if(cntE==0){
								tempE.push(detail.empltypeName);
								empltypeName.push(detail.empltypeName);
								cntE=cntE+1;
							} else {
								tempE.push(detail.empltypeName);
								empltypeName.push(","+detail.empltypeName);
								cntE=cntE+1;
							}
						}
					})
// 					console.log("jobTag",jobTag);
					
					if(anno.acheck==0 && anno.company.ccheck==0){
						//둘다 안되어잇음
						newTags.push(makeNewTag00(anno,annoDate,careerNameList,jobTag,empltypeName));
					} else if (anno.acheck==0 && anno.company.ccheck>0){
						//기업만 되어잇음
						newTags.push(makeNewTag10(anno,annoDate,careerNameList,jobTag,empltypeName));
					} else if (anno.acheck>0 && anno.company.ccheck==0){
						//공고만 되어잇음
						newTags.push(makeNewTag01(anno,annoDate,careerNameList,jobTag,empltypeName));
					} else {
						//둘다 되어잇음
						newTags.push(makeNewTag11(anno,annoDate,careerNameList,jobTag,empltypeName));
					}
				});
			}else{
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "7").html("조건에 맞는 공고 없음.")
				);   
				newTags.push(tr);
			}
			listBody.html(newTags);
			if(resp.pagingHTML)
				pagingArea.html(resp.pagingHTML);  
			
			likeAnnoFt();
			likeCmpFt();
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
	searchForm[0]['regionCode'].value=$("[name=regionCode]").val();
	searchForm[0]['industryCode'].value=$("[name=industryCode]").val();
	searchForm[0]['job'].value=$("[name=job]").val();
	searchForm[0]['careerName'].value=$("[name=careerName]").val();
	searchForm[0]['searchWord'].value=$("[name=searchWord]").val();
	
	searchForm.submit();
});

function enterSearch(){
	searchForm[0]['regionCode'].value=$("[name=regionCode]").val();
	searchForm[0]['industryCode'].value=$("[name=industryCode]").val();
	searchForm[0]['job'].value=$("[name=job]").val();
	searchForm[0]['careerName'].value=$("[name=careerName]").val();
	searchForm[0]['searchWord'].value=$("[name=searchWord]").val();
	
	searchForm.submit();
}

/* 관심찍기 */

function likeAnnoFt(){
	$(".likeAnnoBtn").on("click",function(){
		let clickedAnno = $(this);
		let annoNo = clickedAnno.parents(".list_item").attr("id");
		let memId = `${authMemId}`;
		console.log("likeAnnoFt 클릭",$(this),annoNo,memId);
	    let data = {annoNo:annoNo,memId:memId};
	    
	    $.ajax({
	       url : "${pageContext.request.contextPath}/announcement/likeAnno",
	       method : "post",
	       data : JSON.stringify(data),
	       dataType : "text",
	       contentType: 'application/json',
	       success : function(resp) {
	          if(resp=="delete"){
		          console.log("resp : ",resp);
	        	  clickedAnno.removeClass("on");
	          } else if(resp=="insert") {
		          console.log("resp : ",resp);
	        	  clickedAnno.addClass("on")
	          }
	       },
	       error : function(jqXHR, status, error) {
	          console.log(jqXHR);
	          console.log(status);
	          console.log(error);
	       }
	    });
	})
}

function likeCmpFt(){
    $(".likeCmpBtn").on("click",function(){
    	let clickedCmp = $(this);
	    let cmpId=clickedCmp.parents(".company_nm").attr("id");
	    let memId=`${authMemId}`;
	    console.log("likeCmpFt 클릭",$(this),cmpId,memId);
    	let data = {cmpId:cmpId,memId:memId};
        
    	$.ajax({
           url : "${pageContext.request.contextPath}/announcement/likeCmp",
           method : "post",
           data : JSON.stringify(data),
           dataType : "text",
           contentType: 'application/json',
           success : function(resp) {
              console.log("resp : ",resp);
              if(resp=="delete"){
            	  clickedCmp.removeClass("interested_on");
              } else if(resp=="insert") {
            	  clickedCmp.addClass("interested_on")
              }
           },
           error : function(jqXHR, status, error) {
              console.log(jqXHR);
              console.log(status);
              console.log(error);
           }
        }); 
    })
}


/* 보내자... */
/* 하위 지역 셀렉트... */

$("[name=metro]").on("change", function(){
	$("[name='regionCode'] option").remove();   
	$("[name='regionCode']").append("<option>지역선택(기초)</option>");
	
	let ref = $(this).val();
	let data = [{type:'region',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/annoAjax",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			console.log("리스트뽑아옴");
			let regionList = resp.regionList;
			let regionOption = [];
			
			$.each(regionList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.regionCode).html(val.regionName);
				regionOption.push(tr);
			})
			$("select[name=regionCode]").append(regionOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});

/* 하위 업종 셀렉트 */

$("[name=industry0]").on("change", function(){
	$("[name='industry1'] option").remove();   
	$("[name='industry1']").append("<option>업종선택(중위)</option>");
	$("[name='industryCode'] option").remove();   
	$("[name='industryCode']").append("<option>업종선택(하위)</option>");

	let ref = $(this).val();
	let data = [{type:'industry',code:ref}];

	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/annoAjax",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			
			console.log("리스트뽑아옴");
			let industryList = resp.industryList;
			let industryOption = [];
			
			$.each(industryList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.industryCode).html(val.industryName);
				industryOption.push(tr);
			})
			$("select[name=industry1]").append(industryOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});
$("[name=industry1]").on("change", function(){
	$("[name='industryCode'] option").remove();   
	$("[name='industryCode']").append("<option>업종선택(하위)</option>");
	
	let ref = $(this).val();
	let data = [{type:'industry',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/annoAjax",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			console.log("리스트뽑아옴");
			let industryList = resp.industryList;
			let industryOption = [];
			
			$.each(industryList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.industryCode).html(val.industryName);
				industryOption.push(tr);
			})
			$("select[name=industryCode]").append(industryOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});

/* 직종 하위 셀렉트 */

$("[name=job0]").on("change", function(){
	$("[name='job1'] option").remove();  
	$("[name='job1']").append("<option>직종선택(중위)</option>");
	$("[name='job'] option").remove();   
	$("[name='job']").append("<option>직종선택(하위)</option>");
	
	let ref = $(this).val();
	let data = [{type:'job',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/annoAjax",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			console.log("리스트뽑아옴");
			let jobList = resp.jobList;
			let jobOption = [];
			
			$.each(jobList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.jobCode).html(val.jobName);
				jobOption.push(tr);
			})
			$("select[name=job1]").append(jobOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});
$("[name=job1]").on("change", function(){
	$("[name='job'] option").remove();   
	$("[name='job']").append("<option>직종선택(하위)</option>");
	
	let ref = $(this).val();
	let data = [{type:'job',code:ref}];
	
	$.ajax({
		url : "${pageContext.request.contextPath}/announcement/annoAjax",
		method : "post",
		data : JSON.stringify(data),
		dataType : "json",
		contentType: 'application/json',
		success : function(resp) {
			console.log("리스트뽑아옴");
			let jobList = resp.jobList;
			let jobOption = [];
			
			$.each(jobList, function(index, val){
				let tr = null;
				tr = $("<option>").attr("class","code").prop("value",val.jobCode).html(val.jobName);
				jobOption.push(tr);
			})
			$("select[name=job]").append(jobOption);
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});   
});

/* 최상위 셀렉트... */
let topData = [
	{type:'region', code:''}
	, {type:'industry', code:''}
	, {type:'job', code:''}
]
$.ajax({
	url : "${pageContext.request.contextPath}/announcement/annoAjax",
	method : "post",
	data : JSON.stringify(topData),
	dataType : "json",
	contentType: 'application/json',
	success : function(resp) {
		console.log("리스트뽑아옴");
		let regionList = resp.regionList;
		let industryList = resp.industryList;
		let jobList = resp.jobList;
		
		console.log("regionList",regionList);
		console.log("industryList",industryList);
		console.log("jobList",jobList);
		
		let regionOption = [];
		let industryOption = [];
		let jobOption = [];
		
		$.each(regionList, function(index, val){
			let tr = null;
			tr = $("<option>").attr("class","code").prop("value",val.regionCode).html(val.regionName);
			regionOption.push(tr);
		})
		$.each(industryList, function(index, val){
			let tr = null;
			tr = $("<option>").attr("class","code").prop("value",val.industryCode).html(val.industryName);
			industryOption.push(tr);
		})
		$.each(jobList, function(index, val){
			let tr = null;
			tr = $("<option>").attr("class","code").prop("value",val.jobCode).html(val.jobName);
			jobOption.push(tr);
		})
		$("select[name=metro]").append(regionOption);
		$("select[name=industry0]").append(industryOption);
		$("select[name=job0]").append(jobOption);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});

</script>

