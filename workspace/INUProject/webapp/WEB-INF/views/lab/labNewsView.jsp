<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023.02.02  윤호연      최초작성
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
		<link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom-bs.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.fancybox.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-select.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/icomoon/style.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/line-icons/style.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css">
	    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.min.css">
	    
	    <!-- MAIN CSS -->
	    <link rel="stylesheet" href="css/style.css">  
	    
	</head>
  <body>
  <div class="row">
    <div class="col-9">
      <div class="card">
        <h5 class="card-header">뉴스</h5>
          <table class="table">
            <thead>
              <tr>
                <th>분야</th>
                <th>제목</th>
                <th>조회수</th>
                <th>작성일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td><strong>취업</strong></td>
                <td>신입공채 마감</td>
                <td>2</td>
                <td>sysdate</td>
              </tr>
              <tr>
                <td><strong>취업</strong></td>
                <td>신입공채 마감</td>
                <td>2</td>
                <td>sysdate</td>
              </tr>
              <tr>
                <td><strong>취업</strong></td>
                <td>신입공채 마감</td>
                <td>2</td>
                <td>sysdate</td>
              </tr>
              <tr>
                <td><strong>취업</strong></td>
                <td>신입공채 마감</td>
                <td>2</td>
                <td>sysdate</td>
              </tr>
              <tr>
                <td><strong>취업</strong></td>
                <td>신입공채 마감</td>
                <td>2</td>
                <td>sysdate</td>
              </tr>
              <!-- <tr>
                <td style="width: 100px;"><strong>취업</strong></td>
                <td style="width: 600px">신입공채 마감</td>
                <td style="width: 100px;">2</td>
                <td style="width: 150px;">sysdate</td>
              </tr>
              <tr>
                <td style="width: 100px;"><strong>취업</strong></td>
                <td style="width: 600px">신입공채 마감</td>
                <td style="width: 100px;">2</td>
                <td style="width: 150px;">sysdate</td>
              </tr>
              <tr>
                <td style="width: 100px;"><strong>취업</strong></td>
                <td style="width: 600px">신입공채 마감</td>
                <td style="width: 100px;">2</td>
                <td style="width: 150px;">sysdate</td>
              </tr>
              <tr>
                <td style="width: 100px;"><strong>취업</strong></td>
                <td style="width: 600px">신입공채 마감</td>
                <td style="width: 100px;">2</td>
                <td style="width: 150px;">sysdate</td>
              </tr>
              <tr>
                <td style="width: 100px;"><strong>취업</strong></td>
                <td style="width: 600px">신입공채 마감</td>
                <td style="width: 100px;">2</td>
                <td style="width: 150px;">sysdate</td>
              </tr> -->
            </tbody>
          </table>
      </div>
    </div>  

    <div class="col-lg-2">
      <div class="sidebar-box sidebar-category">
        <div class="categories">
          <h3>Categories</h3>
          <br>
          <li><a href="#">취업 뉴스 <span>(1)</span></a></li>
          <li><a href="#">기업 뉴스 <span>(1)</span></a></li>
          <li><a href="#">공채 뉴스 <span>(1)</span></a></li>
        </div>
      </div>
    </div>
    
    <br>
  <!-- 페이징 -->
  <div class="row pagination-wrap">
    <div class="col-md-6 text-center text-md-right">
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
</body>
</html>