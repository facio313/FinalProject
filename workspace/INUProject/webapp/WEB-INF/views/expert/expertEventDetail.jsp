<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      작성자명      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="${pageContext.request.contextPath }/resources/ckeditorEasyimage/ckeditor.js"></script>
<div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
   
    <section class="site-section pb-0 portfolio-single" id="next-section" style="margin-left: 200px;">
      <div class="container">
        <div class="row align-items-center mb-5">
          <div class="col-lg-8 mb-4 mb-lg-0">
            <div class="d-flex align-items-center">
              <div class="border p-2 d-inline-block mr-3 rounded">
                <img src="images/job_logo_5.jpg" alt="Image">
              </div>
              <div>
                <h2>${exevent.exeventName }</h2>
                <h2><%=request.getContextPath()%>/resources/attach/expertFolder/${exevent.attatchList[0].attFilename }</h2>
                <div>
                  <span class="ml-0 mr-2 mb-2"><span class="icon-briefcase mr-2"></span>작성자</span>
                  <span class="m-2"><span class="icon-room mr-2"></span>시작일</span>
                  <span class="m-2"><span class="icon-room mr-2"></span>종료일</span>
                </div>
              </div>
            </div>
          </div>
          <div class="col-lg-4">
            <div class="row">
              <div class="col-6">
                <a href="#" class="btn btn-block btn-light btn-md"><span class="icon-heart-o mr-2 text-danger"></span>조회수</a>
                <a href="<%=request.getContextPath()%>/expert/event/update/${exevent.exeventId }" class="btn btn-block btn-light btn-md">
                 이벤트수정
                </a>
              <form id="delete_form" action="<%=request.getContextPath()%>/expert/event/delete/${exevent.exeventId }" method="post">
			    <input type="hidden" name="_method" value="delete"/>
			    <a onclick="if (confirm('정말로 삭제하시겠습니까?')) document.getElementById('delete_form').submit();" class="btn btn-danger">삭제</a>
			</form>
              </div>
            </div>
          </div>
        <div class="container">
        <c:if test="${not empty exevent.attatchList }">
			첨부파일 : <br>
            <c:forEach items="${exevent.attatchList }" var="attatch" varStatus="vs">
              <img src="<%=request.getContextPath()%>/resources/attach/expertFolder/${attatch.attSavename }"  alt="${attatch.attMime }" class="img-fluid" />
             <a>${attatch.attFilename }</a><br>
<!--              <img alt="" src=""> -->
            </c:forEach>
       </c:if>
        </div>      
        </div>
        <div class="container">
            <h2>이벤트 내용</h2>
 <%--            <figure>
           	 
            </figure> --%>
            <div>
           	 ${exevent.exeventContent }
            </div>
        </div>
      </div>
    </section>

	<section class=" py-3 site-section mb-5">
		<div class="container">
			<div class="row">
				<div class="col-md-4 text-center" >
					<a href="${pageContext.request.contextPath}/expert/event/detail/${exevent.preExevent}"
						class="btn btn-md btn-outline-primary border-width-2 d-block"
						id="preBtn">&laquo; 이전</a>
				</div>
				<div class="col-md-4 text-center">
					<a href="${pageContext.request.contextPath}/expert/event" class="btn btn-md btn-primary border-width-2 d-block">전체</a>
				</div>
				<div class="col-md-4 text-center">
					<a href="${pageContext.request.contextPath}/expert/event/detail/${exevent.nextExevent}"
						class="btn btn-md btn-outline-primary border-width-2 d-block" 
						id="nextBtn">다음 &raquo;</a>
				</div>
			</div>
		</div>
	</section>
    
  </div>
  
 <script type="text/javascript">
if(`${exevent.preExevent}`==""){
	$("#preBtn").click(function () {return false;});
};
if(`${exevent.nextExevent}`==""){
	$("#nextBtn").click(function () {return false;});
};
</script>