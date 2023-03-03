<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      허근주      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<div class="container emp-profile" 
		style="margin-top: 150px; margin-bottom: 170px;">
            <form method="post">
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-img">
                            <img src="<%=request.getContextPath()%>/resources/attach/memberFolder/${seeker.attatchList[0].attSavename }" alt="" style="max-width: 200px;"/>
                             <div class="form-group">
			                <label for="company-website-tw d-block">프로필사진변경</label> <br>
			                <label class="btn btn-primary btn-md btn-file">
			                  사진선택
			                  <input type="file" hidden>
			                </label>
              </div>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="profile-head">
                                    <h5>
                                        ${seeker }
                                    </h5>
                                    <h6>
                                        Web Developer and Designer
                                    </h6>
                                    <p class="proile-rating">RANKINGS : <span>8/10</span></p>
                            <ul class="nav nav-tabs" id="myTab" role="tablist" style="margin-top: 140px;">
                                <li class="nav-item">
                                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">회원정보</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="resume-tab" data-toggle="tab" href="#resume" role="tab" aria-controls="resume" aria-selected="false">이력서</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="apply-tab" data-toggle="tab" href="#apply" role="tab" aria-controls="apply" aria-selected="false">지원내역</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="selfpr-tab" data-toggle="tab" href="#selfpr" role="tab" aria-controls="selfpr" aria-selected="false">홍보글</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="excart-tab" data-toggle="tab" href="#excart" role="tab" aria-controls="excart" aria-selected="false">구매내역</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                 <!--    <div class="col-md-2">
                        <input type="submit" class="profile-edit-btn" name="btnAddMore" value="Edit Profile"/>
                        <input type="button" class="kakaopay" onclick="fn_direct_pay()"> 
                    </div> -->
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <div class="profile-work">
                            <p>WORK LINK</p>
                            <a href="">Website Link</a><br/>
                            <a href="">Bootsnipp Profile</a><br/>
                            <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="tab-content profile-tab" id="myTabContent">
                       		<!-- 토글 회원정보 -->
                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>User Id</label>
                                            </div>
                                            <div class="col-md-8">
                                                <p>${seeker.memId }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Name</label>
                                            </div>
                                            <div class="col-md-8">
                                                <p>${seeker.memName }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Email</label>
                                            </div>
                                            <div class="col-md-8">
                                                <p>${seeker.memEmail }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>Phone</label>
                                            </div>
                                            <div class="col-md-8">
                                                <p>${seeker.memTel }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-4">
                                                <label>address</label>
                                            </div>
                                            <div class="col-md-8">
                                                <p>${seeker.memAddr1 } ${seeker.memAddr2 }>
                                            </div>
                                        </div>
                            </div>
                            <!-- 토글 이력서 -->
                            <div class="tab-pane fade" id="resume" role="tabpanel" aria-labelledby="resume-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Experience</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 토글 지원내역 -->
                            <div class="tab-pane fade" id="apply" role="tabpanel" aria-labelledby="apply-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>apply</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 토글 홍보글 -->
                            <div class="tab-pane fade" id="selfpr" role="tabpanel" aria-labelledby="selfpr-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>selfpr</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Hourly Rate</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>10$/hr</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Total Projects</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>230</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>English Level</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>Expert</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>Availability</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>6 months</p>
                                            </div>
                                        </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <label>Your Bio</label><br/>
                                        <p>Your detail description</p>
                                    </div>
                                </div>
                            </div>
                            <!-- 토글 유료상품 구매내역 -->
                            <div class="tab-pane fade" id="excart" role="tabpanel" aria-labelledby="excart-tab">
                                        <div class="row" style="height: 60px;"> 
                                            <div class="col-md-2">
                                                <label><strong>번호</strong></label>
                                            </div>
                                            <div class="col-md-3">
                                                <label><strong>상품명</strong></label>
                                            </div>
                                            <div class="col-md-3">
                                                <p><strong>구매일시</strong></p>
                                            </div>
                                            <div class="col-md-2">
                                                <p><strong>리뷰등록</strong></p>
                                            </div>
                                            <div class="col-md-2">
                                                <p><strong>상품이용</strong></p>
                                            </div>
                                        </div>
                                       <c:forEach items="${excartList }" var="excart" varStatus="status">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <label>${status.count }</label>
                                            </div>
                                            <div class="col-md-4">
                                                <label><a href="${pageContext.request.contextPath }/expert/prod/${excart.exprodId }">${excart.exprodName }</a></label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${excart.excartDate }</p>
                                            </div>
                                            <div id="reviewArea" class="col-md-2 reviewArea">
                                                <p id="reviewState" class="reviewState">${excart.reviewState }</p>
                                            </div>
                                            <div id="excartArea" class="col-md-2 excartArea">
                                                <p id="excartState" class="excartState">${excart.excartState }</p>
                                            </div>
                                            <input type="hidden" value="${excart.exprodId }" id="exprodId"/>
                                        </div>
                                       </c:forEach>
                                        

                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
        
        
  <script type="text/javascript">
  var reviewArea = document.querySelectorAll("#reviewArea");
  var reviewState = document.querySelectorAll("#reviewState");
  var excartArea = document.querySelectorAll("#excartArea");
  var excartState = document.querySelectorAll("#excartState");
  var exprodId = document.querySelectorAll("#exprodId");
  console.log(reviewState);
//   if()
//   reviewArea.append("adasdasdsad") 
  for(var i=0; i<reviewState.length; i++){
  	if(reviewState[i].innerText==="미등록"){
  		console.log(exprodId[i].value);
  		reviewState[i].innerHTML = "<button type=button onclick="+"location.href='${pageContext.request.contextPath }/expert/review/write';"+">미등록</button>";
  	}else{
  		continue;
  	}
  } 
  for(var i=0; i<excartState.length; i++){
  	if(excartState[i].innerText==="미사용"){
  		excartState[i].innerHTML = "<a href="+"javascript:void(window.open('${pageContext.request.contextPath }/expert/chat/"+exprodId[i].value+"','채팅창','width=400px,height=650px')"+")>미사용</a>";
  	}else{
  		continue;
  	}
  } 
  
 function reviewWrite(){
	 location.href="${pageContext.request.contextPath }/expert/write";
 } 
  
  
/*   var reviewArea = $(".reviewArea");
  var reviewState = $(".reviewState");
  
 var excartArea = $(".excartArea");
  var excartState = $(".excartState"); 
  function button() {
	  return $("<button>").html("등록하기");
  }
  console.log(button)	  ;
	$.each(reviewState, function(index, state) {
		console.log(index, ":", state.innerHTML);
		if (state.innerHTML == "미등록") {
			reviewArea[index].innerHTML = "<p>미등록</p><button>등록하기</button>";
		}
	}); */

	  
  function fn_direct_pay(){
		if(1===1){ // 결제금액이 0원일경우 바로 결제완료 처리
		// 카카오 결제 API
		  var IMP = window.IMP; // 생략가능
		  IMP.init('imp23062788');  // 가맹점 식별코드
		  // IMP.request_pay(param, callback) 결제창 호출
		  IMP.request_pay({
		      pg : 'kakaopay', //pg사 선택 (kakao, kakaopay 둘다 가능)
		      pay_method: 'card',// 기능 없음
		      merchant_uid : '10000',
		      name : '10000',
		      amount : 10000, // 빌링키 발급과 함께 1,004원 결제승인을 시도합니다.
		      //customer_uid 파라메터가 있어야 빌링키 발급을 시도함
		      customer_uid : 'imp23062788',
		      buyer_email : 'iamport@siot.do',
		      buyer_name : '대전오슈',
		      buyer_tel : '042-222-8202',
		      buyer_addr : '대전광역시 중구 계룡로 846 3층',
		  }, function(rsp) { //callback
		      if ( rsp.success ) {
		        console.log('빌링키 발급 성공', rsp)
		        //빌링키 발급이 완료되었으므로, 서버에 결제 요청
		        alert('예약 결제가 완료되었습니다');
		        $('input[name=paymentResult]').attr('value','결제완료')
		      } else {
		        var msg = '결제에 실패하였습니다.\n';
		        msg += rsp.error_msg;
		        alert(msg);
		        return false;
		      }
		      //$("#final-support-submit").submit();
		      $("#paymentInformation").submit();
		  });
		}else{
			 $('input[name=paymentResult]').attr('value','결제완료')
			 $("#paymentInformation").submit();
		}
		
	}
<!--

//-->
</script>