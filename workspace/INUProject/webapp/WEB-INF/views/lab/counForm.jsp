<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      양서연      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/board.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/pattern.css">
<script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script>
<style>
.qna_write_wrap .qna_write_selection {padding: 0 0 22px;}
.btn-primary {background-color: #045738; border-color: #045738;}
.ck-editor__editable { height: 400px; }
.ck-content { font-size: 15px; }
</style>
<!-- 작성 -->
<section class="site-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-lg-12">
				<form enctype="multipart/form-data" class="p-4 p-md-5 border rounded" method="post">
					<div class="contents_container qna_write_wrap">
						<input type="hidden" name="category_type" value="topic" id="category_type">
						<div class="qna_write_selection">
<!-- 							<h1 class="title_common">상담 등록</h1> -->
<!-- 							<span class="qna_category_tit">상담 등록 </span> -->
<!-- 							<div class="box_qna_category"> -->
								<button type="button" class="btn_category_select">상담 등록</button>
<!-- 							</div> -->
						</div>
					</div>

					<div class="form-group">
						<label for="job-title"></label>
						<input class="form-control" id="job-title" name="boardTitle" placeholder="제목을 입력해주세요" />
					</div>

					<div class="form-group">
						<label for="job-description"></label>
						<textarea id="counContent"></textarea>
					</div>

					<div class="form-group">
						<label for="company-website-tw d-block">이미지를 첨부하려면 클릭하세요</label><br>
						<label class="btn btn-primary btn-md btn-file">이미지첨부
						<input type="file"></label>
					</div>

					<div class="row align-items-center mb-5">
						<div class="col-lg-4 ml-auto">
							<div class="row">
								<div class="col-6">
									<button type="submit" class="btn btn-block btn-primary btn-md">게시글등록</button>
								</div>
								<div class="col-6">
									<a href="${pageContext.request.contextPath }/board/boardTotal" class="btn btn-block btn-primary btn-md">취소</a>
								</div>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</section>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
<script>
/* CKEDITOR */
CKEDITOR.replace('counContent',{
	filebrowserUploadUrl: '${pageContext.request.contextPath}/board/boardImage.do?command=QuickUpload&type=Files&responseType=json'
});
</script>






