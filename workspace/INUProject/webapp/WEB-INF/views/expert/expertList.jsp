<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 1.      허근주      최초작성
* 2023. 2. 2.      허근주      바디 마진 입력, 사이드바 제거
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
 	<!-- 바디 영역 -->
    <section class="" style="margin-top: 100px; margin-bottom: 100px;">
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">상품분류</h2>
      </div>
      <div class="container">
        <div class="row justify-content-center mb-5" data-aos="fade-up">
          <div id="filters" class="filters text-center button-group col-md-7">
            <a class="btn btn-primary" href="<%=request.getContextPath() %>/expert/class" > 클래스 </a>
            <a class="btn btn-primary" href="<%=request.getContextPath() %>/expert/product" > 상담 </a>
            
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/sq_img_1.jpg" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">상품1</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/sq_img_2.jpg" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">상품2</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/sq_img_4.jpg" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">상품3</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/sq_img_7.jpg" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">상품4</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/sq_img_5.jpg" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">How to Write a Creative Cover Letter</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
          <div class="col-md-6 col-lg-4 mb-5">
            <a href="blog-single.html"><img src="<%=request.getContextPath() %>/resources/images/sq_img_6.jpg" alt="Image" class="img-fluid rounded mb-4"></a>
            <h3><a href="blog-single.html" class="text-black">The Right Way to Quit a Job You Started</a></h3>
            <div>April 15, 2019 <span class="mx-2">|</span> <a href="#">2 Comments</a></div>
          </div>
        </div>
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
   

     
    