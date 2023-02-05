<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      작성자명      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    

    <section class="site-section">
      <div class="container">

        <div class="row align-items-center mb-5">
          <div class="col-lg-8 mb-4 mb-lg-0">
            <div class="d-flex align-items-center">
              <div>
                <h2>이벤트등록</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-lg-12">
            <form class="p-4 p-md-5 border rounded" method="post">
             
              <div class="form-group">
                <label for="job-title">제목</label>
                <input type="text" class="form-control" id="job-title" placeholder="" cssClass="form-control">
              </div>
              <div class="form-group">
                <label for="job-title">첨부파일</label>
                <input type="file" class="form-control" id="job-title" placeholder="" cssClass="form-control">
              </div>
              <div class="form-group">
                <label for="job-title">첨부파일</label>
                <input type="file" class="form-control" id="job-title" placeholder="" cssClass="form-control">
              </div>
              <div class="form-group">
                <label for="job-title">시작일</label>
                <input type="date" class="form-control" id="job-title" placeholder="" cssClass="form-control">
              </div>
              <div class="form-group">
                <label for="job-title">종료일</label>
                <input type="date" class="form-control" id="job-title" placeholder="" cssClass="form-control">
              </div>
              <div class="form-group">
                <label for="job-title">내용</label>
                <textarea name="message" id="message" cols="30" rows="7" class="form-control"></textarea>
              </div>
              <br>
              
            </form>
          </div>

         
        </div>
        <div class="row align-items-center mb-5">
          
          <div class="col-lg-4 ml-auto">
            <div class="row">
              <div class="col-6">
                <a href="#" class="btn btn-block btn-light btn-md" style="border: 1px solid; ">이전</a>
              </div>
              <div class="col-6">
                <a href="#" class="btn btn-block btn-primary btn-md">등록</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
