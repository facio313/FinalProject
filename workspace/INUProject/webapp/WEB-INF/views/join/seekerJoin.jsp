
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8kb"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<div class="site-wrap">

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
				<span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>
	<!-- .site-mobile-menu -->


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
					<form:form class="p-4 p-md-5 border rounded"
						modelAttribute="member" method="post"
						enctype="multipart/form-data">
						<h3 class="text-black mb-5 border-bottom pb-2">회원 정보</h3>
						<div class="form-group">
							<!--                   <label for="company-website-tw d-block">프로필사진</label> <br> -->
							<label class="btn btn-primary btn-md btn-file"> 프로필사진
							<form:input type="file"  path ="attachFiles" />
							</label>
						</div>
						<div class="form-group">
							<label for="job-title">회원아이디</label>
							<form:input path="memId" type="text" cssClass="form-control" />
							<form:errors path="memId" element="span" cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">비밀번호</label>
							<form:input path="memPass" type="password"
								cssClass="form-control" />
							<form:errors path="memPass" element="span" cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">이름</label>
							<form:input path="memName" type="text" cssClass="form-control" />
							<form:errors path="memName" element="span" cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">닉네임</label>
							<form:input path="memNickname" type="text"
								cssClass="form-control" />
							<form:errors path="memNickname" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">생년월일</label>
							<form:input path="memBirth" type="date" cssClass="form-control" />
							<form:errors path="memBirth" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">성별</label>
							<form:input path="memGender" type="text" cssClass="form-control" />
							<form:errors path="memGender" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">우편번호</label>
							<form:input path="memZip" type="text" id="sample3_postcode"
								cssClass="form-control" placeholder="우편번호" />
							<form:errors path="memZip" element="span" cssClass="text-danger" />
							<input type="button" class="form-control"
								onclick="sample3_execDaumPostcode()" value="우편번호 찾기"> <br>
						</div>
						<div class="form-group">
							<label for="job-title">기본주소</label>
							<form:input path="memAddr1" id="sample3_address" placeholder="주소"
								type="text" cssClass="form-control" />
							<form:errors path="memAddr1" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">상세주소</label>
							<form:input path="memAddr2" id="sample3_detailAddress"
								type="text" placeholder="상세주소" cssClass="form-control" />
							<form:errors path="memAddr2" element="span"
								cssClass="text-danger" />
						</div>
						<div id="wrap"
							style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
							<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
								id="btnFoldWrap"
								style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
								onclick="foldDaumPostcode()" alt="접기 버튼">
						</div>

						<div class="form-group">
							<label for="job-title">이메일</label>
							<form:input path="memEmail" type="text" cssClass="form-control" />
							<form:errors path="memEmail" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">전화번호</label>
							<form:input path="memTel" type="text" cssClass="form-control" />
							<form:errors path="memTel" element="span" cssClass="text-danger" />
						</div>
						<div class="col-6">
							<input type="submit" class="btn btn-block btn-primary btn-md"
								value="가입">
						</div>
					</form:form>
				</div>


			</div>
			<div class="row align-items-center mb-5">

				<div class="col-lg-4 ml-auto">
					<div class="row">
						<div class="col-6">
							<a href="#" class="btn btn-block btn-light btn-md"
								style="border: 1px solid;">이전</a>
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


