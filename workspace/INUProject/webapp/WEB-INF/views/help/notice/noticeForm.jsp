<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<script src="${pageContext.request.contextPath }/resources/ckeditor/ckeditor.js"></script>
<form:form modelAttribute="notice" enctype="multipart/form-data" method="post">
<table>
	<tr>
		<form:hidden path="noticeSn"/>
	</tr>
	<tr>
		<form:hidden path="memId"/>
	</tr>
	<tr>
		<!-- select option으로 바꾸기 -->
		<th>구분</th>
		<td>
			<form:select path="noticeSort">
				<form:option value="안내"/>
				<form:option value="오픈"/>
				<form:option value="기타"/>
			</form:select>
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
<%-- 			<form:textarea path="noticeContent" type="text" cssClass="form-control"/> --%>
			<textarea id="noticeContent" name="noticeContent"></textarea>
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

<script>
$("button").on("click", function(event) {
	event.preventDefault();
	
	console.log(CKEDITOR.instances.noticeContent.getData());
	
	return false;
});

CKEDITOR.replace('noticeContent', {
	filebrowserUploadUrl: '${pageContext.request.contextPath}/help/notice/noticeAttach?command=QuickUpload&type=Files&responseType=json'
});
</script>










