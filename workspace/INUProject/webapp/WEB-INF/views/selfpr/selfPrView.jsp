<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* ${date}      윤호연      최초작성
* 2023.02.13   윤호연      1차수정
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
      
    </style> 
</head>

<body>

	<!-- HOME -->
	<section class="section-hero home-section overlay inner-page bg-image" style="background-image: url('resources/images/hero_1.jpg')" id="home-section">
		<div class="container">
	        <div class="row">
				<div class="col-md-7">
		            <h1 class="text-white font-weight-bold">인재 홍보 </h1>
		            <div class="custom-breadcrumbs">
						<a href="${pageContext.request.contextPath}/selfpr">SelfPR</a> <span class="mx-2 slash">/</span>
						<span class="text-white"><strong>Main</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>
	
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
				url : "${pageContext.request.contextPath}/announcement/select",
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
					
					console.log(resp.pagingHTML);
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