<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 7.    양서연      최초작성
* 2023. 2. 17.   최경수      채용과정 관리 버튼
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/jobs-view.css" />

<!-- MAIN CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
<security:authorize access="isAuthenticated()">
	<security:authentication property="principal" var="memberVOWrapper"/>
	<security:authentication property="principal.realMember" var="authMember"/>			
	<div class="col-6">
		<c:choose>
			<c:when test="${authMember.memId eq anno.memId }">
				<a href="${pageContext.request.contextPath}/process/${anno.annoNo}" class="btn btn-block btn-primary btn-md">채용과정</a>
			</c:when>
			<c:otherwise>
				<a href="${pageContext.request.contextPath}/apply/form?annoNo=${anno.annoNo}" class="btn btn-block btn-primary btn-md">지원하기</a>
			</c:otherwise>
		</c:choose>
<%-- 		<div>${authMember}</div> --%>
	</div>
</security:authorize>

<div class="site-wrap">
	<section class="site-section" style="background-color: white" >
		<div class="container" style="max-width:1300px">
			<div class="row">
				<div class="col-lg-8">
					<div class="mb-5">
						<div class="row align-items-center mb-5">
							<div class=" mb-4 mb-lg-0">
								<div class="d-flex align-items-center">
									<div>
										<div class="wrap_jv_header">
											<a class="placeholder" tabindex="-1"></a>
											<div class="jv_header" data-rec_idx="44659375" data-rec_seq="0">
												<div class="title_inner" style="margin-bottom:5px">
													<a	href="/zf_user/company-info/view?csn=ekJOVENHa0p0TzdoaTVQVHVpY3Vydz09&amp;popup_yn=y"
														title="(주)페이타랩" class="company" target="_blank"
														onclick="window.open(this.href, ''); return false;"
														onmousedown="try{n_trackEvent('relay_view', 'title', 'company', '');}catch(e){}">
														(주)페이타랩 ${anno.company.cmpName}</a>
													<a  href="/zf_user/company-info/view-inner-recruit?csn=ekJOVENHa0p0TzdoaTVQVHVpY3Vydz09"
														class="btn_jview btn_careers" target="_blank"
														onclick="window.open(this.href, ''); return false;"
														onmousedown="try{n_trackEvent('relay_view', 'title', 'company', 'recruit-list');}catch(e){}">
														<span>채용중<span class="num">22</span></span></a>
												</div>
												<h1 class="tit_job">[패스오더] 급성장중인 스타트업 ‘전직군’ 대규모 채용 ${anno.annoTitle}</h1>
											</div>
										</div>
										<div class="jv_cont jv_summary">
											<h2 class="jv_title blind">핵심 정보</h2>
											<div class="cont">
												<div class="col">
													<dl>
														<dt>경력</dt>
														<dd>
															<strong>무관(신입포함)</strong>
														</dd>
													</dl>
													<dl>
														<dt>학력</dt>
														<dd>
															<strong>학력무관(예정자 가능)</strong>
														</dd>
													</dl>
													<dl>
														<dt>근무형태</dt>
														<dd>
															<strong>정규직, 계약직</strong>
															<div class="toolTipWrap">
																<button type="button" class="spr_jview btn_jview btn_tooltip" aria-haspopup="dialog" aria-expanded="false">
																	<span class="blind">근무형태</span><span>상세보기</span>
																	<svg aria-hidden="true" focusable="false" class="ic">
																		<use xlink:href="#icon_i"></use>
																	</svg>
																</button>
																<div class="toolTip" role="dialog" aria-label="근무형태" aria-describedby="details-jobtype-44659375">
																	<span class="tail tail_top_center"></span>
																	<div id="details-jobtype-44659375" class="toolTipCont txtLeft">
																		<ul class="toolTipTxt">
																			<li><span>정규직</span> 수습기간 6개월</li>
																			<li><span>계약직</span> 6개월, 정규직 전환 가능</li>
																		</ul>
																	</div>
																	<button type="button" class="btnClose">
																		<span class="blind">닫기 근무형태 상세 설명</span>
																	</button>
																</div>
															</div>
														</dd>
													</dl>
												</div>
												<div class="col">
													<dl>
														<dt>급여</dt>
														<dd>면접 후 결정</dd>
													</dl>
													<dl>
														<dt>근무일시</dt>
														<dd>주 5일(월~금)</dd>
													</dl>
													<dl>
														<dt>근무지역</dt>
														<dd>서울 강남구, 서울전체, 금천구, 서초구, 송파구, 부산전체, 부산 강서구, 부산진구, 사상구, 해운대구</dd>
													</dl>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-align-left mr-3"></span>공통사항</h3>
						<table class="table table-bordered">
							<tr style="color: #2d65f2"><th>공고아이디</th><td>${anno.annoNo}</td></tr>
							<tr><th>담당자아이디</th><td>${anno.memId}</td></tr>
							<tr><th>내용</th><td>${anno.annoContent}</td></tr>
							<tr><th>조회수</th><td>${anno.annoHit}</td></tr>
							<tr><th>근무환경</th><td>${anno.annoWorkenv}</td></tr>
							<tr><th>수습기간</th><td>${anno.annoProbation}</td></tr>
							<tr><th>연봉급여</th><td>${anno.annoSalary}</td></tr>
							<tr><th>업종</th><td>${anno.industryName}</td></tr>
							<tr><th>공통학력</th><td>${anno.eduName}</td></tr>
						</table>
						<table class="table table-bordered">
							<tbody>
								<c:set var="detailList" value="${anno.detailList}"/>
								<c:choose>
									<c:when test="${not empty detailList}">
										<c:forEach items="${detailList}" var="detail" varStatus="status">
											<tr style="color: #2d65f2;"><th>모집분야</th><td>${detail.daFd}</td></tr>
											<tr><th>세부공고순번</th><td>${status.index+1}</td></tr>
											<tr><th>모집인원</th><td>${detail.daCount}</td></tr>
											<tr><th>담당업무</th><td>${detail.daTask}</td></tr>
											<tr><th>근무부서</th><td>${detail.daDepartment}</td></tr>
											<tr><th>지원조건</th><td>${detail.daCondition}</td></tr>
											<tr><th>우대사항</th><td>${detail.daPrefer}</td></tr>
											<tr><th>근무요일</th><td>${detail.daWorkday}</td></tr>
											<tr><th>근무시간</th><td>${detail.daWorktime}</td></tr>
											<tr><th>경력</th><td>
															<c:forEach items="${detail.careerName}" var="career">
																· ${career} 
															</c:forEach>
														</td></tr>
											<tr><th>경력년수</th><td>${detail.daCarYeer}</td></tr>
											<tr><th>지역</th><td>${detail.regionName}</td></tr>
											<tr><th>고용형태</th><td>${detail.empltypeName}</td></tr>
											<tr><th>직무코드</th><td>${detail.jobName}</td></tr>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr><td colspan="7"> 공고 없음. </td></tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
					<div class="mb-5">
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-rocket mr-3"></span>모집분야</h3>
						<ul class="list-unstyled m-0 p-0">
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Necessitatibus quibusdam facilis</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Velit unde aliquam et voluptas reiciendis n Velit unde aliquam et voluptas reiciendis non sapiente labore</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Commodi quae ipsum quas est itaque</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Deleniti asperiores blanditiis nihil quia officiis dolor</span></li>
						</ul>
					</div>
		            <div class="mb-5">
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-rocket mr-3"></span>채용단계</h3>
						<ul class="list-unstyled m-0 p-0">
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Necessitatibus quibusdam facilis</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Velit unde aliquam et voluptas reiciendis n Velit unde aliquam et voluptas reiciendis non sapiente labore</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Commodi quae ipsum quas est itaque</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Deleniti asperiores blanditiis nihil quia officiis dolor</span></li>
						</ul>
					</div>
		
					<div class="mb-5">
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-book mr-3"></span>복지</h3>
						<ul class="list-unstyled m-0 p-0">
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Necessitatibus quibusdam facilis</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Velit unde aliquam et voluptas reiciendis non sapiente labore</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Commodi quae ipsum quas est itaque</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Deleniti asperiores blanditiis nihil quia officiis dolor</span></li>
						</ul>
						<table class="table table-bordered">
							<tbody>
								<c:set var="walfareList" value="${anno.walfareList}"/>
								<c:choose>
									<c:when test="${not empty walfareList}">
										<c:forEach items="${walfareList}" var="walfare">
											<c:choose>
												<c:when test="${walfare.refName eq detailList}">
													<tr>
<!-- 														<th>중분류</th> -->
														<td>${walfare.walfareName}</td>
													</tr>
												</c:when>
												<c:otherwise>
													<tr style="color: #3157dd;">
<!-- 														<th>대분류</th> -->
														<td>${walfare.refName}</td>
													</tr>
													<tr>
<!-- 														<th>중분류</th> -->
														<td>${walfare.walfareName}</td>
													</tr>
												</c:otherwise>
											</c:choose>
											<c:set var="detailList" value="${walfare.refName}"/>
										</c:forEach>
									</c:when>
									<c:otherwise>
										<tr><td colspan="7"> 복지 없음. </td></tr>
									</c:otherwise>
								</c:choose>
							</tbody>
						</table>
					</div>
		            <div class="mb-5">
						<h3 class="h5 d-flex align-items-center mb-4 text-primary"><span class="icon-turned_in mr-3"></span>기업 후기</h3>
						<ul class="list-unstyled m-0 p-0">
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Necessitatibus quibusdam facilis</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Velit unde aliquam et voluptas reiciendis non sapiente labore</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Commodi quae ipsum quas est itaque</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit</span></li>
			                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>Deleniti asperiores blanditiis nihil quia officiis dolor</span></li>
						</ul>
					</div>
		
					<ul class="list-unstyled m-0 p-0">
						<li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>담당자 : </span></li>
		                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>담당자 이메일 : </span></li>
		                <li class="d-flex align-items-start mb-2"><span class="icon-check_circle mr-2 text-muted"></span><span>담당자 전화번호 : </span></li>
					</ul>
					<div>
						※ 방문, 우편, 팩스 등 오프라인 접수의 경우, 『채용절차의 공정화에 관한 법률 제11조』 에 따라 구직자는 구인자에게 채용서류 반환을 요청 할 수 있으며, 구인자는 본인임을 확인한 후 채용서류를 반환하여야 합니다.
					</div>
					<!-- 타이머 -->
					<div class="jv_cont jv_howto">
						<a class="placeholder" tabindex="-1"></a>
						<h2 class="jv_title">접수기간 및 방법</h2>
						<div class="cont box box2">
							<div class="status">
				<!-- 				<p class="copy once"><strong>채용시 마감</strong>되는<br>공고입니다.</p> -->
								<div class="info_timer" data-remain-time="820560">
									<span class="txt">남은 기간</span>
									<span class="day">9</span>
									<span class="txt_day">일</span>
									<span class="time">11:47:54</span>
								</div>
								<dl class="info_period">
									<dt>시작일</dt>
									<dd>${anno.annoStartdate}</dd>
									<dt class="end">마감일</dt>
									<dd>${anno.annoEnddate}</dd>
				<!-- 					<dd>2023.02.27 23:59</dd> -->
								</dl>
								<button class="sri_btn_lg for_btn_event"
									title="클릭하면 입사지원할 수 있는 창이 뜹니다."
									onclick="try{quickApplyForm('45063838','','t_category=relay_view&amp;t_content=relay_view_list&amp;t_ref=area_recruit&amp;t_ref_content=grand_fix&amp;t_ref_scnid=&amp;dpId=&amp;inner_source=saramin&amp;inner_medium=pattern&amp;inner_campaign=relay_view_apply_0&amp;inner_term=list', ''); return false;} catch (e) {}; return false;"
									onmousedown="try{n_trackEvent('relay_view','contacts','quick_apply_bt','');}catch(e){}">
									<span class="sri_btn_immediately">입사지원</span>
								</button>
							</div>
						</div>
					</div>
				</div>
				<div class="ml-auto h-100 jm-sticky-top" style="top: 100px; width:350px">
					<div class="bg-light p-3 border rounded mb-4">
						<!-- 관심버튼 -->
						<div class="ml-auto h-100 " >
							<div class="row">
								<security:authorize access="isAuthenticated()">
<%-- 								<security:authorize access="hasRole('INCRUITER')"> --%>
									<security:authentication property="principal" var="memberVOWrapper"/>
									<security:authentication property="principal.realMember" var="authMember"/>
<%-- 									<input type="hidden" value="${authMember.memId}"/> --%>
									<div class="col-6" id="likeAnnoArea">
										<c:choose>
											<c:when test="${selectLikeAnno gt 0 }">
												<a class="btn btn-block btn-light btn-md" onclick="likeAnnoFt('${authMember.memId}')"><span id="likeAnno" class="icon-heart mr-2 text-danger"></span>관심공고</a>
											</c:when>
											<c:otherwise>
												<a class="btn btn-block btn-light btn-md" onclick="likeAnnoFt('${authMember.memId}')"><span id="likeAnno" class="icon-heart-o mr-2 text-danger"></span>관심공고</a>
											</c:otherwise>
										</c:choose>
									</div>
									<div class="col-6" id="likeCmpArea">
										<c:choose>
											<c:when test="${selectLikeCmp gt 0 }">
												<a class="btn btn-block btn-light btn-md" onclick="likeCmpFt('${authMember.memId}')"><span id="likeCmp" class="mr-2 bi bi-star-fill text-danger"></span>관심기업</a>
											</c:when>
											<c:otherwise>
												<a class="btn btn-block btn-light btn-md" onclick="likeCmpFt('${authMember.memId}')"><span id="likeCmp" class="mr-2 bi bi-star text-danger"></span>관심기업</a>
											</c:otherwise>
										</c:choose>
									</div>
								</security:authorize>
							</div>
						</div>
						<h3 class="text-primary  mt-3 h5 pl-3 mb-3">${anno.company.cmpName}</h3>
<%-- 						<h2 class="jv_title">${anno.company.cmpName}</h2> --%>
						<ul class="list-unstyled pl-3 mb-0">
							<c:set var="company" value="${anno.company}"/>
			                <li class="mb-2"><strong class="text-black">업종: </strong>${company.cmpMbName}</li>
							<li class="mb-2"><strong class="text-black">사원수: </strong>${company.cmpEmpNo}</li>
							<li class="mb-2"><strong class="text-black">설립일자: </strong>${company.cmpEstblDate}</li>
							<li class="mb-2"><strong class="text-black">기업형태: </strong>${company.cmpSmenp}</li>
							<li class="mb-2"><strong class="text-black">회사 주소: </strong>${company.cmpAddr1}</li>
							<li class="mb-2"><strong class="text-black">투명도: </strong>굿</li>
							<li class="mb-2"><strong class="text-black">이메일: </strong>${company.cmpEmail}</li>
							<li class="mb-2"><strong class="text-black">홈페이지: </strong>${company.cmpUrl}</li>
						</ul>
						<!-- 타이머 -->
						<div class="jv_cont jv_howto">
							<div class="cont box">
								<div class="status">
					<!-- 				<p class="copy once"><strong>채용시 마감</strong>되는<br>공고입니다.</p> -->
									<div class="info_timer" data-remain-time="820560">
										<span class="txt">남은 기간</span>
										<span class="day">9</span>
										<span class="txt_day">일</span>
										<span class="time">11:47:54</span>
									</div>
									<dl class="info_period">
										<dt>시작일</dt>
										<dd>${anno.annoStartdate}</dd>
										<dt class="end">마감일</dt>
										<dd>${anno.annoEnddate}</dd>
					<!-- 					<dd>2023.02.27 23:59</dd> -->
									</dl>
									<button class="sri_btn_lg for_btn_event"
										title="클릭하면 입사지원할 수 있는 창이 뜹니다."
										onclick="try{quickApplyForm('45063838','','t_category=relay_view&amp;t_content=relay_view_list&amp;t_ref=area_recruit&amp;t_ref_content=grand_fix&amp;t_ref_scnid=&amp;dpId=&amp;inner_source=saramin&amp;inner_medium=pattern&amp;inner_campaign=relay_view_apply_0&amp;inner_term=list', ''); return false;} catch (e) {}; return false;"
										onmousedown="try{n_trackEvent('relay_view','contacts','quick_apply_bt','');}catch(e){}">
										<span class="sri_btn_immediately">입사지원</span>
									</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="site-section" id="next">
	  <div class="container">
	    <div class="row mb-5 justify-content-center">
	      <div class="col-md-7 text-center">
	        <h2 class="section-title mb-2">22,392 Related Jobs</h2>
	      </div>
	    </div>
	    
	    <ul class="job-listings mb-5">
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_1.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Product Designer</h2>
	            <strong>Adidas</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> New York, New York
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-danger">Part Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_2.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Digital Marketing Director</h2>
	            <strong>Sprint</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> Overland Park, Kansas 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_3.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Back-end Engineer (Python)</h2>
	            <strong>Amazon</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> Overland Park, Kansas 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_4.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Senior Art Director</h2>
	            <strong>Microsoft</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> Anywhere 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_5.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Product Designer</h2>
	            <strong>Puma</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> San Mateo, CA 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_1.jpg" alt="Image" class="img-fluid">
	        </div>
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Product Designer</h2>
	            <strong>Adidas</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> New York, New York
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-danger">Part Time</span>
	          </div>
	        </div>
	      </li>
	      <li class="job-listing d-block d-sm-flex pb-3 pb-sm-0 align-items-center">
	        <a href="job-single.html"></a>
	        <div class="job-listing-logo">
	          <img src="images/job_logo_2.jpg" alt="Image" class="img-fluid">
	        </div>
	
	        <div class="job-listing-about d-sm-flex custom-width w-100 justify-content-between mx-4">
	          <div class="job-listing-position custom-width w-50 mb-3 mb-sm-0">
	            <h2>Digital Marketing Director</h2>
	            <strong>Sprint</strong>
	          </div>
	          <div class="job-listing-location mb-3 mb-sm-0 custom-width w-25">
	            <span class="icon-room"></span> Overland Park, Kansas 
	          </div>
	          <div class="job-listing-meta">
	            <span class="badge badge-success">Full Time</span>
	          </div>
	        </div>
	      </li>
	    </ul>
	    
	    <div class="row pagination-wrap">
	      <div class="col-md-6 text-center text-md-left mb-4 mb-md-0">
	        <span>Showing 1-7 Of 22,392 Jobs</span>
	      </div>
	      <div class="col-md-6 text-center text-md-right">
	        <div class="custom-pagination ml-auto">
	          <a href="#" class="prev">Prev</a>
	          <div class="d-inline-block">
	          <a href="#" class="active">1</a>
	          <a href="#">2</a>
	          <a href="#">3</a>
	          <a href="#">4</a>
	          </div>
	          <a href="#" class="next">Next</a>
	        </div>
	      </div>
	    </div>
	  </div>
	</section>
</div>

<!-- SCRIPTS -->
<script>
function likeAnnoFt(memId){
    console.log("likeAnnoFt",`${anno.annoNo}`,memId);
    
    let data = {annoNo:`${anno.annoNo}`,memId:memId};
    $.ajax({
       url : "${pageContext.request.contextPath}/announcement/likeAnno",
       method : "post",
       data : JSON.stringify(data),
       dataType : "text",
       contentType: 'application/json',
       success : function(resp) {
          console.log("resp : ",resp);
          if(resp=="delete"){
             $("#likeAnno").removeClass("icon-heart").addClass("icon-heart-o");
          } else if(resp=="insert") {
             $("#likeAnno").removeClass("icon-heart-o").addClass("icon-heart");
          }
       },
       error : function(jqXHR, status, error) {
          console.log(jqXHR);
          console.log(status);
          console.log(error);
       }
    });   
}

function likeCmpFt(memId){
    console.log("likeCmpFt",`${anno.cmpId}`,memId);
    
    let data = {cmpId:`${anno.cmpId}`,memId:memId};
    $.ajax({
       url : "${pageContext.request.contextPath}/announcement/likeCmp",
       method : "post",
       data : JSON.stringify(data),
       dataType : "text",
       contentType: 'application/json',
       success : function(resp) {
          console.log("resp : ",resp);
          if(resp=="delete"){
             $("#likeCmp").removeClass("bi-star-fill").addClass("bi-star");
          } else if(resp=="insert") {
             $("#likeCmp").removeClass("bi-star").addClass("bi-star-fill");
          }
       },
       error : function(jqXHR, status, error) {
          console.log(jqXHR);
          console.log(status);
          console.log(error);
       }
    });   
}

let dday = new Date(`${anno.annoEnddate}`).getTime();
setInterval(function() {
	let today = new Date().getTime();
	let gap = dday - today;
	let day = Math.ceil(gap / (1000 * 60 * 60 * 24));
	let hour = Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	let min = Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60));
	let sec = Math.ceil((gap % (1000 * 60)) / 1000);
	$(".day").html(day);
	
	if(hour<10) hour="0"+hour;
	if(min<10) min="0"+min;
	if(sec<10) sec="0"+sec;
	$(".time").html(hour+":"+min+":"+sec);
}, 1000);


</script>
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
   