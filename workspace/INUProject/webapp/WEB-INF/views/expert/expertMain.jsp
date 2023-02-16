<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 1.      허근주      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<style>
.owl-item cloned{
	width: 400px;
}

</style>

    <section
      style="padding-top: 100px;"
      id="home-section"
    >
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <form method="post" class="search-jobs-form">
              <div class="row mb-5">
                
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
               								
                    <select
                      onchange="changeExfield()"
                      id ="exfield"
                    >
                      <c:forEach items="${exfield }" var ="exfield">
                      <option value="${exfield.exfieldId }">${exfield.exfieldName } </option>
                      </c:forEach>
                      </select>
                    <select id ="exjob">
                    	<c:forEach items="${exjob }" var ="exjob">
 						<option value="${exjob.exjobId }">${exjob.exjobName }</option>                  
 						</c:forEach>
                    </select>

                  <input
                    type="text"
                    class="form-control form-control-lg"
                    placeholder="상품명"
                  />
                  <button
                    type="submit"
                    class="btn btn-primary btn-lg btn-block text-white btn-search"
                  >
                    <span class="icon-search icon mr-2"></span>검색
                  </button>
                </div>
              </div>
              
            </form>
          </div>
        </div>
      </div>

      
    </section>
    <section class="site-section block__62272" id="next-section" >
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">상품분류</h2>
      </div>
      <div class="container">
        <div class="row justify-content-center mb-5" data-aos="fade-up">
          <div id="filters" class="filters text-center button-group col-md-7">
<%--             <a class="btn btn-primary active" href="<%=request.getContextPath() %>/expert/product">컨설팅</a> --%>
<%--             <a class="btn btn-primary active" href="<%=request.getContextPath() %>/expert/class">클래스</a> --%>
			<button class="btn btn-primary active" style="background: #dee2e6;" data-filter="*">All</button>
			<c:forEach items="${exlprod }" var ="exlprod">
            <button class="btn btn-primary"  onclick = "location.href = '<%=request.getContextPath() %>/expert/${exlprod.exlprodName }' " 
            style="color: #495057; background: #dee2e6;" >${exlprod.exlprodName }</button>
            </c:forEach>
          </div>
        </div>
         <div class="owl-carousel single-carousel">
		<c:set var="exprodList" value="${pagingVO.dataList }"></c:set>
<!--         <div id="posts" class="row no-gutter"> -->
       	<c:choose>
       		<c:when test="${not empty exprodList }">
          		<c:forEach items="${exprodList }" var="exprod">
          		<div class="container">
					<div class="row">          		
	         			 <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4 ${exprod.exfieldId }">
		           			 <a href="<%=request.getContextPath() %>/expert/prod/${exprod.exprodId }" class="item-wrap">
		             			 <span class="icon-add">${exprod.exprodName }</span>
		              			 <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
		            		 </a>
	         			 </div>
          			</div>
          		</div>
         		</c:forEach>
	      	</c:when>
      </c:choose>
<!--         </div> -->
      </div>
      </div>
      
    </section>
    <section class="site-section block__62272" id="next-section">
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">진행중인 이벤트</h2>
      </div>
      <div class="container">
      <div class="owl-carousel single-carousel">
		<c:set var="exeventList" value="${pagingVO2.dataList }"></c:set>
        <c:choose>
       		<c:when test="${not empty exeventList }">
          		<c:forEach items="${exeventList }" var="exevent">
          		<div class="container">
		          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
		            <a href="<%=request.getContextPath() %>/expert/event/${exevent.exeventId }" class="item-wrap">
		              <span class="icon-add">${exevent.exeventName }</span>
		              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
           			 </a>
          		</div>
          		</div>
        	 </c:forEach>
      	</c:when>
      </c:choose>
      </div>
      </div>
    </section>
    <section class="site-section block__62272" id="next-section">
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">추천 클래스</h2>
      </div>
      <div class="container">
        <div class="row justify-content-center mb-5" data-aos="fade-up">
          <div id="filters" class="filters text-center button-group col-md-7">
            <button class="btn btn-primary active" data-filter="*">All</button>
            <button class="btn btn-primary" data-filter=".web">Web</button>
            <button class="btn btn-primary" data-filter=".design">
              Design
            </button>
            <button class="btn btn-primary" data-filter=".brand">Brand</button>
          </div>
        </div>

        <div id="posts" class="row no-gutter">
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>

          <div
            class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4"
          >
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>
        </div>
      </div>
    </section>
    <section class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center" data-aos="fade">
            <h2 class="section-title mb-3">후기</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">
            <div class="block__87154  rounded">
              <blockquote>
                <p>
                 너무 좋은 상담시간이였습니다.
                </p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4">
                  <img
                    src="<%=request.getContextPath() %>/resources/images/우기1.jfif"
                    alt="Image"
                    class="img-fluid"
                  />
                </figure>
                <div>
                  <h3>아이유</h3>
                  <span class="position">가수</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="block__87154 bg-white rounded">
              <blockquote>
                <p>
                  유익한 시간 정보 감사합니다.
                </p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4">
                  <img
                    src="<%=request.getContextPath() %>/resources/images/우기1.jfif"
                    alt="Image"
                    class="img-fluid"
                  />
                </figure>
                <div>
                  <h3>아이유
                  </h3>
                  <span class="position">가수</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<<script type="text/javascript">
function changeExfield(){
	var exfieldSelect = $("#exfield option:selected").val();
	var exjobSelect = $("#exjob")
	exjobSelect.find('option').each(function(){
		$(this).remove();
	})
	exjobSelect.append("<option>직업코드</option>");
	console.log(exjobSelect)
	var data = {
			"exfieldId" : exfieldSelect 
	}
// 	console.log(data)
	$.ajax({
		url:'/INUProject/expert/exfield',
		method: 'post',
		data : JSON.stringify(data),
		contentType: 'application/json; charset=UTF-8',
		dataType : 'json',
		success : function(resp){
// 			console.log(resp[0].exfieldId)
			console.log(resp)
			for(i=0; i<resp.length; i++){
				console.log(resp[i].exfieldId)
				console.log(resp[i].exjobName)
				exjobSelect.append("<option>"+resp[i].exjobName+"</option>")
			}
				console.log(exjobSelect);
			
		},
      error : function(jqXHR, status, error) {
          console.log(jqXHR);
          console.log(status);
          console.log(error);
       }

		
	})
	
}	
</script>
<script>
/* $(document).ready(function(){
	 $('.your-class').slick({
    slide: 'div',        //슬라이드 되어야 할 태그
    infinite : true,     //무한 반복 옵션     
    slidesToShow : 2,        // 한 화면에 보여질 컨텐츠 개수
    slidesToScroll : 1,        //스크롤 한번에 움직일 컨텐츠 개수
    speed : 500,     // 다음 버튼 누르고 다음 화면 뜨는데까지 걸리는 시간(ms)
    arrows : true,         // 옆으로 이동하는 화살표 표시 여부
    dots : true,         // 스크롤바 아래 점으로 페이지네이션 여부
    autoplay : true,            // 자동 스크롤 사용 여부
    autoplaySpeed : 2000,         // 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
    pauseOnHover : true,        // 슬라이드 이동    시 마우스 호버하면 슬라이더 멈추게 설정
    vertical : false,        // 세로 방향 슬라이드 옵션 
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 3,
    prevArrow : "<button type='button' class='slick-prev'>Previous</button>",
    nextArrow : "<button type='button' class='slick-next'>Next</button>",
    draggable : true,     //드래그 가능 여부 
    responsive: [ // 반응형 웹 구현 옵션
      {  
        breakpoint: 960, //화면 사이즈 960px
        settings: {
          slidesToShow: 4
        } 
      },
      { 
        breakpoint: 768, //화면 사이즈 768px
        settings: {    
          slidesToShow: 5
        } 
      }
    ]
});
}); */
</script>
