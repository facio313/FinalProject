<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
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

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/help.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/components.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/layout.css">

<style>
.tblType thead th, .tblType tbody th, .tblType tbody td {
    font-size: 17px;
}
</style>

	<!-- HOME -->
	<%-- <section class="section-hero home-section overlay inner-page bg-image" 
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
          		<tbody>
          			<c:set var="noticeList" value="${pagingVO.dataList}"/>
          			<c:choose>
          				<c:when test="${not empty noticeList}">
          					<c:forEach items="${noticeList }" var="notice">
          						<c:if test="${notice.noticeDelDate eq null }">
	          						<tr>
	          							<td>${notice.noticeSort }</td>
	          							<td>
	          								<a href="<c:url value='/help/notice/${notice.noticeSn }'/>">${notice.noticeTitle }</a>
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
	          					<span class="inpSel">
	          						<form:select path="searchType">
										<option value>전체</option>
										<form:option value="announcement" label="알림" />
										<form:option value="open" label="오픈" />
										<form:option value="etc" label="기타" />
									</form:select>
								</span>
								<div class="searchTypoBox">
									<form:input path="searchWord" style="width: 276px" class="inpTypo" placeholder="특수문자를 제외한 키워드를 입력해주세요."/>
									<input type="button" class="btnTypoSearch" value="검색"  id="searchBtn"/>
								</div>
          					</form:form>
          				</td>
          			</tr>
          		</tfoot>
        	</table>
        	<form:form id="searchForm" modelAttribute="simpleCondition" method="get">
				<form:hidden path="searchType"/>
				<form:hidden path="searchWord"/>
				<input type="hidden" name="page" />
			</form:form>
			<div>
				<input type="button" value="등록" onclick="location.href='<c:url value="/help/notice/noticeInsert"/>'">
			</div>
      	</div>
	</section> --%>
	
	<!-- 적용할 css -->
	<section>
		<c:set var="noticeList" value="${pagingVO.dataList}"/>
		<div id="content" style="width:1260px;">
			<div class="wrap_title_recruit">
			    <h1 class="title_common" style="font-size: 40px;">공지사항</h1>
			</div>
			<div class="wrap_board">
				<div class="search_area">
					<strong class="count" style="font-size: 20px;">총 <span class="num"> ${pagingVO.totalRecord} </span>건 </strong>
					<form:form id="searchUI" modelAttribute="simpleCondition" method="get" onclick="return false;">
						<div class="search_right">
							<span class="inpSel">
								<form:select path="searchType">
									<option value>전체</option>
									<form:option value="announcement" label="안내" />
									<form:option value="open" label="오픈" />
									<form:option value="etc" label="기타" />
								</form:select>
							</span>
							<div class="searchTypoBox">
								<form:input path="searchWord" style="width: 276px" class="inpTypo" placeholder="특수문자를 제외한 키워드를 입력해주세요."/>
								<input type="button" class="btnTypoSearch" value="검색"  id="searchBtn"/>
							</div>
						</div>
					</form:form>
				</div>

				<div class="tblType">
					<table>
						<colgroup>
							<col width="64" />
							<col width="" />
							<col width="600" />
							<col width="107" />
						</colgroup>
						<thead>
							<tr>
		          				<th>번호</th>
		          				<th>구분</th>
		          				<th>제목</th>
		          				<th>날짜</th>
		          				<th>조회수</th>
		          			</tr>
						</thead>
						<tbody>
							
							<c:choose>
		          				<c:when test="${not empty noticeList}">
		          					<c:forEach items="${noticeList }" var="notice">
		          						<c:if test="${notice.noticeDelDate eq null }">
			          						<tr class="notice">
			          							<td class="">${notice.rnum }</td>
			          							<td class="category">${notice.noticeSort }</td>
			          							<td class="content_tit">
			          								<a href="<c:url value='/help/notice/${notice.noticeSn }'/>">${notice.noticeTitle }</a>
			          							</td>
			          							<td class="date">${notice.noticeDate }</td>
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
		          				</td>
		          			</tr>
		          		</tfoot>
							
					</table>
					<form:form id="searchForm" modelAttribute="simpleCondition" method="get">
						<form:hidden path="searchType"/>
						<form:hidden path="searchWord"/>
						<input type="hidden" name="page" />
					</form:form>
				</div>
				<!-- 운영자만 보여야함 -->
				<security:authorize url="/help/notice/noticeInsert">
				<div>
					<input type="button" value="등록" onclick="location.href='<c:url value="/help/notice/noticeInsert"/>'">
				</div>
				</security:authorize>
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
