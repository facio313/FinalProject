<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* ${date}      윤호연      최초작성
* 2023.02.20   윤호연      1차수정
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
    
    <style type="text/css">
    
    .top-interval{
        height: 25px;
      }
    .top-medium-interval{
      	height: 50px;
      }
    .top-large-interval{
      	height: 100px;
      }
      
    </style>   
</head>
<body>

    <!-- HOME -->
	<section class="section-hero home-section overlay inner-page bg-image" style="background-image: url('<%=request.getContextPath()%>/resources/images/hero_1.jpg');" id="home-section">
		<div class="container">
	        <div class="row">
				<div class="col-md-7">
		            <h1 class="text-white font-weight-bold">홍보글 수정 </h1>
		            <div class="custom-breadcrumbs">
						<a href="${pageContext.request.contextPath}/selfpr">SelfPR</a> <span class="mx-2 slash">/</span>
						<span class="text-white"><strong>UpdateForm</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>
	
	<section style="padding-top: 100px;">
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-md-12">
            
              <form action="${pageContext.request.contextPath}/selfpr/Update" method="post" class="search-jobs-form" id="searchUI">
               <input type="hidden" name="prNo" value="${selfpr.prNo }">
                <div class="row mb-5">
                
				<!-- 1번째 -->
                 <div class="col-lg-2">
				 <p style="text-align: center;">희망분야선택</p>
	                  <select name="industry0" class="form-select form-select-sm selectBox">
						 <option value >기초</option>
					  </select>
				 </div>	
                 
                  <!-- 2번째 -->
				 <div class="col-lg-2">
                 <p style="text-align: center;">희망근무지역선택</p>
					
                  <select name="metro" class="form-select form-select-sm selectBox">
					 <option value>기초</option>
				  </select>
				  </div>	
                  
                  <!-- 3번째 -->
                  <div class="col-lg-2">
                  <p style="text-align: center;">희망직급선택</p>
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
                        <option value="사원급"<c:if test="${selfpr.prWanttype=='사원급'}">selected</c:if>>사원급</option>
                        <option value="주임급"<c:if test="${selfpr.prWanttype=='주임급'}">selected</c:if>>주임급</option>
                        <option value="대리급"<c:if test="${selfpr.prWanttype=='대리급'}">selected</c:if>>대리급</option>
                        <option value="과장급"<c:if test="${selfpr.prWanttype=='과장급'}">selected</c:if>>과장급</option>
                        <option value="부장급"<c:if test="${selfpr.prWanttype=='부장급'}">selected</c:if>>부장급</option>
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
                  <p style="text-align: center;">직무경력선택</p>
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
                        <option value="신입"<c:if test="${selfpr.prAnnual=='신입'}">selected</c:if>>신입</option>
                        <option value="1년차 미만"<c:if test="${selfpr.prAnnual=='1년차 미만'}">selected</c:if>>1년차 미만</option>
                        <option value="1~2년"<c:if test="${selfpr.prAnnual=='1~2년'}">selected</c:if>>1~2년</option>
                        <option value="2~3년"<c:if test="${selfpr.prAnnual=='2~3년'}">selected</c:if>>2~3년</option>
                        <option value="3~5년"<c:if test="${selfpr.prAnnual=='3~5년'}">selected</c:if>>3~5년</option>
                        <option value="5~10년"<c:if test="${selfpr.prAnnual=='5~10년'}">selected</c:if>>5~10년</option>
                        <option value="10년 이상"<c:if test="${selfpr.prAnnual=='10년 이상'}">selected</c:if>>10년 이상</option>
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
                  <p style="text-align: center;">학력수준선택</p>
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
                        <option value="초,중졸"<c:if test="${selfpr.prEdu=='초,중졸'}">selected</c:if>>초,중졸</option>
                        <option value="고졸"<c:if test="${selfpr.prEdu=='고졸'}">selected</c:if>>고졸</option>
                        <option value="대학교(2,3년)졸업예정"<c:if test="${selfpr.prEdu=='대학교(2,3년)졸업예정'}">selected</c:if>>대학교(2,3년)졸업예정</option>
                        <option value="대학교(4년)졸업예정"<c:if test="${selfpr.prEdu=='대학교(4년)졸업예정'}">selected</c:if>>대학교(4년)졸업예정</option>
                        <option value="대학교(2,3년)졸업"<c:if test="${selfpr.prEdu=='대학교(2,3년)졸업'}">selected</c:if>>대학교(2,3년)졸업</option>
                        <option value="대학교(4년)졸업"<c:if test="${selfpr.prEdu=='대학교(4년)졸업'}">selected</c:if>>대학교(4년)졸업</option>
                        <option value="석사"<c:if test="${selfpr.prEdu=='석사'}">selected</c:if>>석사</option>
                        <option value="박사"<c:if test="${selfpr.prEdu=='박사'}">selected</c:if>>박사</option>
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
            </div>
          </div>
        </div>
       </section>
 
	
	<!-- 입력 폼 -->
    <section class="site-section">
      <div class="container">
        
          <div class="col-11">


              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">자신을 표현하는 한마디</label> 
                  <input type="text" class="form-control" name="prName" value="${selfpr.prName }">
                </div>
              </div>
              
              <div class="row form-group">
	                <div class="col-md-6">
	                  <label class="text-black">원하는 연봉</label> 
	                  <input type="text" class="form-control" name="prWantmn" value="${selfpr.prWantmn }">
	                </div>
	              
	                <div class="col-md-6">
	                  <label class="text-black">원하는 직무</label> 
	                  <input type="text" class="form-control" name="prWantjob" value="${selfpr.prWantjob }">
	                </div>
              </div>
              
              <div class="top-interval"></div>

              <div class="row form-group">
                <div class="col-md-12">
                  <label class="text-black">간단 자기소개글</label> 
                  <textarea name=prContent cols="30" rows="7" class="form-control">${selfpr.prContent }</textarea>
                </div>
              </div>

             <div class="col-md-12">
               <input type="submit" value="수정하기" class="btn btn-primary btn-md text-white">
             </div>
            
            </form>
            
                <div class="top-interval"></div>
                
           </div>
          </div>
        </section>
        
    
        
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
//  	 	console.log($(this).val());
//  	 	console.log($("[name=industry0]").val());
  		
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