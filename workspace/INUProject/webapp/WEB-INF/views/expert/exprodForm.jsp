<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      작성자명      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<script src="${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<div class="site-wrap">
	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
				<span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>
	<section class="site-section">
		<div class="container">

			<div class="row align-items-center mb-5">
				<div class="col-lg-8 mb-4 mb-lg-0">
					<div class="d-flex align-items-center">
						<div>
							<h2>상품</h2>
						</div>
					</div>
				</div>
			</div>
			<div class="row mb-5">
				<div class="col-lg-12">
					<form:form modelAttribute="exprod" method="post"
						enctype="multipart/form-data">
						<%-- <div class="form-group">
							<form:select path="exlprodId" id="exlprod">
								<option value>구분코드</option>
								<c:forEach items="${exlprod }" var="exlprod">
									<form:option value="${exlprod.exlprodId }"
										label="${exlprod.exlprodName }"></form:option>
								</c:forEach>
							</form:select>
							<form:errors path="exlprodId" element="span" cssClass="text-danger" />
						</div> --%>
						<br>

						<%-- <div class="form-group">
							<label for="job-title">시작일</label>
							<form:input path="exprodStart" type="date"
								cssClass="form-control" />
							<form:errors path="exprodStart" element="span"
								cssClass="text-danger" />
						</div> --%>
						<div class="form-group col-md-10" >
							<input type="text" name="datetimes" class="box" style="width: 270px"/>
							<form:hidden path="exprodStart" />
							<form:hidden path="exprodEnd" />
						</div>
						<%-- <div class="form-group">
							<label for="job-title">종료일</label>
							<form:input path="exprodEnd" type="date" cssClass="form-control" />
							<form:errors path="exprodEnd" element="span"
								cssClass="text-danger" />
						</div> --%>
						<div class="form-group">
							<label for="job-title">대상</label>
							<form:input path="exprodTarget" type="text"
								cssClass="form-control" />
							<form:errors path="exprodTarget" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">상품명</label>
							<form:input path="exprodName" type="text" cssClass="form-control" />
							<form:errors path="exprodName" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">상품 가격</label>
							<form:input path="exprodPrice" type="number"
								cssClass="form-control" />
							<form:errors path="exprodPrice" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">상품이용방법</label>
							<form:input path="exprodWay" type="text" cssClass="form-control" />
							<form:errors path="exprodWay" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">시간</label>
							<form:input path="exprodTime" type="time" cssClass="form-control" />
							<form:errors path="exprodTime" element="span"
								cssClass="text-danger" />
						</div>
						<div class="form-group">
							<label for="job-title">상세설명</label>
							<form:textarea path="exprodDetail" type="text" id ="summernote"
								cssClass="form-control"  cols="30" rows="7"/>
							<form:errors path="exprodDetail" element="span"
								cssClass="text-danger" />
						</div>
<%-- 						<div class="form-group">
							<label for="job-title">전문가아이디</label>
							<form:input path="memId" type="text" cssClass="form-control" />
							<form:errors path="memId" element="span" cssClass="text-danger" />
						</div> --%>

						<div class="col-6">
							<input type="submit" class="btn btn-block btn-primary btn-md"
								value="등록">
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
							<a href="#" class="btn btn-block btn-primary btn-md">등록</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
</div>
<!-- SCRIPTS -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/ckeditor.js"></script>
<script src="https://cdn.ckeditor.com/ckeditor5/34.0.0/classic/translations/ko.js"></script>
<script>
/* CKEDITOR */
CKEDITOR.replace('exprodDetail',{
	filebrowserUploadUrl: '${pageContext.request.contextPath}/help/notice/noticeAttach?command=QuickUpload&type=Files&responseType=json'
	, height : 450
});


/* daterangepicker */
$(function() {
	$('input[name="datetimes"]').daterangepicker({
		opens: 'left',
		timePicker: true,
		startDate: moment().startOf('hour'),
		endDate: moment().startOf('hour').add(32, 'hour'),
		locale: {
			format: 'M/DD hh:mm A'
		}
	}, function(start, end, label) {
		//DB로 가져갈 값
		let annoStartdate = document.querySelector("[name=exprodStart]");
		let annoEnddate = document.querySelector("[name=exprodEnd]");
		exprodStart.value=start.format('YYYY-MM-DD HH:mm:ss');
		exprodEnd.value=end.format('YYYY-MM-DD HH:mm:ss');
		console.log('시작날짜',exprodStart.value);
		console.log('종료날짜',exprodEnd.value);
	});
});
let today = new Date();
// $('input[name=daterange]').val(today);

    </script>
