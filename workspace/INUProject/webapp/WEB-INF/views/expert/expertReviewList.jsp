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
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
 	<!-- 바디 영역 -->
    <section class="site-section" id="next-section">
      <div class="container">
        <h1 style="margin-left: 515px; font-weight: 900; margin-bottom: 50px;" >후기</h1>
        <a href="<%=request.getContextPath() %>/expert/review/write"><label class="btn btn-primary btn-md btn-file" style="margin-left: 1000px;">
          후기등록
        </label></a>
	     <div class="row">
          <c:set var="exreviewList" value="${pagingVO.dataList }"></c:set>
          <c:choose>
          	<c:when test="${not empty exreviewList }">
          		<c:forEach items="${exreviewList }" var="exreview">
			       <div class="col-lg-6 mb-4">
			         <div class="block__87154">
			           <blockquote>
			             <a href="<%=request.getContextPath() %>/expert/review/detail"><h4>상품명 : ${exreview.exprodName }</h4></a>
			             <span>별점 : ${exreview.exreviewScore }</span>
			             <p>내용 : ${exreview.exreviewContent }</p>
			           	</blockquote>
			           	<div class="block__91147 d-flex align-items-center">
			             <figure class="mr-4"><img src="<%=request.getContextPath() %>/resources/images/person_1.jpg" alt="Image" class="img-fluid"></figure>
			             <div>
			               <h3>사용자1</h3>
			               <span class="position">Creative Director</span>
			             </div>
			           </div>
			         </div>
			       </div>
      			</c:forEach>
	      	</c:when>
	      </c:choose>

        </div>
      </div>
    </section>
	<div id="pagingArea">
		<%--                ${pagingVO } --%>
		<%--                <%=new BootstrapPaginationRender().renderPagination((PagingVO)request.getAttribute("pagingVO")) %> --%>
		<ui:pagination pagingVO="${pagingVO }" type="bootstrap" />
	</div>
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
	