<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      작성자명      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.ddit.or.kr/class305" prefix="ui" %>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <section class="site-section">
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">이벤트</h2>
      </div>
      <div class="container">
        <div class="row justify-content-center mb-5" data-aos="fade-up">
          <div id="filters" class="filters text-center button-group col-md-7">
            <button class="btn btn-primary active " style="font-size: 20px;" data-filter="*">진행중인 이벤트</button>
            <button class="btn btn-primary" style="font-size: 20px;" data-filter=".web"> 종료된 이벤트 </button>
            
          </div>
        </div>
        <div class="row mb-5">
        <c:set var="exeventList" value="${pagingVO.dataList }"></c:set>
        <c:choose>
        	<c:when test="${not empty exeventList }">
        		<c:forEach items="${exeventList }" var="exevent">
        		<div class="col-md-6 col-lg-4 mb-5">
	            	<a href="${pageContext.request.contextPath}/expert/event/detail/${exevent.exeventId }"><img src="<%=request.getContextPath() %>/resources/images/우기1.jfif" alt="Image" class="img-fluid rounded mb-4"></a>
	            	<h3><a href="${pageContext.request.contextPath}/expert/event/detail/${exevent.exeventId }" class="text-black">${exevent.exeventName }</a></h3>
	            <div>시작일 : ${exevent.exeventStart } <span class="mx-2">|</span>조회수 : ${exevent.exeventHits }</div>
	         	</div>
        		</c:forEach>
			</c:when>
			<c:otherwise>
				<tr>
					<td colspan="3">검색된 회사가 없음.</td>
				</tr>
			</c:otherwise>
        </c:choose>
		</div>
        <!-- 운영자로 로그인했을 때만 보여야함 -->
        <a href="<%=request.getContextPath()%>/expert/event/write"><label class="btn btn-primary btn-md btn-file" style="margin-left: 950px;">
          이벤트등록
        </label></a>
		<div id="pagingArea">
		<%--                ${pagingVO } --%>
		<%--                <%=new BootstrapPaginationRender().renderPagination((PagingVO)request.getAttribute("pagingVO")) %> --%>
		<ui:pagination pagingVO="${pagingVO }" type="bootstrap"/>
		</div>
      </div>
    </section>
<form:form id="searchForm" modelAttribute="simpleCondition" method="get">
<form:hidden path="searchType"/>
<form:hidden path="searchWord"/>
<input type="hidden" name="page" />
</form:form>
<script type="text/javascript">
$("a.paging").on("click", function(event){
    event.preventDefault();
    let page =  $(this).data("page");
    if(!page){
       return false;
    }
    searchForm.find("[name=page]").val(page);
    searchForm.submit();
    return false;
 });
</script>