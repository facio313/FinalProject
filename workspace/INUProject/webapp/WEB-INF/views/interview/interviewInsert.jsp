<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

 <!-- CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/custom-bs.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/quill.snow.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/board.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/pattern.css">

<style>
.qna_write_wrap .qna_write_selection {padding: 0 0 22px;}
.ck-editor__editable { height: 400px; }
.ck-content { font-size: 15px; }
</style>
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
            <a href="${pageContext.request.contextPath }/board/boardMain">Community</a>
            	<span class="mx-2 slash">/</span>
            	<span class="text-white">
            		<strong>Write Interview</strong>
            	</span>
          </div>
          <div class="custom-breadcrumbs"></div>
        </div>
      </div>
    </div>
  </section>

<!-- 작성 -->
  <section class="site-section">
		<div class="container">
			<div class="row mb-5">
				<div class="col-lg-12">
					<form enctype="multipart/form-data"
						class="p-4 p-md-5 border rounded" method="post">
						<div class="qna_write_wrap">
							<div class="qna_write_selection">
								<span class="qna_category_tit">카테고리</span>
								<!-- <div class="box_qna_category">
									<div class="inpSel">
										<select id="replySort" name="replySort" title="댓글 정렬 선택">
											<option value="전체글" selected="">전체</option>
											<option value="신입">신입</option>
											<option value="취준">취준</option>
											<option value="채용공고">채용공고</option>
											<option value="자소서">자소서</option>
											<option value="면접">면접</option>
											<option value="Q&A">Q&A</option>
											<option value="커리어">커리어</option>
											<option value="이직">이직</option>
											<option value="퇴사">퇴사</option>
											<option value="잡담">잡담</option>
										</select>
									</div>
								</div> -->
								<div class="box_qna_category">
  <button type="button" class="btn_category_select">신입</button>
  <ul class="list_qna_category">
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="신입" data-upper_name="">
        <span>신입</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="취준" data-upper_name="">
        <span>취준</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="채용공고" data-upper_name="">
        <span>채용공고</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="자소서" data-upper_name="">
        <span>자소서</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="면접" data-upper_name="">
        <span>면접</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="Q&amp;A" data-upper_name="">
        <span>Q&amp;A</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="커리어" data-upper_name="">
        <span>커리어</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="이직" data-upper_name="">
        <span>이직</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="퇴사" data-upper_name="">
        <span>퇴사</span>
      </a>
    </li>
    <li>
      <a href="javascript:;" class="category" data-type="topic" data-name="잡담" data-upper_name="">
        <span>잡담</span>
      </a>
    </li>
  </ul>
</div>
							</div>
						</div>

						<div class="form-group">
							<label for="job-title">직무명</label>
							<input class="form-control" id="job-title" name="jobName" placeholder="직무명을 입력해주세요" />
						</div>


						<div class="form-group">
							<label for="job-title">부서명</label>
							<input class="form-control" id="job-title" name="department" placeholder="부서명을 입력해주세요" />
						</div>


						<div class="form-group">
							<label for="job-title">작성자</label>
							<input class="form-control" id="job-title" name="incumName" placeholder="작성자를 입력해주세요" />
						</div>

						<div class="form-group">
							<label for="job-title">제목</label>
							<input class="form-control" id="job-title" name="incumTitle" placeholder="제목을 입력해주세요" />
						</div>

						<div class="form-group">
							<label for="job-title">서브제목</label>
							<input class="form-control" id="job-title" name="subTitle" placeholder="서브제목을 입력해주세요" />
						</div>

						<div class="form-group">
							<label for="job-description"></label>
							<textarea name="incumContent" class="form-control" id="editor"></textarea>
						</div>

						<div class="form-group">
							<label for="company-website-tw d-block">이미지를 첨부하려면 클릭하세요</label><br>
							<label class="btn btn-primary btn-md btn-file">이미지첨부
								<input type="file">
							</label>
						</div>

						<div class="row align-items-center mb-5">
							<div class="col-lg-4 ml-auto">
								<div class="row">
									<div class="col-6">
										<button type="submit" class="btn btn-block btn-primary btn-md">게시글등록</button>
									</div>
									<div class="col-6">
										<a href="${pageContext.request.contextPath }/interview/interviewList" class="btn btn-block btn-primary btn-md">취소</a>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>

  <!-- SCRIPTS -->
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
<script>
  ClassicEditor.create( document.querySelector( '#editor' ), {
	/* removePlugins: [ 'Heading' ], */
    language: "ko"
  } );
</script>
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