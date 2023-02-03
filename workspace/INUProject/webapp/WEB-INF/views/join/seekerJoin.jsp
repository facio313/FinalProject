    <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom-bs.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/line-icons/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/quill.snow.css">
    

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">    
  </head>

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
                <h2>일반회원</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-lg-12">
            <form class="p-4 p-md-5 border rounded" method="post" enctype="multipart/form-data">
              <h3 class="text-black mb-5 border-bottom pb-2">회원 정보</h3>
              <div class="form-group">
                <label for="company-website-tw d-block">프로필사진</label> <br>
                <label class="btn btn-primary btn-md btn-file">
<!--                   사진선택<input type="file" hidden> -->
                </label>
              </div>
              <div class="form-group">
                <label for="job-title">아이디</label>
                <input type="text" class="form-control" id="job-title" name="memId" placeholder="">
              </div>
              <div class="form-group">
                <label for="job-title">비밀번호</label>
                <input type="text" class="form-control" id="job-title" name="memPass" placeholder="">
              </div>
              <div class="form-group">
                <label for="job-title">이름</label>
                <input type="text" class="form-control" id="job-title" name="memName" placeholder="">
                <input type="hidden" class="form-control" id="job-title" name="memAuthCd" value="" placeholder="">
              </div>
              <div class="form-group">
                <label for="job-title">닉네임</label>
                <input type="text" class="form-control" id="job-title" name="memNickname" placeholder="">
              </div><div class="form-group">
                <label for="job-title">생년월일</label>
                <input type="date" class="form-control" id="job-title" name="memBirth"placeholder="">
              </div><div class="form-group">
                <label for="job-title">성별</label>
                <input type="text" class="form-control" id="job-title" placeholder="" name="memGender">
              </div>
              <div class="form-group">
                <label for="job-title"></label>
                <input type="text" class="form-control"id="sample3_postcode" placeholder="우편번호" name="memZip">
                <input type="button" class="form-control"onclick="sample3_execDaumPostcode()" value="우편번호 찾기" ">
                <br>
                <input type="text" class="form-control"id="sample3_address" placeholder="주소" name="memAddr1"><br>
                <input type="text" class="form-control"id="sample3_detailAddress" placeholder="상세주소" name="memAddr2">
                <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
                  <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
                  </div>
                </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" placeholder="" name="memEmail">
              </div>
              <div class="form-group">
                <label for="job-title">전화번호</label>
                <input type="tel" class="form-control" id="job-title" placeholder="" name="memTel">
              </div>
              <div class="col-6">
                <input type="submit" class="btn btn-block btn-primary btn-md" value="가입">
              </div>
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
                <a href="#" class="btn btn-block btn-primary btn-md">가입</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    
    
   
  </div>

    <!-- SCRIPTS -->
    <script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/isotope.pkgd.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/stickyfill.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.fancybox.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.easing.1.3.js"></script>
    
    <script src="<%=request.getContextPath() %>/resources/js/jquery.waypoints.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.animateNumber.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/quill.min.js"></script>
    
    
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap-select.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/daumPostcode.js"></script>
    
    <script src="<%=request.getContextPath() %>/resources/js/custom.js"></script>
    <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   
     
