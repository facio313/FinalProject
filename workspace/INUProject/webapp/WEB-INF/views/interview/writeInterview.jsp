<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <title>INY &mdash; I Need You</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">


  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css">
  <script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script>


  <!-- MAIN CSS -->
  <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
</head>

<bo id="top">
  <div id="overlayer"></div>

  <!-- HOME -->
  <section class="section-hero overlay inner-page bg-image"
    style="background-image: url('${pageContext.request.contextPath}/resources/images/hero_1.jpg');" id="home-section">
    <div class="container">
      <div class="row">
        <div class="col-md-7">
          <h1 class="text-white font-weight-bold">작성하기</h1>
          <div class="custom-breadcrumbs">
            <a href="#">Community</a> <span class="mx-2 slash">/</span> <span class="text-white"><strong>Write
                Interview</strong></span>
          </div>
          <div class="custom-breadcrumbs"></div>
        </div>
      </div>
    </div>
  </section>

  <section class="site-section">
    <div class="container">
      <div class="row mb-5">
        <div class="col-lg-12">
          <form class="p-4 p-md-5 border rounded" method="post">
            <h3 class="text-black mb-5 border-bottom pb-2">게시글작성</h3>

            <div class="form-group">
              <label for="job-region">카테고리</label>
              <select class="selectpicker border rounded" id="job-region" data-style="btn-black" data-width="100%"
                data-live-search="true" title="Select Region">
                <option>기획·전략</option>
                <option>마케팅·홍보·조사</option>
                <option>회계·세무·재무</option>
                <option>인사·노부·HRD</option>
                <option>총무·법무·사무</option>
                <option>IT개발·데이터</option>
                <option>디자인</option>
                <option>영업·판매·무역</option>
                <option>고객상담·TM</option>
              </select>
            </div>

            <!-- <div class="form-group">
              <label for="email">Email</label>
              <input type="text" class="form-control" id="email" placeholder="you@yourdomain.com">
            </div> -->

            <div class="form-group">
              <label for="job-title"></label>
              <input type="text" class="form-control" id="job-title" placeholder="제목을 입력해주세요">
            </div>

            <div class="form-group">
              <label for="job-description"></label>
              <div class="editor" id="editor-1">
              </div>
            </div>

            <div class="form-group">
              <label for="company-website-tw d-block">이미지를 첨부하려면 클릭하세요</label> <br>
              <label class="btn btn-primary btn-md btn-file">
                이미지첨부<input type="file" hidden>
              </label>
            </div>
          </form>
        </div>
      </div>
      <div class="row align-items-center mb-5">

        <div class="col-lg-4 ml-auto">
          <div class="row">
            <div class="col-6">
              <a href="" class="btn btn-block btn-primary btn-md">게시글 등록</a>
            </div>
            <div class="col-6">
              <a href="${pageContext.request.contextPath }/board/totalBoard" class="btn btn-block btn-primary btn-md">취소</a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>


  <!-- SCRIPTS -->
  <script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/stickyfill.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>

  <script src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
  <script src="${pageContext.request.contextPath}/resources/js/quill.min.js"></script>


  <script src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>

  <script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>



</body>

</html>