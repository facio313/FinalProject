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
                                    <h5 style="overflow: scroll;height: 300px;">
                                        seeker : ${seeker }
                                        <br>
                                        <br>
                                        expert : ${expert }
                                        
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
                                    <a class="nav-link" id="resume-tab" data-toggle="tab" href="#resume" role="tab" aria-controls="resume" aria-selected="false">전문가정보</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="apply-tab" data-toggle="tab" href="#apply" role="tab" aria-controls="apply" aria-selected="false">지원내역</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="selfpr-tab" data-toggle="tab" href="#selfpr" role="tab" aria-controls="selfpr" aria-selected="false">홍보글</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" id="excart-tab" data-toggle="tab" href="#excart" role="tab" aria-controls="excart" aria-selected="false">등록상품 목록</a>
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
                            <p>수정</p>
                            <a href="">회원정보수정</a><br/>
                            <a href="">전문가정보수정</a><br/>
                        <!--     <a href="">Bootply Profile</a>
                            <p>SKILLS</p>
                            <a href="">Web Designer</a><br/>
                            <a href="">Web Developer</a><br/>
                            <a href="">WordPress</a><br/>
                            <a href="">WooCommerce</a><br/>
                            <a href="">PHP, .Net</a><br/> -->
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
                            <!-- 전문가 정보 -->
                            <div class="tab-pane fade" id="resume" role="tabpanel" aria-labelledby="resume-tab">
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>승인일자</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${expert.expertApprovalDate }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>사업장 주소</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>(${expert.expertZip }) ${expert.expertAddr } ${expert.expertAddr2 } </p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>사업장 번호</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${expert.expertTel }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>이메일</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${expert.expertEmail }</p>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-6">
                                                <label>은행, 계좌</label>
                                            </div>
                                            <div class="col-md-6">
                                                <p>${expert.expertBank } / ${expert.expertAccount }</p>
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
                                            <div class="col-md-1">
                                                <label><strong>번호</strong></label>
                                            </div>
                                            <div class="col-md-4">
                                                <label><strong>상품명</strong></label>
                                            </div>
                                            <div class="col-md-3">
                                                <p><strong>등록일</strong></p>
                                            </div>
                                            <div class="col-md-2">
                                                <p><strong>등록상태</strong></p>
                                            </div>
                                            <div class="col-md-1">
                                                <p><strong></strong></p>
                                            </div>
                                            <div class="col-md-1">
                                                <p><strong></strong></p>
                                            </div>
                                        </div>
                                       <c:forEach items="${expert.exprodList }" var="exprodList" varStatus="status">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <label>${status.count }</label>
                                            </div>
                                            <div class="col-md-4">
                                                <label><a href="${pageContext.request.contextPath }/expert/prod/${exprodList.exprodId }">${exprodList.exprodName }</a></label>
                                            </div>
                                            <div class="col-md-3">
                                                <p>${exprodList.exprodName }</p>
                                            </div>
                                            <div id="aprovalArea" class="col-md-2 reviewArea">
                                                <p id="aprovalState" class="reviewState">${exprodList.exprodAproval }</p>
                                            </div>
                                            <div class="col-md-1">
                                                <p class="updateProd"><a href="${pageContext.request.contextPath }/expert/pushprod/${exprodList.exprodId }">수정</a></p>
                                            </div>
                                            <div class="col-md-1">
                                                <p class="updateProd"><a href="javascript:void(window.open('${pageContext.request.contextPath }/expert/chat/${exprodList.exprodId }','채팅창','width=650px,height=600px'))">입장</a></p>
                                            </div>
                                        </div>
                                       </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
            </form>           
        </div>
        
        
  <script type="text/javascript">
  var aprovalArea = document.querySelectorAll("#aprovalArea");
  var aprovalState = document.querySelectorAll("#aprovalState");
  console.log(aprovalState);
  for(var i=0; i<aprovalState.length; i++){
  	if(aprovalState[i].innerText==="N"){
  		aprovalState[i].innerHTML = "승인 대기중";
  	}else{
  		aprovalState[i].innerHTML = "승인 완료";
  	}
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