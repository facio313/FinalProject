<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script>
<form:form id="updateForm" modelAttribute="notice" method="post">
<form:hidden path="noticeSn"/>
<table>
	<tr>
		<!-- select option으로 바꾸기 -->
		<th>구분</th>
		<td>
			<form:input path="noticeSort" type="text"/>
		</td>
	</tr>
	<tr>
		<th>제목</th>
		<td>
			<form:input path="noticeTitle" type="text"/>
		</td>
	</tr>
	<tr>
		<th>내용</th>
		<td>
			<form:input path="noticeContent" type="text"/>
		</td>
	</tr>
	<tr>
		<td>
			<form:button type="submit">저장</form:button>
			<input type="button" onclick="location.href='<c:url value="/help/notice"/>'" value="목록으로"/>
		</td>
	</tr>
</table>

</form:form>
<!-- 
<script>
	CKEDITOR.replace('noticeContent', {
		filebrowserUploadUrl: '${pageContext.request.contextPath}/board/boardImage.do?command=QuickUpload&type=Files&responseType=json'
	});
	let updateForm = $("#updateForm");
	$(".delBtn").on("click", function(event){
		let attNo = $(this).data("attNo");
		let newInput = $("<input>").attr({
			type:"text"
			, name:"delAttNos"
		}).val(attNo);
		updateForm.append(newInput);
		let span = $(this).parents("span:first");
		span.hide();
	});
</script>
 -->









