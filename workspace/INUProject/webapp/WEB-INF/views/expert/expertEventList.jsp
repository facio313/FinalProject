<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      작성자명      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>

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
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/우기1.jfif" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="<%=request.getContextPath() %>/expert/event/detail" class="text-black">이벤트1</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> 조회수</div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/우기1.jfif" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">이벤트2</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/우기1.jfif" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">이벤트3</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/우기1.jfif" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">이벤트4</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/우기1.jfif" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">How to Write a Creative Cover Letter</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/우기1.jfif" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">The Right Way to Quit a Job You Started</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
        </div>
        <!-- 운영자로 로그인했을 때만 보여야함 -->
        <a href="<%=request.getContextPath()%>/expert/event/write"><label class="btn btn-primary btn-md btn-file" style="margin-left: 950px;">
          이벤트등록
        </label></a>
        <div class="row pagination-wrap mt-5">
          
          <div class="col-md-12 text-center ">
            <div class="custom-pagination ml-auto">
              <a href="#" class="prev">Prev</a>
              <div class="d-inline-block">
              <a href="#" class="active">1</a>
              <a href="#">2</a>
              <a href="#">3</a>
              <a href="#">4</a>
              </div>
              <a href="#" class="next">Next</a>
            </div>
          </div>
        </div>

      </div>
    </section>