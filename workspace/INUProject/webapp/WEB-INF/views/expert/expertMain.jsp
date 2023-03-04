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
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/client-mobile-pages-ServiceHome.85c28b136b33988dd374.css" />
<style>
.owl-item cloned {
	width: 400px;
}

.img-fluid:hover {
	opacity: 0.5;
}

.site-section {
	padding-bottom: 0px;
}

</style>

<section style="padding-top: 100px;" id="home-section">
	<div class="container">
		<div class="row align-items-center justify-content-center">

			<form:form action="${pageContext.request.contextPath}/expert/search"
				id="searchUI" modelAttribute="simpleCondition" method="get">
				<form:select class="form-select" onchange="changeExfield()"
					id="exfield" path="searchField">
					<form:option value="" label="직업분류"></form:option>
					<c:forEach items="${exfield }" var="exfield">
						<form:option value="${exfield.exfieldId }"
							label="${exfield.exfieldName }">
						</form:option>
					</c:forEach>
				</form:select>
				<form:select id="exjob" class="form-select" path="searchValue">
					<form:option value="" label="직업"></form:option>
					<c:forEach items="${exjob }" var="exjob">
						<form:option value="${exjob.exjobId }" label="${exjob.exjobName }">
						</form:option>
					</c:forEach>
				</form:select>
				<form:hidden path="newsField" value="구분자" />
				<div class="input-group">
					<form:input type="search" path="searchWord"
						class="form-control rounded" placeholder="Search"
						aria-label="Search" aria-describedby="search-addon" />
					<button type="submit" id="searchBtn"
						class="btn btn-outline-primary">search</button>
				</div>
			</form:form>
		</div>
	</div>


</section>
<section class="site-section block__62272" id="next-section">
	<div class="col-12 text-center" data-aos="fade">
		<h2 class="section-title mb-3">상품분류</h2>
	</div>
	<div class="container">
		<div class="row justify-content-center mb-5" data-aos="fade-up">
			<div id="filters" class="filters text-center button-group col-md-7">
				<%--             <a class="btn btn-primary active" href="<%=request.getContextPath() %>/expert/product">컨설팅</a> --%>
				<%--             <a class="btn btn-primary active" href="<%=request.getContextPath() %>/expert/class">클래스</a> --%>
				<%-- <button class="btn btn-primary active" style="background: #dee2e6;"
					data-filter="*">All</button>
				<c:forEach items="${exlprod }" var="exlprod">
					<button class="btn btn-primary"
						onclick="location.href = '<%=request.getContextPath() %>/expert/${exlprod.exlprodName }' "
						style="color: #495057; background: #dee2e6;">${exlprod.exlprodName }</button>
				</c:forEach> --%>
			</div>
		</div>
		<div class="owl-carousel owl-theme">
			<c:set var="exprodList" value="${pagingVO.dataList }"></c:set>
			<!--         <div id="posts" class="row no-gutter"> -->
			<c:choose>
				<c:when test="${not empty exprodList }">
					<c:forEach items="${exprodList }" var="exprod">
						<div class="block__87154  rounded">
							<a
								href="<%=request.getContextPath() %>/expert/prod/${exprod.exprodId }"
								class="item-wrap"> <span class="icon" style="color: blue;">${exprod.exprodName }</span>
								<img class="img-fluid"
								src="<%=request.getContextPath()%>/resources/images/logo.jpg"
								style="opactiy: 0.5; height: 200px; width: 450px;" />
							</a>
							<h4>${exprod.exprodPr }</h4>
							<div class="block__91147 d-flex align-items-center"
								onclick="expertDetail();">
								<figure class="mr-4">
									<img
										src="<%=request.getContextPath()%>/resources/images/Dobby.png"
										alt="Image" class="img-fluid" />
								</figure>
								<div>
									<h3 id="memID" data-memid="${exprod.memId }">${exprod.memName }</h3>
									<span class="position">${exprod.expertField }</span>
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
		<div class="owl-carousel owl-theme">
			<c:set var="exeventList" value="${pagingVO2.dataList }"></c:set>
			<c:choose>
				<c:when test="${not empty exeventList }">
					<c:forEach items="${exeventList }" var="exevent">
						<div class="block__87154  rounded">
							<a
								href="<%=request.getContextPath() %>/expert/event/detail/${exevent.exeventId }"
								class="item-wrap"> <span class="icon" style="color: blue;">${exevent.exeventName }</span>
								<img class="img-fluid"
								src="<%=request.getContextPath()%>/resources/attach/expertFolder/${exevent.attatchList[0].attSavename }"
								style="opactiy: 0.5; height: 200px; width: 450px;" />
							</a>
						</div>
					</c:forEach>
				</c:when>
			</c:choose>
		</div>
	</div>
</section>
<section class="site-section block__62272" id="next-section">
	<div class="col-12 text-center" data-aos="fade">
		<h2 class="section-title mb-3">추천 상품</h2>
	</div>
	<div class="container">
		<div class="row justify-content-center mb-5" data-aos="fade-up">
			<div id="filters" class="filters text-center button-group col-md-7">
				<!-- <button class="btn btn-primary active" data-filter="*">All</button>
				<button class="btn btn-primary" data-filter=".web">Web</button>
				<button class="btn btn-primary" data-filter=".design">
					Design</button>
				<button class="btn btn-primary" data-filter=".brand">Brand</button> -->
			</div>
		</div>

		<div id="posts" class="row no-gutter">
			<div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
				<a href="portfolio-single.html" class="item-wrap"> <span
					class="icon-add"></span> <img class="img-fluid"
					src="<%=request.getContextPath()%>/resources/images/Dobby.png" />
				</a>
			</div>
			<div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4"
				style="">
				<%-- <a href="portfolio-single.html" class="item-wrap"> <span
					class="icon-add"></span> <img class="img-fluid"
					src="<%=request.getContextPath()%>/resources/images/Dobby.png" />
				</a> --%>
			</div>

			<div
				class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
				<a href="portfolio-single.html" class="item-wrap"> <span
					class="icon-add"></span> <img class="img-fluid"
					src="<%=request.getContextPath()%>/resources/images/Dobby.png" />
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
		<!-- 		<div class="row"> -->
		<div class="owl-carousel owl-theme">
	<%-- 		<c:set var="exreviewList" value="${pagingVO3.dataList }"></c:set>
			<c:forEach items="${exreviewList }" var="exreviewList">
				<div class="col-lg-6">
					<div class="block__87154  rounded" style="width: 550px">
						<h5>상품명 : ${exreviewList.exprodName }</h5>
						<h5>제목 : ${exreviewList.exreviewName }</h5>
						<blockquote style="height: 300px; overflow: scroll;">
							<p>${exreviewList.exreviewContent }</p>
						</blockquote>
						<div class="block__91147 d-flex align-items-center">
							<figure class="mr-4">
								<img
									src="<%=request.getContextPath()%>/resources/images/Dobby.png"
									alt="Image" class="img-fluid" />
							</figure>
							<div>
								<h3>${exreviewList.exreviewWriter }</h3>
								<span class="position">가수</span>
							</div>

						</div>
					</div>
				</div>
			</c:forEach> --%>
			<c:set var="exreviewList" value="${pagingVO3.dataList }"></c:set>
			<c:forEach items="${exreviewList }" var="exreviewList">
			<div class="item">
				<div class="card__dQZcy">
					<div class="cardInner__QD8Zm">
						<a href="/expert/profile/home?storeId=100038351"
							class="cardMain__tghgE"><div class="thumbnailArea__ya8yf">
								<div class="thumbnail__ZS68O"
									style="background-image: url(&quot;https://kin-phinf.pstatic.net/20230207_239/1675773135442lMzIB_JPEG/1675773135412.jpg?type=f200_200&quot;);"></div>
							</div>
							<strong class="name__cvkY2">${exreviewList.expertName }</strong>
						<div class="categoryArea__HD2sd">
								<span class="category__vgKWL">${exreviewList.exfieldName }</span><i
									class="iconArrow__ZVBiS"></i><span class="category__vgKWL">${exreviewList.exjobName }</span>
							</div></a>
						<div class="cardContent__Jqa0M">
							<a
								href="/expert/profile/home?storeId=100038351&amp;counselingId=535869268511744&amp;tab=REVIEW"
								class="review__d6Vu5"><svg
									xmlns="http://www.w3.org/2000/svg" width="17" height="12"
									viewBox="0 0 17 12" class="iconMark__rV_jc">
									<path fill="#4A65F6"
										d="m13.356 12 .236-.01c.969-.031 1.792-.408 2.47-1.13.71-.723 1.017-1.555.92-2.497-.064-.974-.452-1.759-1.162-2.356a3.665 3.665 0 0 0-1.162-.753c-.356-.126-.638-.299-.848-.519-.21-.22-.25-.486-.121-.8.129-.315.395-.66.799-1.037.404-.377.702-.644.896-.8.452-.315.735-.59.848-.825.113-.236.089-.48-.073-.73-.258-.377-.517-.558-.775-.542-.258.016-.581.102-.969.259-.29.157-.565.306-.823.448a6.96 6.96 0 0 0-.775.494 8.228 8.228 0 0 0-2.035 2.309c-.258.44-.484.879-.678 1.319-.193.44-.323.91-.387 1.413-.13.942-.097 1.9.097 2.873.226.88.71 1.602 1.453 2.167.678.534 1.453.77 2.325.707l-.236.01zm-9.639 0 .236-.01c.968-.031 1.792-.408 2.47-1.13.71-.723 1.017-1.555.92-2.497-.064-.974-.452-1.759-1.162-2.356a3.658 3.658 0 0 0-1.163-.753c-.355-.126-.638-.299-.847-.519-.21-.22-.25-.486-.122-.8.13-.315.396-.66.8-1.037.403-.377.702-.644.896-.8.452-.315.734-.59.847-.825.114-.236.09-.48-.072-.73C6.26.166 6.003-.015 5.745 0c-.259.016-.581.102-.969.259-.29.157-.565.306-.823.448a6.87 6.87 0 0 0-.775.494A8.228 8.228 0 0 0 1.143 3.51c-.258.44-.483.88-.678 1.32-.194.44-.323.91-.387 1.413a8.62 8.62 0 0 0 .096 2.873c.226.88.71 1.602 1.454 2.167.678.534 1.453.77 2.325.707l-.236.01z"></path></svg>
								<p class="comment__nCIvi">${exreviewList.exreviewContent }</p>
								<div class="nameArea__ngYvE">
									<span class="name__cvkY2">${exreviewList.exreviewWriter }</span><span
										class="text__ysW4e">님의 후기</span>
								</div></a><a
								href="/mobile/expert/product/detail?storeId=100038351&amp;productId=100084243"
								class="item__prylg"><div class="inner__DrhyN">
									<div class="info__S5ceC">
										<em class="title__bA9H7">${exreviewList.exprodName }</em>
										<div class="price__hfflJ">
											<strong class="number__Fd_fL">${exreviewList.excartPrice }</strong>원
										</div>
									</div>
								</div></a>
						</div>
					</div>
				</div>
			</div>
			</c:forEach>
		</div>
	</div>
</section>



<script type="text/javascript"
	src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
<script type="text/javascript">
	$('.owl-carousel').owlCarousel({
	    loop:true,
	    margin:20,
	    nav:true,
	    responsive:{
	        0:{
	            items:1
	        },
	        600:{
	            items:3
	        },
	        1000:{
	            items:5
	        }
	    }
	})
	// 직업필드 선택시 직업 비동기 구현
	function changeExfield() {
		var exfieldSelect = $("#exfield option:selected").val();
		var exjobSelect = $("#exjob")
		exjobSelect.find('option').each(function() {
			$(this).remove();
		})
		exjobSelect.append("<option value=''>직업코드<option>");
		console.log(exjobSelect)
		var data = {
			"exfieldId" : exfieldSelect
		}
		// 	console.log(data)
		$.ajax({
			url : '/INUProject/expert/exfield',
			method : 'post',
			data : JSON.stringify(data),
			contentType : 'application/json; charset=UTF-8',
			dataType : 'json',
			success : function(resp) {
				// 			console.log(resp[0].exfieldId)
				console.log(resp)
				for (i = 0; i < resp.length; i++) {
					console.log(resp[i].exfieldId)
					console.log(resp[i].exjobName)
					exjobSelect.append("<option value="+resp[i].exjobId+">"
							+ resp[i].exjobName + "</option>")
				}
				console.log(exjobSelect);

			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}

		})

	};

	function expertDetail() {
		var memID = document.querySelector('#memID').dataset.memid;
		// 		console.log(memID.memid);
		location.href = "${pageContext.request.contextPath}/expert/detail/"
				+ memID
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
