<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>
    
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/custom-bs.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/animate.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/quill.snow.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">    

	<!-- HOME -->
	<section class="section-hero home-section overlay inner-page bg-image" 
	style="background-image: url('<%=request.getContextPath()%>/resources/images/hero_1.jpg');" 
	id="home-section">
		<div class="container">
        	<div class="row">
          		<div class="col-md-7">
              		<h1 class="text-white font-weight-bold">공지사항</h1>
              		<div class="custom-breadcrumbs">
						<a href="#">Help</a>
						<span class="mx-2 slash">/</span>
						<span class="text-white"><strong>Notice</strong></span>
			 		</div>
         		</div>
        	</div>
      	</div>
    </section>
    
    <section class="site-section" id="next">
      	<div class="container">
        	<div class="row mb-5 justify-content-center">
          		<div class="col-md-7 text-center">
            		
          		</div>
        	</div>
        	<table>
          		<colgroup>
            		<col width="64">
            		<col width="600">
            		<col width="107">
          		</colgroup>
          		<thead>
          			<tr>
          				<th>구분</th>
          				<th>제목</th>
          				<th>날짜</th>
          				<th>조회수</th>
          			</tr>
          		</thead>
          		<tbody id="listBody">
          			<c:set var="noticeList" value="${pagingVO.dataList}"/>
          			<c:choose>
          				<c:when test="${not empty noticeList}">
          					<c:forEach items="${noticeList }" var="notice">
          						<c:if test="${notice.noticeDelDate eq null }">
	          						<tr>
	          							<td>${notice.noticeSort }</td>
	          							<td>
	          								<c:url value="/help/notice/noticeView" var="viewURL">
	          									<c:param name="what" value="${notice.noticeSn }"/>
	          								</c:url>
	          								<a href="${viewURL }">${notice.noticeTitle }</a>
	          							</td>
	          							<td>${notice.noticeDate }</td>
	          							<td>${notice.noticeHit }</td>
	          						</tr>
          						</c:if>
          					</c:forEach>
          				</c:when>
          				<c:otherwise>
          					<tr>
          						<td colspan="5">게시글 없음.</td>
          					</tr>
          				</c:otherwise>
          			</c:choose>
          		</tbody>
          		<tfoot>
          			<tr>
          				<td colspan="5">
          					<div id = "pagingArea">
          						<ui:pagination pagingVO="${pagingVO }" type="bootstrap"/>
          					</div>
          					<form:form id="searchUI" modelAttribute="simpleCondition" method="get" onclick="return false;">
          						<form:select path="searchType">
									<option value>전체</option>
									<form:option value="announcement" label="알림" />
									<form:option value="open" label="오픈" />
									<form:option value="etc" label="기타" />
								</form:select>
								<form:input path="searchWord"/>
								<input type="button" value="검색" id="searchBtn"/>
          					</form:form>
          					<!-- <div id="searchUI">
          						<select name="searchType">
          							<option value>전체</option>
          							<option value="announcement">안내</option>
          							<option value="open">오픈</option>
          							<option value="etc">기타</option>
          						</select>
          						<input type="text" name="searchWord" placeholder="검색어를 입력해주세요."/>
								<input type="button" value="검색" id="searchBtn"  />
          					</div> -->
          				</td>
          			</tr>
          		</tfoot>
        	</table>
        	<form:form id="searchForm" modelAttribute="simpleCondition" method="get">
				<form:hidden path="searchType"/>
				<form:hidden path="searchWord"/>
				<input type="hidden" name="page" />
			</form:form>
			<%-- <h4>Hidden form</h4>
			<form id="searchForm">
				<input type="text" name="page" />	
				<input type="text" name="searchType" placeholder="분류"/>
				<input type="text" name="searchWord" placeholder="제목"/>
			</form> --%>
			<div>
				<input type="button" value="등록" onclick="location.href='<c:url value="/help/notice/noticeInsert"/>'">
			</div>
      	</div>
	</section>
<script>
let searchForm = $("#searchForm");
let searchUI = $("#searchUI").on("click", "#searchBtn", function(){
	let inputs = searchUI.find(":input[name]");
	$.each(inputs, function(index, input){
		let name = this.name;
		let value = $(this).val();
		searchForm.find("[name="+name+"]").val(value);
	});
	searchForm.submit();
});

$("a.paging").on("click", function(event){
	event.preventDefault();
	let page = $(this).data("page");
	if(!page) return false;
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});

/* $("[name=searchType]").on("change", function(){
	let noticeSort = $(this).val();
	noticeTag.find("option:gt(0)").hide();
	noticeTag.find("option."+noticeSort).show();
});
let noticeTag = $("[name=searchWord]");

let listBody = $("#listBody");

let pagingArea = $(".pagingArea").on("click", "a.paging", function(event){
	event.preventDefault();
	let page = $(this).data("page");
	if(!page) return false;
	searchForm.find("[name=page]").val(page);
	searchForm.submit();
	return false;
});

let makeTrTag = function(notice){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/help/notice/"+notice.noticeSn)
				.html(notice.noticeTitle);
	return $("<tr>").append(
				$("<td>").html(notice.noticeSort)
				, $("<td>").html(aTag)
				, $("<td>").html(notice.noticeDate)
				, $("<td>").html(notice.noticeHit)
				
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
			let trTags = [];
			if(dataList){
				$.each(dataList, function(index, notice){
					trTags.push(makeTrTag(notice));
				});
			}else{
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "5")
							.html("조건에 맞는게 없음.")
				);	
				trTags.push(tr);
			}
			listBody.html(trTags);
			if(resp.pagingHTML)
				pagingArea.html(resp.pagingHTML);				
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
	let inputs = searchUI.find(":input[name]");
	$.each(inputs, function(index, input){
		let name = this.name;
		let value = $(this).val();
		searchForm[0][name].value = value;
	});
	searchForm.submit();
}); */
</script>


<!-- SCRIPTS -->
<script src="<%=request.getContextPath()%>/resources/js/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.bundle.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/stickyfill.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.fancybox.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.easing.1.3.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.waypoints.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery.animateNumber.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/quill.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap-select.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/custom.js"></script>
