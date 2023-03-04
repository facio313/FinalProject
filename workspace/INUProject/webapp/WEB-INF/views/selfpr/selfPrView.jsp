<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* ${date}      윤호연      최초작성
* 2023.02.13   윤호연      1차수정
* 2023.03.02   윤호연      2차수정
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>
<!DOCTYPE html>
<html>
<head>
        
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom-bs.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/line-icons/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.min.css">
    
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">   
    
    <style>
      .selfpr-block{
        margin-bottom: 1rem!important;
        -webkit-box-flex: 0;
        flex: 0 0 33.33333%;
        position: relative;
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        border: 1px solid #b3e7b3;
        border-radius: 15px;
      }
      .top-interval{
        height: 25px;
      }
      .top-medium-interval{
      	height: 50px;
      }
      .top-large-interval{
      	height: 100px;
      }
      .img-jobseeker{
      	height: 75px;
      	width: 75px; 
      }
      
      @import url('https://fonts.googleapis.com/css?family=Abel');

	html, body {
	  font-family: Abel, Arial, Verdana, sans-serif;
	}
	
	.center {
	  position: absolute;
	  top: 50%;
	  left: 50%;
	  -webkit-transform: translate(-50%, -50%);
	}
	
	.card {
	  width: 450px;
	  height: 250px;
	  background-color: #fff;
	  background: linear-gradient(#f8f8f8, #fff);
	  box-shadow: 2px 8px 16px -8px rgba(0,0,0,0.4);
	  border-radius: 6px;
	  overflow: hidden;
	  position: relative;
	  margin: 1.5rem;
	}
	
	.card h1 {
	  text-align: center;
	}
	
	.card .additional {
	  position: absolute;
	  width: 150px;
	  height: 100%;
	  background: linear-gradient(#dE685E, #EE786E);
	  transition: width 0.4s;
	  overflow: hidden;
	  z-index: 2;
	}
	
	.card.green .additional {
	  background: linear-gradient(#92bCa6, #A2CCB6);
	}
	
	
	.card:hover .additional {
	  width: 100%;
	  border-radius: 0 5px 5px 0;
	}
	
	.card .additional .user-card {
	  width: 150px;
	  height: 100%;
	  position: relative;
	  float: left;
	}
	
	.card .additional .user-card::after {
	  content: "";
	  display: block;
	  position: absolute;
	  top: 10%;
	  right: -2px;
	  height: 80%;
	  border-left: 2px solid rgba(0,0,0,0.025);*/
	}
	
	.card .additional .user-card .level,
	.card .additional .user-card .points {
	  top: 15%;
	  color: #fff;
	  text-transform: uppercase;
	  font-size: 0.75em;
	  font-weight: bold;
	  background: rgba(0,0,0,0.15);
	  padding: 0.125rem 0.75rem;
	  border-radius: 100px;
	  white-space: nowrap;
	}
	
	.card .additional .user-card .points {
	  top: 85%;
	}
	
	.card .additional .user-card svg {
	  top: 50%;
	}
	
	.card .additional .more-info {
	  width: 300px;
	  float: left;
	  position: absolute;
	  left: 150px;
	  height: 100%;
	}
	
	.card .additional .more-info h1 {
	  color: #fff;
	  margin-bottom: 0;
	}
	
	.card.green .additional .more-info h1 {
	  color: #224C36;
	}
	
	.card .additional .coords {
	  margin: 0 1rem;
	  color: #fff;
	  font-size: 1rem;
	}
	
	.card.green .additional .coords {
	  color: #325C46;
	}
	
	.card .additional .coords span + span {
	  float: right;
	}
	
	.card .additional .stats {
	  font-size: 2rem;
	  display: flex;
	  position: absolute;
	  bottom: 1rem;
	  left: 1rem;
	  right: 1rem;
	  top: auto;
	  color: #fff;
	}
	
	.card.green .additional .stats {
	  color: #325C46;
	}
	
	.card .additional .stats > div {
	  flex: 1;
	  text-align: center;
	}
	
	.card .additional .stats i {
	  display: block;
	}
	
	.card .additional .stats div.title {
	  font-size: 0.75rem;
	  font-weight: bold;
	  text-transform: uppercase;
	}
	
	.card .additional .stats div.value {
	  font-size: 1.5rem;
	  font-weight: bold;
	  line-height: 1.5rem;
	}
	
	.card .additional .stats div.value.infinity {
	  font-size: 2.5rem;
	}
	
	.card .general {
	  width: 300px;
	  height: 100%;
	  position: absolute;
	  top: 0;
	  right: 0;
	  z-index: 1;
	  box-sizing: border-box;
	  padding: 1rem;
	  padding-top: 0;
	}
	
	.card .general .more {
	  position: absolute;
	  bottom: 1rem;
	  right: 1rem;
	  font-size: 0.9em;
	}
      
    </style> 
</head>
<body>

	<!-- 검색창 -->
	<section style="padding-top: 100px;">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-12">
            
              <form method="post" class="search-jobs-form" id="searchUI">
              	<input type="hidden" name="page"/>
                <div class="row mb-5">
                
				<!-- 1번째 -->
                 <div class="col-lg-2">
                 	<p style="text-align: center;">직군선택</p>
<!--                   	<div class="dropdown" style="width: 100%; border: 3px solid #d6efeb;"> -->
	                  <select name="industry0" class="form-select form-select-sm selectBox">
						 <option value>기초</option>
					  </select>
<!-- 					</div> -->
				  </div>	
                 
                  <!-- 2번째 -->
				 <div class="col-lg-2">
				 	<p style="text-align: center;">근무지역선택</p>
<!--                   	<div class="dropdown" style="width: 100%; border: 3px solid #d6efeb;"> -->
                  <select name="metro" class="form-select form-select-sm selectBox">
					 <option value>기초</option>
				  </select>
<!-- 					</div> -->
				  </div>	
                  
                  <!-- 3번째 -->
                  <div class="col-lg-2">
                   <p style="text-align: center;">직급선택</p>
                    <div class="dropdown bootstrap-select" style="width: 100%; border: 3px solid #d6efeb;">
                      <select
                        class="selectpicker"
                        name="prWanttype"
                        data-style="btn-white btn-lg"
                        data-width="100%"
                        data-live-search="true"
                        title="희망직급"
                        tabindex="-98"
                      >
                        <option class="bs-title-option" value=""></option>
                        <option value="사원급">사원급</option>
                        <option value="주임급">주임급</option>
                        <option value="대리급">대리급</option>
                        <option value="과장급">과장급</option>
                        <option value="부장급">부장급</option>
                      </select>
                      <div
                        class="dropdown-menu"
                        role="combobox"
                        x-placement="bottom-start"
                        style="
                          max-height: 678.766px;
                          overflow: hidden;
                          min-height: 46px;
                          position: absolute;
                          will-change: transform;
                          top: 0px;
                          left: 0px;
                          transform: translate3d(0px, 50px, 0px);
                        "
                      >
                        <div class="bs-searchbox">
                          <input
                            type="text"
                            class="form-control"
                            autocomplete="off"
                            role="textbox"
                            aria-label="Search"
                          />
                        </div>
                        <div
                          class="inner show"
                          role="listbox"
                          aria-expanded="false"
                          tabindex="-1"
                          style="
                            max-height: 614.766px;
                            overflow-y: auto;
                            min-height: 0px;
                          "
                        >
                        </div>
                      </div>
                    </div>
                  </div>
                 
                  <!-- 4번째 -->
                  <div class="col-lg-2">
                   <p style="text-align: center;">근무경력선택</p>
                    <div class="dropdown bootstrap-select" style="width: 100%; border: 3px solid #d6efeb;">
                      <select
                        class="selectpicker"
                        name="prAnnual"
                        data-style="btn-white btn-lg"
                        data-width="100%"
                        data-live-search="true"
                        title="경력"
                        tabindex="-98"
                      >
                        <option class="bs-title-option" value="none"></option>
                        <option value="신입">신입</option>
                        <option value="1년차 미만">1년차 미만</option>
                        <option value="1~2년">1~2년</option>
                        <option value="2~3년">2~3년</option>
                        <option value="3~5년">3~5년</option>
                        <option value="5~10년">5~10년</option>
                        <option value="10년 이상">10년 이상</option>
					  </select>
                      <div
                        class="dropdown-menu"
                        role="combobox"
                        x-placement="bottom-start"
                        style="
                          max-height: 678.766px;
                          overflow: hidden;
                          min-height: 46px;
                          position: absolute;
                          will-change: transform;
                          top: 0px;
                          left: 0px;
                          transform: translate3d(0px, 50px, 0px);
                        "
                      >
                        <div class="bs-searchbox">
                          <input
                            type="text"
                            class="form-control"
                            autocomplete="off"
                            role="textbox"
                            aria-label="Search"
                          />
                        </div>
                        <div
                          class="inner show"
                          role="listbox"
                          aria-expanded="false"
                          tabindex="-1"
                          style="
                            max-height: 614.766px;
                            overflow-y: auto;
                            min-height: 0px;
                          "
                        >
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <!-- 5번째 -->
                  <div class="col-lg-2">
                   <p style="text-align: center;">학력선택</p>
                    <div class="dropdown bootstrap-select" style="width: 100%; border: 3px solid #d6efeb;">
                      <select
                        class="selectpicker"
                        name="prEdu"
                        data-style="btn-white btn-lg"
                        data-width="100%"
                        data-live-search="true"
                        title="학력"
                        tabindex="-98"
                      >
                        <option class="bs-title-option" value=""></option>
                        <option>초,중졸</option>
                        <option>고졸</option>
                        <option>대학교(2,3년)졸업예정</option>
                        <option>대학교(4년)졸업예정</option>
                        <option>대학교(2,3년)졸업</option>
                        <option>대학교(4년)졸업</option>
                        <option>석사</option>
                        <option>박사</option>
                      </select>
                      <div
                        class="dropdown-menu"
                        role="combobox"
                        x-placement="bottom-start"
                        style="
                          max-height: 678.766px;
                          overflow: hidden;
                          min-height: 46px;
                          position: absolute;
                          will-change: transform;
                          top: 0px;
                          left: 0px;
                          transform: translate3d(0px, 50px, 0px);
                        "
                      >
                        <div class="bs-searchbox">
                          <input
                            type="text"
                            class="form-control"
                            autocomplete="off"
                            role="textbox"
                            aria-label="Search"
                          />
                        </div>
                        <div
                          class="inner show"
                          role="listbox"
                          aria-expanded="false"
                          tabindex="-1"
                          style="
                            max-height: 614.766px;
                            overflow-y: auto;
                            min-height: 0px;
                          "
                        >
                        </div>
                      </div>
                    </div>
                  </div>
                  
                  <!-- 중간에 줄바꿈 -->
                  
                  <div class="col-lg-1"></div>
                  <div class="col-lg-1"></div>
                  
                  <!-- 다시 검색 시작 -->
                  
                  <!-- 6번째 -->
                   <div class="col-lg-2">
	                  <select name="industry1" class="form-select form-select-sm selectBox">
						  <option value>중위</option>
					  </select>
					</div>
                  
                  <!-- 7번째 -->
                  <div class="col-lg-2">
	                  <select name="regionCode" class="form-select form-select-sm selectBox">
						 <option value>기초</option>
					  </select>
				  </div>	  
				
				<!-- 거리 띄우기 -->
				
				<div class="col-lg-2"></div>
				<div class="col-lg-2"></div>
				<div class="col-lg-2"></div>
				<div class="col-lg-2"></div>
				
				<!-- 8번째 (industryCode)하위 -->
				<div class="col-lg-2">	 
					 <select name="industryCode" class="form-select form-select-sm selectBox">
							<option value>하위</option>
					 </select>
				</div>
                  
                </div>
                
                <button type="button" id="btnsearch">검색!</button>
                
              </form>
            </div>
          </div>
        </div>
        
          <section class="site-section">
              <div class="container">
                <div class="row" id="searchTag">

             <!-- 자기소개 목록-->
                  
             <c:set var="selfprList" value="${pagingVO.dataList }" />
              <c:choose>
               <c:when test="${not empty selfprList }">
               	<c:forEach items="${selfprList }" var="selfpr">
                  <div class="col-lg-4">
                    <div class="selfpr-block">
                     <div>
                      <blockquote>
                        <p><strong>&ldquo;${selfpr.prName }&rdquo;</strong></p>
                      </blockquote>
                     </div>
                      <div class="block__91147 d-flex align-items-center">
                        <figure class="mr-5"><img src="resources/images/jobSeeker.png" alt="Image" class="img-jobseeker"></figure>
                        <div>
                          <a href=""><h4>${selfpr.memName }</h4></a>
                          <span class="position">${selfpr.prWantjob }</span>
                          <br>
                          <span style="font-size: 0.75em;">경력 : ${selfpr.prAnnual }</span>
                        </div>
                        <div>
                        </div>
                      </div>
                    </div>
                  </div>
               	</c:forEach>
               </c:when>
              </c:choose>
        			

                </div>
              </div>
              
              
		  <div class="top-medium-interval"></div>
		  
		<!-- 카드 -->
		
	<c:choose>
	<c:when test="${not empty selfprList }">
	<c:forEach items="${selfprList }" var="selfpr">
	  <div class="card">
	    <div class="additional">
	      <div class="user-card">
	        <div class="level center">
	        	${selfpr.prWantjob }
	        </div>
	        <div class="points center">
	          5,312 Points
	        </div>
	        <svg width="110" height="110" viewBox="0 0 250 250" xmlns="http://www.w3.org/2000/svg" role="img" aria-labelledby="title desc" class="center">
	          <title id="title">Teacher</title>
	          <desc id="desc">Cartoon of a Caucasian woman smiling, and wearing black glasses and a purple shirt with white collar drawn by Alvaro Montoro.</desc>
	          <style>
	            .skin { fill: #eab38f; }
	            .eyes { fill: #1f1f1f; }
	            .hair { fill: #2f1b0d; }
	            .line { fill: none; stroke: #2f1b0d; stroke-width:2px; }
	          </style>
	          <defs>
	            <clipPath id="scene">
	              <circle cx="125" cy="125" r="115"/>
	            </clipPath>
	            <clipPath id="lips">
	              <path d="M 106,132 C 113,127 125,128 125,132 125,128 137,127 144,132 141,142  134,146  125,146  116,146 109,142 106,132 Z" />
	            </clipPath>
	          </defs>
	          <circle cx="125" cy="125" r="120" fill="rgba(0,0,0,0.15)" />
	          <g stroke="none" stroke-width="0" clip-path="url(#scene)">
	            <rect x="0" y="0" width="250" height="250" fill="#b0d2e5" />
	            <g id="head">
	              <path fill="none" stroke="#111111" stroke-width="2" d="M 68,103 83,103.5" />
	              <path class="hair" d="M 67,90 67,169 78,164 89,169 100,164 112,169 125,164 138,169 150,164 161,169 172,164 183,169 183,90 Z" />
	              <circle cx="125" cy="100" r="55" class="skin" />
	              <ellipse cx="102" cy="107" rx="5" ry="5" class="eyes" id="eye-left" />
	              <ellipse cx="148" cy="107" rx="5" ry="5" class="eyes" id="eye-right" />
	              <rect x="119" y="140" width="12" height="40" class="skin" />
	              <path class="line eyebrow" d="M 90,98 C 93,90 103,89 110,94" id="eyebrow-left" />
	              <path class="line eyebrow" d="M 160,98 C 157,90 147,89 140,94" id="eyebrow-right"/>
	              <path stroke="#111111" stroke-width="4" d="M 68,103 83,102.5" />
	              <path stroke="#111111" stroke-width="4" d="M 182,103 167,102.5" />
	              <path stroke="#050505" stroke-width="3" fill="none" d="M 119,102 C 123,99 127,99 131,102" />
	              <path fill="#050505" d="M 92,97 C 85,97 79,98 80,101 81,104 84,104 85,102" />
	              <path fill="#050505" d="M 158,97 C 165,97 171,98 170,101 169,104 166,104 165,102" />
	              <path stroke="#050505" stroke-width="3" fill="rgba(240,240,255,0.4)" d="M 119,102 C 118,111 115,119 98,117 85,115 84,108 84,104 84,97 94,96 105,97 112,98 117,98 119,102 Z" />
	              <path stroke="#050505" stroke-width="3" fill="rgba(240,240,255,0.4)" d="M 131,102 C 132,111 135,119 152,117 165,115 166,108 166,104 166,97 156,96 145,97 138,98 133,98 131,102 Z" />
	              <path class="hair" d="M 60,109 C 59,39 118,40 129,40 139,40 187,43 189,99 135,98 115,67 115,67 115,67 108,90 80,109 86,101 91,92 92,87 85,99 65,108 60,109" />
	              <path id="mouth" fill="#d73e3e" d="M 106,132 C 113,127 125,128 125,132 125,128 137,127 144,132 141,142  134,146  125,146  116,146 109,142 106,132 Z" /> 
	              <path id="smile" fill="white" d="M125,141 C 140,141 143,132 143,132 143,132 125,133 125,133 125,133 106.5,132 106.5,132 106.5,132 110,141 125,141 Z" clip-path="url(#lips)" />
	            </g>
	            <g id="shirt">
	              <path fill="#8665c2" d="M 132,170 C 146,170 154,200 154,200 154,200 158,250 158,250 158,250 92,250 92,250 92,250 96,200 96,200 96,200 104,170 118,170 118,170 125,172 125,172 125,172 132,170 132,170 Z"/>
	              <path id="arm-left" class="arm" stroke="#8665c2" fill="none" stroke-width="14" d="M 118,178 C 94,179 66,220 65,254" />
	              <path id="arm-right" class="arm" stroke="#8665c2" fill="none" stroke-width="14" d="M 132,178 C 156,179 184,220 185,254" />
	              <path fill="white" d="M 117,166 C 117,166 125,172 125,172 125,182 115,182 109,170 Z" />
	              <path fill="white" d="M 133,166 C 133,166 125,172 125,172 125,182 135,182 141,170 Z" />
	              <circle cx="125" cy="188" r="4" fill="#5a487b" />
	              <circle cx="125" cy="202" r="4" fill="#5a487b" />
	              <circle cx="125" cy="216" r="4" fill="#5a487b" />
	              <circle cx="125" cy="230" r="4" fill="#5a487b" />
	              <circle cx="125" cy="244" r="4" fill="#5a487b" />
	              <path stroke="#daa37f" stroke-width="1" class="skin hand" id="hand-left" d="M 51,270 C 46,263 60,243 63,246 65,247 66,248 61,255 72,243 76,238 79,240 82,243 72,254 69,257 72,254 82,241 86,244 89,247 75,261 73,263 77,258 84,251 86,253 89,256 70,287 59,278" /> 
	              <path stroke="#daa37f" stroke-width="1" class="skin hand" id="hand-right" d="M 199,270 C 204,263 190,243 187,246 185,247 184,248 189,255 178,243 174,238 171,240 168,243 178,254 181,257 178,254 168,241 164,244 161,247 175,261 177,263 173,258 166,251 164,253 161,256 180,287 191,278"/> 
	            </g>
	          </g>
	        </svg>
	      </div>
	      <div class="more-info">
	        <h1>${selfpr.memName }</h1>
	        <div class="coords">
	          <span>Group Name</span>
	          <span>Joined January 2019</span>
	        </div>
	        <div class="coords">
	          <span>Position/Role</span>
	          <span>City, Country</span>
	        </div>
	        <div class="stats">
	          <div>
	            <div class="title">Awards</div>
	            <i class="fa fa-trophy"></i>
	            <div class="value">2</div>
	          </div>
	          <div>
	            <div class="title">Matches</div>
	            <i class="fa fa-gamepad"></i>
	            <div class="value">27</div>
	          </div>
	          <div>
	            <div class="title">Pals</div>
	            <i class="fa fa-group"></i>
	            <div class="value">123</div>
	          </div>
	          <div>
	            <div class="title">Coffee</div>
	            <i class="fa fa-coffee"></i>
	            <div class="value infinity">∞</div>
	          </div>
	        </div>
	      </div>
	    </div>
	    <div class="general">
	      <h1>${selfpr.memName }</h1>
	      <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce a volutpat mauris, at molestie lacus. Nam vestibulum sodales odio ut pulvinar.</p>
	      <span class="more">Mouse over the card for more info</span>
	    </div>
	  </div>
	</c:forEach>
	</c:when>
</c:choose>
    
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
		  
              
        <!-- 페이징 처리 -->
       
       <div class="col-1" style="left: 650px;">
          <div class="pagingArea"></div>
       </div>
        
        
        <div class="top-large-interval"></div>
	       <div class="col-2" style="left: 1200px;">
		       	<input type="button" value="내 홍보글 작성" id="insert-form" class="btn btn-primary" 
		       		   onclick="location.href='${pageContext.request.contextPath}/selfpr/InsertForm'"/>
	       </div>
        
      </section>
      
      <!-- hidden form -->
	<form id="searchForm">
		<input type="hidden" name="regionCode" />
		<input type="hidden" name="industryCode" />
	</form>
    
    <script>
    
	/* 하위 지역 셀렉트 */
      $("[name=metro]").on("change", function(){
    		$("[name='regionCode'] option").remove();   
    		$("[name='regionCode']").append("<option>지역</option>");
    		
    		let ref = $(this).val();
    		let data = [{type:'region',code:ref}];
    		
    		$.ajax({
    			url : "${pageContext.request.contextPath}/selfpr/search",
    			method : "post",
    			data : JSON.stringify(data),
    			dataType : "json",
    			contentType: 'application/json',
    			success : function(resp) {
    				console.log("리스트뽑아옴");
    				console.log(resp);
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
      
      /* 업종 셀렉트 */
      $("[name=industry0]").on("change", function(){
//    	 	console.log($(this).val());
//    	 	console.log($("[name=industry0]").val());
    		
    		$("[name='industry1'] option").remove();   
    		$("[name='industry1']").append("<option>중위</option>");
    		$("[name='industryCode'] option").remove();   
    		$("[name='industryCode']").append("<option>하위</option>");
    		
    		let ref = $(this).val();
    		let data = [{type:'industry',code:ref}];
    		
    		$.ajax({
    			url : "${pageContext.request.contextPath}/selfpr/search",
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
			$("[name='industryCode']").append("<option>하위</option>");
			
			let ref = $(this).val();
			let data = [{type:'industry',code:ref}];
			
			$.ajax({
				url : "${pageContext.request.contextPath}/selfpr/search",
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
      
      /* 최상위 셀렉트... */
      let topData = [
    		{type:'region', code:''}
    		, {type:'industry', code:''}
    	]
    	$.ajax({
    		url : "${pageContext.request.contextPath}/selfpr/search",
    		method : "post",
    		data : JSON.stringify(topData),
    		dataType : "json",
    		contentType: 'application/json',
    		success : function(resp) {
    			console.log("리스트뽑아옴");
    			let regionList = resp.regionList;
    			let industryList = resp.industryList;
    			
    			console.log("regionList",regionList);
    			console.log("industryList",industryList);
    			
    			let regionOption = [];
    			let industryOption = [];
    			
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
    			
    			$("select[name=metro]").append(regionOption);
    			$("select[name=industry0]").append(industryOption);
    		},
    		error : function(jqXHR, status, error) {
    			console.log(jqXHR);
    			console.log(status);
    			console.log(error);
    		}
    	});
      
	/* 시작하자마자 전체목록 조회 */    
	$(document).ready(function(){
		$("#btnsearch").trigger('click');
	});
	
	/* 서치결과 */
   	$("#btnsearch").click(function(){
		$.ajax({
			url: "<%=request.getContextPath() %>/selfpr",
			method: "get",
			data: $('#searchUI').serialize(),
			dataType: "json",
			success: function(resp){
				console.log(resp);
				
					let dataList = resp.pagingVO.dataList;
					console.log(dataList);
					let trTags = [];
						$.each(dataList, function(index, selfpr){
							trTags.push(makeTrTag(selfpr));
					});
					$('#searchTag').html(trTags);
					
					if(resp.pagingHTML)
						pagingArea.html(resp.pagingHTML);
					
					}
				});
	    });
    

//  tr 태그

    let makeTrTag = function(selfpr){
    	let selfprtag = "";
    	selfprtag += `
    	   <div class="col-lg-4">
            <div class="selfpr-block">
             <div>
              <blockquote>
                <p><strong>&ldquo;\${selfpr.prName }&rdquo;</strong></p>
              </blockquote>
             </div>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-5"><img src="resources/images/jobSeeker.png" alt="Image" class="img-jobseeker"></figure>
                <div>
                  <a href="${pageContext.request.contextPath}/selfpr/Detail/?no=\${selfpr.prNo }"><h4>\${selfpr.memName }</h4></a>
                  <span class="position">\${selfpr.prWantjob }</span>
                  <br>
                  <span style="font-size: 0.75em;">경력 : \${selfpr.prAnnual }</span>
                </div>
                <div>
                </div>
              </div>
            </div>
          </div>`;
          return selfprtag;
    }
    
//  페이징 처리

	let pagingArea = $(".pagingArea").on("click", "a.paging", function(event){
		event.preventDefault();
		let page = $(this).data("page");
		if(!page) return false;
		$('#searchUI').find("[name=page]").val(page);
		$("#btnsearch").trigger("click");
			
		return false;
	});
	   
    </script>

	<!-- SCRIPTS -->
	<script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/isotope.pkgd.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/stickyfill.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.fancybox.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.easing.1.3.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.waypoints.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/jquery.animateNumber.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/quill.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/bootstrap-select.min.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/daumPostcode.js"></script>
	<script src="<%=request.getContextPath() %>/resources/js/custom.js"></script>
</body>
</html>