<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      양서연      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script>

<!-- MAIN CSS -->

<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">

<style>
.pp {
	margin-bottom: 15px;
	color:black;
}
.ck-editor__editable { 
	height: 400px; 
	
}
.ref{
	color: red;
	font-size: 6px;
}

.text_box {position:relative; display:inline-block; width:100%;}
.text_box textarea {width:100%; height:152px; color:#666; font-family:"ht_r"; font-size:18px; line-height:28px; padding:20px; border:1px solid #e4dcd3; outline:0; resize:none}
.text_box .count {position:absolute; right:20px; bottom:20px; color:#666; font-family:"ht_r"; font-size:15px;}
.box{border:1px solid #e4dcd3}

/* .ck-content {  */
/* 	font-size: 12px;  */
/* } */
</style>

<!-- html body -->

<div class="site-wrap" style="background-color: white">

	<!-- HOME -->
	<section class="section-hero overlay inner-page bg-image" style="background-image: url('resources/images/hero_1.jpg');" id="home-section">
		<div class="container">
			<div class="row">
				<div class="col-md-7">
					<h1 class="text-white font-weight-bold">Post A Job</h1>
					<div class="custom-breadcrumbs">
						<a href="#">Home</a> <span class="mx-2 slash">/</span>
						<a href="#">Job</a> <span class="mx-2 slash">/</span>
						<span class="text-white"><strong>Post a Job</strong></span>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="site-section">
		<div class="container">

			<div class="row align-items-center mb-5">
				<div class="col-lg-8 mb-4 mb-lg-0">
					<div class="d-flex align-items-center">
						<div>
							<h2>공통 입력</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="row mb-5">
				<div class="col-lg-12">
					<form class="p-4 p-md-5 border rounded" method="post">
					<!-- 1. 담당자 정보 : 담당자 이름, 전화번호, 이메일 주소, 업종, 대표 근무지역(+api)  -->
					<!-- 2. 모집분야 : 모집분야명, 모집인원, 경력여부*, 담당업무, 근무부서, 근무 직급직책*(최대 3개까지 선택 가능), 필수/우대조건 -->
					<!-- 3. 자격/조건 : 지원자 학력*, 지원자 성별(성차별금지 남녀고용평등에 관한 법률), 지원자 연령(연령차별 금지에 관한 법률), 연봉/급여, 고용형태*, 수습기간, 근무요일, 근무시간 -->
					<!-- 4. 채용절차 : 공고 대표 직무*, 지원 접수 기간, 전형절차(, 제출서류) -->
					<!-- 5. 채용 제목, 근무환경, 복지/처우, 입사 전형, 지원 자격 -->
					
					<!-- 1. 담당자 정보 : 담당자 이름, 전화번호, 이메일 주소, 업종, 대표 근무지역(+api)  -->
					<h3 class="text-black mb-5 border-bottom pb-2">1.대표 정보</h3>
					<div style="margin-bottom: 100px">
						<!-- 담당자 아이디 -->
						<div class="form-group">
							<input type="hidden" id="memId" >
						</div>
						<div class="container">
							
							<div class="row pp">
								<div class="col-6 col-md-2">
									업종
									<div class="ref">
										※필수
									</div>
								</div>
								<div class="form-group col-md-6">
									<select class="selectpicker border rounded" id="job-type" data-style="btn-black" data-width="100%" data-live-search="true" title="대분류">
										<option>Part Time</option>
										<option>Full Time</option>
									</select>
									<select class="selectpicker border rounded" id="job-type" data-style="btn-black" data-width="100%" data-live-search="true" title="중분류">
										<option>Part Time</option>
										<option>Full Time</option>
									</select>
								</div>
							</div>
						</div>
						<div class="form-group container">
							<div class="row pp">
								<div class="col-6 col-md-2">
									대표근무지역
									<div class="ref">
										※필수
									</div>
								</div>
								<div class="form-group col-md-6">
					                <input type="hidden" id="sample4_postcode" placeholder="우편번호">
									<input type="text" id="sample4_jibunAddress" class="box" placeholder="지번주소" >
									<input type="button" onclick="sample4_execDaumPostcode()" value="주소 찾기"><br>
									<input type="hidden" id="sample4_roadAddress" placeholder="도로명주소">
									<span id="guide" style="color:#999;display:none"></span>
									<input type="hidden" id="sample4_detailAddress" placeholder="상세주소">
									<input type="hidden" id="sample4_extraAddress" placeholder="참고항목">
									<!-- data.sido+" "+data.sigungu -->
			                	</div>
							</div>
						</div>
						<!-- 지원자 학력 -->
						<div class="container">
							<div class="row pp">
								<div class="col-6 col-md-2">
									공통 학력
									<div class="ref">
										※필수
									</div>
								</div>
								<div class="form-group col-md-6">
									<select class="selectpicker border rounded" data-style="btn-black" data-width="100%" data-live-search="true" title="학력 구분">
										<option>Part Time</option>
										<option>Full Time</option>
									</select>
								</div>
							</div>
						</div>
						<!-- 급여 -->
						<div class="container">
							<div class="row pp">
								<div class="col-6 col-md-2">
									급여
									<div class="ref">
										※필수
									</div>
								</div>
								<div class="form-group col-md-6">
									<select class="selectpicker border rounded" data-style="btn-black" data-width="100%" data-live-search="true" title="학력 구분">
										<option>면접 후 결정</option>
										<option>연봉</option>
									</select>
								</div>
							</div>
							<div style="font-size: 13px">	
								※ 2023년 최저시급 9,620원, 주 40시간 기준 최저연봉 약 24,126,960원 입니다.
								2023년 최저임금에 부합한 급여를 입력해주세요. 위 최저임금은 기본소정 근로시간 기준의 급여이므로, 그 외 수당 발생시 추가 지급되어야 합니다. 
								당사는 본 채용건과 관련하여 '최저임금법'을 준수합니다, 최저임금을 준수하지 않는 경우, 공고 강제 마감 및 행정처분을 받을 수 있습니다.
							</div>
						</div>
					</div>
					
					<!-- 세부 페이지 추가 버튼 만들기, 세부voList -->
					<!-- 2. 모집분야 : 모집분야명, 모집인원, 경력여부*, 담당업무, 근무부서, 근무 직급직책*(최대 3개까지 선택 가능), 필수/우대조건 -->
					<h3 class="text-black mb-5 border-bottom pb-2">2. 모집분야(세부)</h3>
					<div class="container">
						<div class="row pp">
							<div class="col-6 col-md-2">
								모집분야
								<div class="ref">
									※필수
								</div>
							</div>
							<div class="form-group col-md-6" >
								<input type="text" class="box" >
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row pp">
							<div class="col-6 col-md-2">모집인원</div>
							<div class="form-group col-md-6">
								<input type="number" class="box"> 명
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row pp">
							<div class="col-6 col-md-2">
								경력
								<div class="ref">
									※필수
								</div>
							</div>
							<div class="form-group col-md-8">
								<div class="row pp">
									<div class="col-4 col-sm-3">경력무관 <input type="checkbox" name="career0" value="경력무관" /></div>
									<div class="col-4 col-sm-3">신입 <input type="checkbox" name="career1" value="신입" /></div>
									<div class="col-4 col-sm-3">경력 <input type="checkbox" name="career2" value="경력" /></div>
								</div>
<!-- 								<div id="career_year" style="display: none">연차 <input type="text" name="career_year" value="" placeholder="ex) 1년~3년"/></div> -->
								<div id="career_year" style="display: none">
									<div class="form-group col-md-6">
										<select class="selectpicker border rounded select_year" id="select_year" data-style="btn-black" data-width="100%" data-live-search="true" title="연차">
											<option value="1년 이상">1년 이상</option>
											<option value="4년 이상">4년 이상</option>
											<option value="7년 이상">7년 이상</option>
											<option value="10년 이상">10년 이상</option>
											<option value="15년 이상">15년 이상</option>
											<option value="20년 이상">20년 이상</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row pp">
							<div class="col-6 col-md-2">담당 업무</div>
							<div class="form-group col-md-6 text_box text_boxp1">
								<textarea rows="4" cols="50"></textarea>
								<div class="count countp1"><span>0</span>/200</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row pp">
							<div class="col-6 col-md-2">근무부서</div>
							<div class="form-group col-md-6">
								<input id="daDepartment" type="text" class="box" placeholder="ex) 영업부" />
							</div>
						</div>
					</div>
					
					<!-- 근무 직급직책*(최대 3개까지 선택 가능), 필수/우대조건 -->
					<div class="container">
						<div class="row pp">
							<div class="col-6 col-md-2">지원 조건</div>
							<div class="form-group col-md-6 text_box text_boxp2">
								<textarea rows="4" cols="50"></textarea>
								<div class="count countp2"><span>0</span>/200</div>
							</div>
						</div>
					</div>
					<div class="container">
						<div class="row pp">
							<div class="col-6 col-md-2">우대 사항</div>
							<div class="form-group col-md-6 text_box text_boxp3">
								<textarea rows="4" cols="50"></textarea>
								<div class="count countp3"><span>0</span>/200</div>
							</div>
						</div>
					</div>
					<!-- 3. 자격/조건 : 지원자 학력*, 지원자 성별(성차별금지 남녀고용평등에 관한 법률), 지원자 연령(연령차별 금지에 관한 법률), 연봉/급여, 고용형태*, 수습기간, 근무요일, 근무시간 -->
					
					<div class="container">
						<div class="row pp">
							<div class="col-6 col-md-2">내용작성</div>
						</div>
						<textarea name="text" id="editor" ></textarea>
					</div>
	            </form>
	          </div>
          </div>
		</div>        
    </section>
</div>
<h1>공고 등록 폼임</h1>
<h1>공고 등록 폼임</h1>
<h1>공고 등록 폼임</h1>
<h1>공고 등록 폼임</h1>
<div>
	※ 2023년 최저시급 9,620원, 주 40시간 기준 최저연봉 약 24,126,960원 입니다.
	2023년 최저임금에 부합한 급여를 입력해주세요. 위 최저임금은 기본소정 근로시간 기준의 급여이므로, 그 외 수당 발생시 추가 지급되어야 합니다. 
	(체크박스)당사는 본 채용건과 관련하여 '최저임금법'을 준수합니다, 최저임금을 준수하지 않는 경우, 공고 강제 마감 및 행정처분을 받을 수 있습니다.
	
	※ 성별, 연령 입력 불가 안내
	- 당사는 남녀고용평등 및 연령차별 금지에 관한 법률을 준수하여, 불합리한 성별, 연령 조건은 제시할 수 없습니다. 이를 준수하지 않는 경우, 공고 강제 마감 및 행정처분을 받을 수 있습니다.
	- 성별, 연령 입력 불가로 인해 기존에 등록한 공고는 수정, 연장, 복사시에 '성별무관','연령무관'으로 변경됩니다.
</div>




<!-- SCRIPTS -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
var career0 = document.querySelector("input[name=career0]");
var career1 = document.querySelector("input[name=career1]");
var career2 = document.querySelector("input[name=career2]");
var career_year = document.getElementById("career_year");

career0.addEventListener("change", function (e) {
    e.preventDefault();
   	career1.checked = false;
   	career2.checked = false;
   	career_year.style.display = 'none';
   	

});
career1.addEventListener("change", function (e) {
    e.preventDefault();
    if(career0.checked){
    	career0.checked = false;
    }
});
career2.addEventListener("change", function (e) {
    e.preventDefault();
    if(career0.checked){
    	career0.checked = false;
    }
});
career2.addEventListener("change", function (e) {
    if(career2.checked){
	    career_year.style.display = 'block';
    }else{
    	career_year.style.display = 'none';
    }
});


//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
function sample4_execDaumPostcode() {
	new daum.Postcode({
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
        	console.log(data.sido+" "+data.sigungu);

            // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var roadAddr = data.roadAddress; // 도로명 주소 변수
            var extraRoadAddr = ''; // 참고 항목 변수

            // 법정동명이 있을 경우 추가한다. (법정리는 제외)
            // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }
            // 건물명이 있고, 공동주택일 경우 추가한다.
            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }
            // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample4_postcode').value = data.zonecode;
            document.getElementById("sample4_roadAddress").value = roadAddr;
            document.getElementById("sample4_jibunAddress").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("sample4_extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("sample4_extraAddress").value = '';
            }

            var guideTextBox = document.getElementById("guide");
            // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
            if(data.autoRoadAddress) {
                var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                guideTextBox.style.display = 'block';

            } else if(data.autoJibunAddress) {
                var expJibunAddr = data.autoJibunAddress;
                guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                guideTextBox.style.display = 'block';
            } else {
                guideTextBox.innerHTML = '';
                guideTextBox.style.display = 'none';
            }
        }
    }).open();
}
    
</script>

<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
<script>
CKEDITOR.replace('editor',{
	filebrowserUploadUrl: '${pageContext.request.contextPath}/board/boardImage.do?command=QuickUpload&type=Files&responseType=json'
});
$('.text_boxp1 textarea').keyup(function(){
	var content = $(this).val();
	$('.text_boxp1 .countp1 span').html(content.length);
	if (content.length > 200){
		alert("최대 200자까지 입력 가능합니다.");
		$(this).val(content.substring(0, 200));
		$('.text_boxp1 .countp1 span').html(200);
	}
});
$('.text_boxp2 textarea').keyup(function(){
	var content = $(this).val();
	$('.text_boxp2 .countp2 span').html(content.length);
	if (content.length > 200){
		alert("최대 200자까지 입력 가능합니다.");
		$(this).val(content.substring(0, 200));
		$('.text_boxp2 .countp2 span').html(200);
	}
});
$('.text_boxp3 textarea').keyup(function(){
	var content = $(this).val();
	$('.text_boxp3 .countp3 span').html(content.length);
	if (content.length > 200){
		alert("최대 200자까지 입력 가능합니다.");
		$(this).val(content.substring(0, 200));
		$('.text_boxp3 .countp3 span').html(200);
	}
});
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
