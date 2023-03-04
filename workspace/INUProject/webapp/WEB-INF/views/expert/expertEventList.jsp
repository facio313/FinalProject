<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      허근주      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<section class="site-section block__62272" id="next-section">
	<div class="col-12 text-center" data-aos="fade">
		<form:form id="searchUI" modelAttribute="simpleCondition" method="get"
			onclick="return false;">
			<form:select path="searchType">
				<option value>전체</option>
				<form:option value="announcement" label="알림" />
				<form:option value="open" label="오픈" />
				<form:option value="etc" label="기타" />
			</form:select>
			<form:input path="searchWord" />
			<input type="button" value="검색" id="searchBtn" />
		</form:form>
	</div>
	<div class="col-12 text-center" data-aos="fade">
		<h2 class="section-title mb-3">이벤트</h2>
	</div>
	<div class="container">
		<div class="row justify-content-center mb-5" data-aos="fade-up">
			<div id="filters" class="filters text-center button-group col-md-7">
				<button class="btn btn-primary active " style="font-size: 20px;"
					data-filter="*">전체 이벤트</button>
				<button class="btn btn-primary" style="font-size: 20px;"
					data-filter=".processing">진행중인 이벤트</button>
				<button class="btn btn-primary" style="font-size: 20px;"
					data-filter=".endExevent">종료된 이벤트</button>
			</div>
		</div>
		<div class="row no-gutter" id="posts" >
			<c:set var="exeventList" value="${pagingVO.dataList }"></c:set>
			<c:choose>
				<c:when test="${not empty exeventList }">
					<c:forEach items="${exeventList }" var="exevent">
						<div
							class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4 processing block__87154  rounded">
							<a
								href="${pageContext.request.contextPath}/expert/event/detail/${exevent.exeventId }"><img
								src="<%=request.getContextPath()%>/resources/attach/expertFolder/${exevent.attatchList[0].attSavename } " style="opactiy:0.5; height: 200px; width:450px;"
								alt="Image" class="img-fluid rounded mb-4"></a>
							<h3>
								<a
									href="${pageContext.request.contextPath}/expert/event/detail/${exevent.exeventId }"
									class="text-black">${exevent.exeventName }</a>
							</h3>
							<div>
								시작일 : ${exevent.exeventStart } <span class="mx-2">|</span>조회수 :
								${exevent.exeventHits }
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="3">검색된 이벤트가 없음.</td>
					</tr>
				</c:otherwise>
			</c:choose>		
			<c:set var="endExeventList" value="${pagingVO2.dataList }"></c:set>
			<c:choose>
				<c:when test="${not empty endExeventList }">
					<c:forEach items="${endExeventList }" var="endExevent">
						<div
									class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4 endExevent block__87154  rounded">
							<a
								href="${pageContext.request.contextPath}/expert/event/detail/${endExevent.exeventId }"><img
								src="<%=request.getContextPath()%>/resources/attach/expertFolder/${endExevent.attatchList[0].attSavename } " style="opactiy:0.5; height: 200px; width:450px;"
								alt="Image" class="img-fluid rounded mb-4"></a>
							<h3>
								<a
									href="${pageContext.request.contextPath}/expert/event/detail/${endExevent.exeventId }"
									class="text-black">${endExevent.exeventName }</a>
							</h3>
							<div>
								시작일 : ${endExevent.exeventStart } <span class="mx-2">|</span>조회수 :
								${endExevent.exeventHits }
							</div>
						</div>
					</c:forEach>
				</c:when>
				<c:otherwise>
					<tr>
						<td colspan="3">검색된 이벤트가 없음.</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</div>
		<!-- 운영자로 로그인했을 때만 보여야함 -->
		<a href="<%=request.getContextPath()%>/expert/event/write"><label
			class="btn btn-primary btn-md btn-file" style="margin-left: 950px;">
				이벤트등록 </label></a>
		<div id="pagingArea">
			<%--                ${pagingVO } --%>
			<%--                <%=new BootstrapPaginationRender().renderPagination((PagingVO)request.getAttribute("pagingVO")) %> --%>
			<ui:pagination pagingVO="${pagingVO }" type="bootstrap" />
		</div>

	</div>
</section>

<form:form id="searchForm" modelAttribute="simpleCondition" method="get">
	<form:hidden path="searchType" />
	<form:hidden path="searchWord" />
	<input type="hidden" name="page" />
</form:form>


<script type="text/javascript">
	let searchForm = $("#searchForm");
	let searchUI = $("#searchUI").on("click", "#searchBtn", function() {
		let inputs = searchUI.find(":input[name]");
		$.each(inputs, function(index, input) {
			let name = this.name;
			let value = $(this).val();
			searchForm.find("[name=" + name + "]").val(value);
		});
		searchForm.submit();
	});

	$("a.paging").on("click", function(event) {
		event.preventDefault();
		let page = $(this).data("page");
		if (!page)
			return false;
		searchForm.find("[name=page]").val(page);
		searchForm.submit();
		return false;
	});
</script>