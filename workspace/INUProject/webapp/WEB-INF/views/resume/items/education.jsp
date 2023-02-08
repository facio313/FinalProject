<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<table class="table table-bordered">
	<thead>
		<tr>
			<th>번호</th>
			<th>학교명</th>
			<th>전공</th>
			<th>입학일</th>
			<th>졸업일</th>
			<th>상태</th>
		</tr>
	</thead>
	<tbody id="eduBody">
	</tbody>
	<tfoot>
		<a href="${pageContext.request.contextPath}/education/insert"><h1>+</h1></a>
	</tfoot>
</table>

<script>
let eduBody = $("#eduBody");

let makeTrTag = function(edu, index){
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/education/" + edu.eduSn)
				.html(edu.eduMajor);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(edu.eduName)
				, $("<td>").html(aTag)
				, $("<td>").html(edu.eduEntered)
				, $("<td>").html(edu.eduGraduated)
				, $("<td>").html(edu.eduStatus)
			);
}

$.ajax({
	url : "${pageContext.request.contextPath}/education",
	method : "get",
	dataType : "json",
	success : function(resp) {
		console.log(resp);
		eduBody.empty();
		let dataList = resp.educationList;
		let trTags = [];
		if(dataList){
			$.each(dataList, function(index, edu){
				trTags.push(makeTrTag(edu, index));
			});
		}else{
			let tr = $("<tr>").html(
				$("<td>").attr("colspan", "7")
						.html("경력을 아직 등록하지 않았습니다.")
			);	
			trTags.push(tr);
		}
		eduBody.html(trTags);
	},
	error : function(jqXHR, status, error) {
		console.log(jqXHR);
		console.log(status);
		console.log(error);
	}
});
</script>