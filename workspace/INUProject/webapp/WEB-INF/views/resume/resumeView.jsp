<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<table class="table table-bordered">
<tr>
	<th>이력서제목</th>
	<td>${resume.resumeTitle}</td>
</tr>

<tr>
	<th>이력서이름</th>
	<td>${resume.resumeName}</td>
</tr>
<tr>
	<th>이력서성별</th>
	<td>${resume.resumeGender}</td>
</tr>
<tr>
	<th>이력서기본주소</th>
	<td>${resume.resumeAddr1}</td>
</tr>
<tr>
	<th>이력서이메일</th>
	<td>${resume.resumeEmail}</td>
</tr>
<tr>
	<th>이력서전화번호</th>
	<td>${resume.resumeTel}</td>
</tr>
<tr>
	<th>작성날짜</th>
	<td>${resume.resumeInsertDate}</td>
</tr>
</table>

<!-- ==================================================학력================================================== -->
<div class="form-group">
	<label for="job-title">학력</label>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>학교명</th>
				<th>전공분류</th>
				<th>전공</th>
				<th>입학일</th>
				<th>졸업일</th>
				<th>상태</th>
				<th>학점</th>
				<th>기준학점</th>
				<th>작성날짜</th>
				<th>삭제</th>
			</tr>
		</thead>
		<tbody id="eduBody">
		</tbody>
		<tfoot>
			<tr>
				<td colspan="11" id="eduFoot">
					<button type="button" class="btn btn-primary" id="eduBtn">새로 추가하기</button>
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#eduModal">기존 학력 추가하기</button>
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- 학력모달 -->
<div class="modal fade" id="eduModal" tabindex="-1" aria-labelledby="eduModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="eduModalLabel">기존 학력 추가하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
        	<thead>
        		<tr>
        			<th></th>
        			<th>학교명</th>
        			<th>전공분류</th>
        			<th>전공</th>
        			<th>상태</th>
        			<th>학점</th>
        			<th>기준학점</th>
        			<th>선택</th>
        		</tr>
        	</thead>
        	<tbody id="eduModalBody">
        	
        	</tbody>
        </table>
      </div>
      <div id="eduModalDiv">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="">닫기</button>
        <button type="button" class="btn btn-primary" id="eduModalBtn">추가</button>
      </div>
    </div>
  </div>
</div>


<!-- 학력 관리 -->
<script>
let eduBtn = $("#eduBtn");
let eduBody = $("#eduBody");
let eduFoot = $("#eduFoot");

let makeEduTrTag = function(index, edu) {
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/education/" + edu.eduSn)
				.html(edu.eduName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(edu.eduDepartment)
				, $("<td>").html(edu.eduMajor)
				, $("<td>").html(edu.eduEntered.substr(0, 7))
				, $("<td>").html(edu.eduGraduated.substr(0, 7))
				, $("<td>").html(edu.eduStatus)
				, $("<td>").html(edu.eduScore)
				, $("<td>").html(edu.eduStandard)
				, $("<td>").html(edu.eduInsertDate.substr(0, 10))
				, $("<td>").append($("<button>").addClass("btn btn-danger").addClass("eduRemoveBtn").val(edu.eduSn).html("삭제"))
			);
}

let eduModalBody = $("#eduModalBody");

let makeEduModalTag = function(index, edu) {
	let eduIndex = "edu" + (index + 1);
	let modalATag =$("<a>")
				.attr("href", "${pageContext.request.contextPath}/education/" + edu.eduSn)
				.html(edu.eduName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(modalATag)
				, $("<td>").html(edu.eduDepartment)
				, $("<td>").html(edu.eduMajor)
				, $("<td>").html(edu.eduStatus)
				, $("<td>").html(edu.eduScore)
				, $("<td>").html(edu.eduStandard)
				, $("<td>").append($("<input>").attr("type", "checkBox").attr("id", eduIndex).attr("name", "itemList.resumeItemSn").val(edu.eduSn))
			)
}

// 공통 모듈로 뺄 수 있을 듯?
let $eduList = function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/itemList?resumeSn=${resume.resumeSn}",
		method : "get",
		dataType : "json",
		success : function(resp) {
			eduBody.empty();
			let dataList = resp.resume.eduList;
			let trTags = [];
			if (dataList) {
				$.each(dataList, function(index, edu) {
					trTags.push(makeEduTrTag(index, edu));
					$("#eduForm").remove();
				});
			} else {
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "10")
							.html("학력을 아직 등록하지 않았습니다.")
				);	
				trTags.push(tr);
			}
			eduBody.html(trTags);
			
			eduModalBody.empty();
			let modalList = resp.exclude.eduList;
			let trModalTags = [];
			if (modalList) {
				$.each(modalList, function(index, edu) {
					trModalTags.push(makeEduModalTag(index, edu));
					$("#eduModalForm").remove();
				});
			} else {
				let modalTr = $("<tr>").html(
					$("<td>").attr("colspan", "7").html("이력서에 존재하지 않는 학력 항목이 없습니다.")
				);
				trModalTags.push(modalTr);
			}
			eduModalBody.html(trModalTags);
			$(".eduRemoveBtn").on("click", function() {
				eduRemove(this);
			});
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

$eduList();

function eduRemove(button) { // button = this
	console.log(button);
	let removeItem = $(button).val();
	
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/${resumeSn}/itemRemove",
		method : "post",
		data : {
			"resumeItemSn" : removeItem
		},
		dataType : "json",
		success : function(resp) {
			$eduList();
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

eduBtn.on("click", function() {
	eduBody.append(
		$("<tr>").attr("id", "eduTr").append(
			$("<td>").css("width", "50")
			, $("<td>").append($("<input>").attr("name", "eduName").attr("type", "text").css("width", "140"))
			, $("<td>").append($("<input>").attr("name", "eduDepartment").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "eduMajor").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "eduEntered").attr("type", "date").css("width", "100"))
			, $("<td>").append($("<input>").attr("name", "eduGraduated").attr("type", "date").css("width", "100"))
			, $("<td>").append($("<input>").attr("name", "eduStatus").attr("type", "text").css("width", "60"))
			, $("<td>").append($("<input>").attr("name", "eduScore").attr("type", "number").attr("step", "0.01").css("width", "60"))
			, $("<td>").append($("<input>").attr("name", "eduStandard").attr("type", "number").attr("step", "0.01").css("width", "60"))
			, $("<td>").append($("<button>").attr("id", "eduSub").addClass("btn btn-primary").html("저장"))
			, $("<td>").append($("<button>").attr("id", "eduDelete").addClass("btn btn-danger").html("취소"))
		)
	)
	
	$(this).parent().hide();
	
	eduFoot.append(
		$("<form>").attr("method", "post").attr("encType", "multipart/form-data").attr("id", "eduForm").append(
			$("<input>").attr("name", "eduName").attr("type", "text")
			, $("<input>").attr("name", "eduDepartment").attr("type", "text")
			, $("<input>").attr("name", "eduMajor").attr("type", "text")
			, $("<input>").attr("name", "eduEntered").attr("type", "date")
			, $("<input>").attr("name", "eduGraduated").attr("type", "date")
			, $("<input>").attr("name", "eduStatus").attr("type", "text")
			, $("<input>").attr("name", "eduScore").attr("type", "number").attr("step", "0.01")
			, $("<input>").attr("name", "eduStandard").attr("type", "number").attr("step", "0.01")
			, $("<input>").attr("name", "memId").attr("type", "text")
		)
	)
	
	let eduForm = $("#eduForm").on("submit", function(event) {
		event.preventDefault();
		
		let method = this.method;
		let queryString = $(this).serialize();
		
		$.ajax({
			method : method,
			data :queryString,
			dataType : "json",
			success : function(resp) {
				$eduList();
				$("#eduBtn").parent().show();
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	});
	
	$("#eduSub").on("click", function() {
		$("form > input[name=eduName]").val($("td > input[name=eduName]").val());
		$("form > input[name=eduDepartment]").val($("td > input[name=eduDepartment]").val());
		$("form > input[name=eduMajor]").val($("td > input[name=eduMajor]").val());
		$("form > input[name=eduEntered]").val($("td > input[name=eduEntered]").val());
		$("form > input[name=eduGraduated]").val($("td > input[name=eduGraduated]").val());
		$("form > input[name=eduStatus]").val($("td > input[name=eduStatus]").val());
		$("form > input[name=eduScore]").val($("td > input[name=eduScore]").val());
		$("form > input[name=eduStandard]").val($("td > input[name=eduStandard]").val());
		$("form > input[name=memId]").val("${resume.memId}");
		
		eduForm.submit();
	});
	
	$("#eduDelete").on("click", function() {
		$("#eduTr").remove();
		$("#eduBtn").parent().show();
		$("#eduForm").remove();
	});
	
});

let eduModalBtn = $("#eduModalBtn").on("click", function() {
	let checkBox = eduModalBody.find("input[type=checkBox]:checked");
	let eduModalDiv = $("#eduModalDiv");
	let inputTags = "";
	for (let i = 0; i < checkBox.length; i++) {
		inputTags += '<input name="itemList[' + i + '].resumeSn" value="${resumeSn}" />';
		inputTags += '<input name="itemList[' + i + '].resumeItemSn" value="' + checkBox[i].value + '" />'; 
	}
	
	let makeEduForm = '<form:form modelAttirbute="resume" id="eduModalForm"></form:form>'
	eduModalDiv.html(makeEduForm);
	$("#eduModalForm").html(inputTags);
	
	let eduModalForm = $("#eduModalForm").submit(function(event) {
		event.preventDefault();
		
		let queryString = $("#eduModalForm").serialize();
		
		$.ajax({
			url : "${pageContext.request.contextPath}/resume/${resumeSn}/item",
			method : "post",
			data : queryString,
			dataType : "json",
			success : function(resp) {
				$eduList();
				$("button[data-bs-dismiss=modal]").trigger("click");
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
		
		return false;
	});
	
	eduModalForm.submit();
});

</script>

<!-- ==================================================경력================================================== -->
<div class="form-group">
	<label for="job-title">경력</label>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>업종</th>
				<th>직장명</th>
				<th>직무</th>
				<th>직급</th>
				<th>입사일</th>
				<th>퇴사일</th>
				<th>연봉</th>
				<th>연차</th>
				<th>경력 작성날짜</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="careerBody">
		</tbody>
		<tfoot>
			<tr id="careerFoot">
				<td colspan="11">
					<button type="button" class="btn btn-primary" id="careerBtn">새로 추가하기</button>
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#careerModal">기존 경력 추가하기</button>						
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- 경력모달 -->
<div class="modal fade" id="careerModal" tabindex="-1" aria-labelledby="careerModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="careerModalLabel">기존 경력 추가하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
        	<thead>
        		<tr>
        			<th></th>
        			<th>업종</th>
        			<th>직장명</th>
        			<th>직무</th>
        			<th>입사일</th>
        			<th>퇴사일</th>
        			<th>경력 작성날짜</th>
        			<th>선택</th>
        		</tr>
        	</thead>
        	<tbody id="careerModalBody">
        	
        	</tbody>
        </table>
      </div>
      <div id="careerModalDiv">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="">닫기</button>
        <button type="button" class="btn btn-primary" id="careerModalBtn">추가</button>
      </div>
    </div>
  </div>
</div>

<!-- 경력 관리 -->
<script>
let careerBtn = $("#careerBtn");
let careerBody = $("#careerBody");
let careerFoot = $("#careerFoot");

let makeCareerTrTag = function(index, career) {
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/career/" + career.careerSn)
				.html(career.careerCompany);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(career.careerCategory)
				, $("<td>").html(aTag)
				, $("<td>").html(career.careerTask)
				, $("<td>").html(career.careerClass)
				, $("<td>").html(career.careerJoin.substr(0, 10))
				, $("<td>").html(career.careerResign.substr(0, 10))
				, $("<td>").html(career.careerSalary)
				, $("<td>").html(career.careerAnnual)
				, $("<td>").html(career.careerInsertDate.substr(0, 10))
				, $("<td>").append($("<button>").addClass("btn btn-danger").addClass("careerRemoveBtn").val(career.careerSn).html("삭제"))
			);
}

let careerModalBody = $("#careerModalBody");

let makeCareerModalTag = function(index, career) {
	let careerIndex = "career" + (index + 1);
	let modalATag =$("<a>")
				.attr("href", "${pageContext.request.contextPath}/careercation/" + career.careerSn)
				.html(career.careerCompany);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(career.careerCategory)
				, $("<td>").html(modalATag)
				, $("<td>").html(career.careerTask)
				, $("<td>").html(career.careerJoin.substr(0, 10))
				, $("<td>").html(career.careerResign.substr(0, 10))
				, $("<td>").html(career.careerInsertDate.substr(0, 10))
				, $("<td>").append($("<input>").attr("type", "checkBox").attr("id", careerIndex).attr("name", "itemList.resumeItemSn").val(career.careerSn))
			)
}

let $careerList = function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/itemList?resumeSn=${resume.resumeSn}",
		method : "get",
		dataType : "json",
		success : function(resp) {
			careerBody.empty();
			let dataList = resp.resume.careerList;
			let trTags = [];
			if (dataList) {
				$.each(dataList, function(index, career) {
					trTags.push(makeCareerTrTag(index, career));
					$("#careerForm").remove();
				});
			} else {
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "11")
							.html("경력을 아직 등록하지 않았습니다.")
				);	
				trTags.push(tr);
			}
			careerBody.html(trTags);
			
			careerModalBody.empty();
			let careerModalList = resp.exclude.careerList;
			let trModalTags = [];
			if (careerModalList) {
				$.each(careerModalList, function(index, career) {
					trModalTags.push(makeCareerModalTag(index, career));
					$("#careerModalForm").remove();
				});
			} else {
				let modalTr = $("<tr>").html(
					$("<td>").attr("colspan", "8").html("이력서에 존재하지 않는 경력 항목이 없습니다.")
				);
				trModalTags.push(modalTr);
			}
			careerModalBody.html(trModalTags);
			$(".careerRemoveBtn").on("click", function() {
				careerRemove(this);
			});
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

$careerList();

function careerRemove(button) {
	console.log(button);
	let removeItem = $(button).val();
	
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/${resumeSn}/itemRemove",
		method : "post",
		data : {
			"resumeItemSn" : removeItem						
		},
		dataType : "json",
		success : function(resp) {
			$careerList();
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

careerBtn.on("click", function() {
	careerBody.append(
		$("<tr>").attr("id", "careerTr").append(
			$("<td>").css("width", "50")
			, $("<td>").append($("<input>").attr("name", "careerCategory").attr("type", "text").css("width", "140"))
			, $("<td>").append($("<input>").attr("name", "careerCompany").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "careerTask").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "careerClass").attr("type", "text").css("width", "100"))
			, $("<td>").append($("<input>").attr("name", "careerJoin").attr("type", "date").css("width", "100"))
			, $("<td>").append($("<input>").attr("name", "careerResign").attr("type", "date").css("width", "60"))
			, $("<td>").append($("<input>").attr("name", "careerSalary").attr("type", "text").css("width", "60"))
			, $("<td>").append($("<input>").attr("name", "careerAnnual").attr("type", "number").css("width", "60"))
			, $("<td>").append($("<button>").attr("id", "careerSub").addClass("btn btn-primary").html("저장"))
			, $("<td>").append($("<button>").attr("id", "careerDelete").addClass("btn btn-danger").html("취소"))
		)
	)
	
	$(this).parent().hide();
	
	careerFoot.append(
		$("<form>").attr("method", "post").attr("encType", "multipart/form-data").attr("id", "careerForm").append(
			$("<input>").attr("name", "careerCategory").attr("type", "text")
			, $("<input>").attr("name", "careerCompany").attr("type", "text")
			, $("<input>").attr("name", "careerTask").attr("type", "text")
			, $("<input>").attr("name", "careerClass").attr("type", "text")
			, $("<input>").attr("name", "careerJoin").attr("type", "date")
			, $("<input>").attr("name", "careerResign").attr("type", "date")
			, $("<input>").attr("name", "careerSalary").attr("type", "text")
			, $("<input>").attr("name", "careerAnnual").attr("type", "number")
			, $("<input>").attr("name", "memId").attr("type", "text")
		)
	)
	
	let careerForm = $("#careerForm").on("submit", function(event) {
		event.preventDefault();
		
		let method = this.method;
		let queryString = $(this).serialize();
		
		$.ajax({
			method : method,
			data :queryString,
			dataType : "json",
			success : function(resp) {
				$careerList();
				$("#careerBtn").parent().show();
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	});
	
	$("#careerSub").on("click", function() {
		$("form > input[name=careerCategory]").val($("td > input[name=careerCategory]").val());
		$("form > input[name=careerCompany]").val($("td > input[name=careerCompany]").val());
		$("form > input[name=careerTask]").val($("td > input[name=careerTask]").val());
		$("form > input[name=careerClass]").val($("td > input[name=careerClass]").val());
		$("form > input[name=careerJoin]").val($("td > input[name=careerJoin]").val());
		$("form > input[name=careerResign]").val($("td > input[name=careerResign]").val());
		$("form > input[name=careerSalary]").val($("td > input[name=careerSalary]").val());
		$("form > input[name=careerAnnual]").val($("td > input[name=careerAnnual]").val());
		$("form > input[name=memId]").val("${resume.memId}");
		
		careerForm.submit();
	});
	
	$("#careerDelete").on("click", function() {
		$("#careerTr").remove();
		$("#careerBtn").parent().show();
		$("#careerForm").remove();
	});
	
});

let careerModalBtn = $("#careerModalBtn").on("click", function() {
	let checkBox = careerModalBody.find("input[type=checkBox]:checked");
	let careerModalDiv = $("#careerModalDiv");
	let inputTags = "";
	for (let i = 0; i < checkBox.length; i++) {
		inputTags += '<input name="itemList[' + i + '].resumeSn" value="${resumeSn}" />';
		inputTags += '<input name="itemList[' + i + '].resumeItemSn" value="' + checkBox[i].value + '" />'; 
	}
	
	let makeCareerForm = '<form:form modelAttirbute="resume" id="careerModalForm"></form:form>'
	careerModalDiv.html(makeCareerForm);
	$("#careerModalForm").html(inputTags);
	
	let careerModalForm = $("#careerModalForm").submit(function(event) {
		event.preventDefault();
		
		let queryString = $("#careerModalForm").serialize();
		
		$.ajax({
			url : "${pageContext.request.contextPath}/resume/${resumeSn}/item",
			method : "post",
			data : queryString,
			dataType : "json",
			success : function(resp) {
				console.log(resp);
				$careerList();
				$("button[data-bs-dismiss=modal]").trigger("click");
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
		
		return false;
	});
	
	careerModalForm.submit();
});

</script>

<!-- ==================================================자격증================================================== -->

<div class="form-group">
	<label for="job-title">자격증</label>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>자격번호</th>
				<th>자격증명</th>
				<th>발급일</th>
				<th>시행부처</th>
				<th>자격증 작성날짜</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="certBody">

		</tbody>
		<tfoot id="certFoot">
			<tr>
				<td colspan="7">
					<button type="button" class="btn btn-primary" id="certBtn">새로 추가하기</button>
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#certModal">기존 자격증 추가하기</button>				
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- 자격증모달 -->
<div class="modal fade" id="certModal" tabindex="-1" aria-labelledby="certModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="certModalLabel">기존 자격증 추가하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
        	<thead>
        		<tr>
					<th></th>
					<th>자격번호</th>
					<th>자격증명</th>
					<th>발급일</th>
					<th>시행부처</th>
					<th>자격증 작성날짜</th>
					<th>선택</th>
        		</tr>
        	</thead>
        	<tbody id="certModalBody">
        	
        	</tbody>
        </table>
      </div>
      <div id="certModalDiv">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="">닫기</button>
        <button type="button" class="btn btn-primary" id="certModalBtn">추가</button>
      </div>
    </div>
  </div>
</div>

<!-- 자격증 관리 -->
<script>
let certBtn = $("#certBtn");
let certBody = $("#certBody");
let certFoot = $("#certFoot");

let makeCertTrTag = function(index, cert) {
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/cert/" + cert.certSn)
				.html(cert.certName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(cert.certSn)
				, $("<td>").html(aTag)
				, $("<td>").html(cert.certDate.substr(0, 10))
				, $("<td>").html(cert.certInstitution)
				, $("<td>").html(cert.certInsertDate.substr(0, 10))
				, $("<td>").append($("<button>").addClass("btn btn-danger").addClass("certRemoveBtn").val(cert.certSn).html("삭제"))
			);
}

let certModalBody = $("#certModalBody");

let makeCertModalTag = function(index, cert) {
	let certIndex = "cert" + (index + 1);
	let modalATag =$("<a>")
				.attr("href", "${pageContext.request.contextPath}/certcation/" + cert.certSn)
				.html(cert.certName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(cert.certSn)
				, $("<td>").html(modalATag)
				, $("<td>").html(cert.certDate.substr(0, 10))
				, $("<td>").html(cert.certInstitution)
				, $("<td>").html(cert.certInsertDate.substr(0, 10))
				, $("<td>").append($("<input>").attr("type", "checkBox").attr("id", certIndex).attr("name", "itemList.resumeItemSn").val(cert.certSn))
			)
}

let $certList = function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/itemList?resumeSn=${resume.resumeSn}",
		method : "get",
		dataType : "json",
		success : function(resp) {
			certBody.empty();
			let dataList = resp.resume.certList;
			let trTags = [];
			if (dataList) {
				$.each(dataList, function(index, cert) {
					trTags.push(makeCertTrTag(index, cert));
					$("#certForm").remove();
				});
			} else {
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "7")
							.html("경력을 아직 등록하지 않았습니다.")
				);	
				trTags.push(tr);
			}
			certBody.html(trTags);
			
			certModalBody.empty();
			let certModalList = resp.exclude.certList;
			let trModalTags = [];
			if (certModalList) {
				$.each(certModalList, function(index, cert) {
					trModalTags.push(makeCertModalTag(index, cert));
					$("#certModalForm").remove();
				});
			} else {
				let modalTr = $("<tr>").html(
					$("<td>").attr("colspan", "7").html("이력서에 존재하지 않는 경력 항목이 없습니다.")
				);
				trModalTags.push(modalTr);
			}
			certModalBody.html(trModalTags);
			$(".certRemoveBtn").on("click", function() {
				certRemove(this);
			});
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

$certList();

function certRemove(button) {
	console.log(button);
	let removeItem = $(button).val();
	
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/${resumeSn}/itemRemove",
		method : "post",
		data : {
			"resumeItemSn" : removeItem						
		},
		dataType : "json",
		success : function(resp) {
			$certList();
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

certBtn.on("click", function() {
	certBody.append(
		$("<tr>").attr("id", "certTr").append(
			$("<td>").css("width", "50")
			, $("<td>").append($("<input>").attr("name", "certNo").attr("type", "text").css("width", "140"))
			, $("<td>").append($("<input>").attr("name", "certName").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "certDate").attr("type", "date").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "certInstitution").attr("type", "text").css("width", "100"))
			, $("<td>").append($("<button>").attr("id", "certSub").addClass("btn btn-primary").html("저장"))
			, $("<td>").append($("<button>").attr("id", "certDelete").addClass("btn btn-danger").html("취소"))
		)
	)
	
	$(this).parent().hide();
	
	certFoot.append(
		$("<form>").attr("method", "post").attr("encType", "multipart/form-data").attr("id", "certForm").append(
			$("<input>").attr("name", "certNo").attr("type", "text")
			, $("<input>").attr("name", "certName").attr("type", "text")
			, $("<input>").attr("name", "certDate").attr("type", "date")
			, $("<input>").attr("name", "certInstitution").attr("type", "text")
		)
	)
	
	let certForm = $("#certForm").on("submit", function(event) {
		event.preventDefault();
		
		let method = this.method;
		let queryString = $(this).serialize();
		
		$.ajax({
			method : method,
			data :queryString,
			dataType : "json",
			success : function(resp) {
				$certList();
				$("#certBtn").parent().show();
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	});
	
	$("#certSub").on("click", function() {
		$("form > input[name=certNo]").val($("td > input[name=certNo]").val());
		$("form > input[name=certName]").val($("td > input[name=certName]").val());
		$("form > input[name=certDate]").val($("td > input[name=certDate]").val());
		$("form > input[name=certInstitution]").val($("td > input[name=certInstitution]").val());
		$("form > input[name=memId]").val("${resume.memId}");
		
		certForm.submit();
	});
	
	$("#certDelete").on("click", function() {
		$("#certTr").remove();
		$("#certBtn").parent().show();
		$("#certForm").remove();
	});
	
});

let certModalBtn = $("#certModalBtn").on("click", function() {
	let checkBox = certModalBody.find("input[type=checkBox]:checked");
	let certModalDiv = $("#certModalDiv");
	let inputTags = "";
	for (let i = 0; i < checkBox.length; i++) {
		inputTags += '<input name="itemList[' + i + '].resumeSn" value="${resumeSn}" />';
		inputTags += '<input name="itemList[' + i + '].resumeItemSn" value="' + checkBox[i].value + '" />'; 
	}
	
	let makecertForm = '<form:form modelAttirbute="resume" id="certModalForm"></form:form>'
	certModalDiv.html(makecertForm);
	$("#certModalForm").html(inputTags);
	
	let certModalForm = $("#certModalForm").submit(function(event) {
		event.preventDefault();
		
		let queryString = $("#certModalForm").serialize();
		
		$.ajax({
			url : "${pageContext.request.contextPath}/resume/${resumeSn}/item",
			method : "post",
			data : queryString,
			dataType : "json",
			success : function(resp) {
				console.log(resp);
				$certList();
				$("button[data-bs-dismiss=modal]").trigger("click");
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
		
		return false;
	});
	
	certModalForm.submit();
});

</script>

<!-- ==================================================기능================================================== -->
<div class="form-group">
	<label for="job-title">기능</label>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>기능명</th>
				<th>기능종류</th>
				<th>수준</th>
				<th>취득일</th>
				<th>훈련기간</th>
				<th>기능 작성날짜</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="facBody">
		</tbody>
		<tfoot>
			<tr>
				<td colspan="11" id="facFoot">
					<button type="button" class="btn btn-primary" id="facBtn">새로 추가하기</button>
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#facModal">기존 학력 추가하기</button>
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- 기능모달 -->
<div class="modal fade" id="facModal" tabindex="-1" aria-labelledby="facModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="facModalLabel">기존 기능 추가하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
        	<thead>
        		<tr>
        			<th></th>
        			<th>기능</th>
        			<th>기능분류</th>
        			<th>수준</th>
        			<th>취득일</th>
        			<th>훈련기간</th>
        			<th>기능 작성날짜</th>
        			<th>선택</th>
        		</tr>
        	</thead>
        	<tbody id="facModalBody">
        	
        	</tbody>
        </table>
      </div>
      <div id="facModalDiv">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="">닫기</button>
        <button type="button" class="btn btn-primary" id="facModalBtn">추가</button>
      </div>
    </div>
  </div>
</div>


<!-- 기능 관리 -->
<script>
let facBtn = $("#facBtn");
let facBody = $("#facBody");
let facFoot = $("#facFoot");

let makefacTrTag = function(index, fac) {
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/facility/" + fac.facilitySn)
				.html(fac.facilityName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(fac.facilityCategory)
				, $("<td>").html(fac.facilityLevel)
				, $("<td>").html(fac.facilityGetdate)
				, $("<td>").html(fac.facilityPeriod)
				, $("<td>").html(fac.facilityInsertDate.substr(0, 10))
				, $("<td>").append($("<button>").addClass("btn btn-danger").addClass("facRemoveBtn").val(fac.facilitySn).html("삭제"))
			);
}

let facModalBody = $("#facModalBody");

let makefacModalTag = function(index, fac) {
	let facIndex = "fac" + (index + 1);
	let modalATag =$("<a>")
				.attr("href", "${pageContext.request.contextPath}/facility/" + fac.facilitySn)
				.html(fac.facilityName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(modalATag)
				, $("<td>").html(fac.facilityCategory)
				, $("<td>").html(fac.facilityLevel)
				, $("<td>").html(fac.facilityGetdate)
				, $("<td>").html(fac.facilityPeriod)
				, $("<td>").html(fac.facilityInsertDate.substr(0, 10))
				, $("<td>").append($("<input>").attr("type", "checkBox").attr("id", facIndex).attr("name", "itemList.resumeItemSn").val(fac.facilitySn))
			)
}

// 공통 모듈로 뺄 수 있을 듯?
let $facList = function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/itemList?resumeSn=${resume.resumeSn}",
		method : "get",
		dataType : "json",
		success : function(resp) {
			console.log(resp);
			facBody.empty();
			let dataList = resp.resume.facilityList;
			let trTags = [];
			if (dataList) {
				$.each(dataList, function(index, fac) {
					trTags.push(makefacTrTag(index, fac));
					$("#facForm").remove();
				});
			} else {
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "10")
							.html("기능을 아직 등록하지 않았습니다.")
				);	
				trTags.push(tr);
			}
			facBody.html(trTags);
			
			facModalBody.empty();
			let modalList = resp.exclude.facilityList;
			let trModalTags = [];
			if (modalList) {
				$.each(modalList, function(index, fac) {
					trModalTags.push(makefacModalTag(index, fac));
					$("#facModalForm").remove();
				});
			} else {
				let modalTr = $("<tr>").html(
					$("<td>").attr("colspan", "8").html("이력서에 존재하지 않는 기능 항목이 없습니다.")
				);
				trModalTags.push(modalTr);
			}
			facModalBody.html(trModalTags);
			$(".facRemoveBtn").on("click", function() {
				facRemove(this);
			});
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

$facList();

function facRemove(button) { // button = this
	console.log(button);
	let removeItem = $(button).val();
	
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/${resumeSn}/itemRemove",
		method : "post",
		data : {
			"resumeItemSn" : removeItem
		},
		dataType : "json",
		success : function(resp) {
			$facList();
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

facBtn.on("click", function() {
	facBody.append(
		$("<tr>").attr("id", "facTr").append(
			$("<td>").css("width", "50")
			, $("<td>").append($("<input>").attr("name", "facilityName").attr("type", "text").css("width", "140"))
			, $("<td>").append($("<input>").attr("name", "facilityCategory").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "facilityLevel").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "facilityGetdate").attr("type", "date").css("width", "100"))
			, $("<td>").append($("<input>").attr("name", "facilityPeriod").attr("type", "text").css("width", "100"))
			, $("<td>").append($("<button>").attr("id", "facSub").addClass("btn btn-primary").html("저장"))
			, $("<td>").append($("<button>").attr("id", "facDelete").addClass("btn btn-danger").html("취소"))
		)
	)
	
	$(this).parent().hide();
	
	facFoot.append(
		$("<form>").attr("method", "post").attr("encType", "multipart/form-data").attr("id", "facForm").append(
			$("<input>").attr("name", "facilityName").attr("type", "text")
			, $("<input>").attr("name", "facilityCategory").attr("type", "text")
			, $("<input>").attr("name", "facilityLevel").attr("type", "text")
			, $("<input>").attr("name", "facilityGetdate").attr("type", "date")
			, $("<input>").attr("name", "facilityPeriod").attr("type", "text")
			, $("<input>").attr("name", "memId").attr("type", "text")
		)
	)
	
	let facForm = $("#facForm").on("submit", function(event) {
		event.preventDefault();
		
		let method = this.method;
		let queryString = $(this).serialize();
		
		$.ajax({
			method : method,
			data :queryString,
			dataType : "json",
			success : function(resp) {
				$facList();
				$("#facBtn").parent().show();
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	});
	
	$("#facSub").on("click", function() {
		$("form > input[name=facilityName]").val($("td > input[name=facilityName]").val());
		$("form > input[name=facilityCategory]").val($("td > input[name=facilityCategory]").val());
		$("form > input[name=facilityLevel]").val($("td > input[name=facilityLevel]").val());
		$("form > input[name=facilityGetdate]").val($("td > input[name=facilityGetdate]").val());
		$("form > input[name=facilityPeriod]").val($("td > input[name=facilityPeriod]").val());
		$("form > input[name=memId]").val("${resume.memId}");
		
		facForm.submit();
	});
	
	$("#facDelete").on("click", function() {
		$("#facTr").remove();
		$("#facBtn").parent().show();
		$("#facForm").remove();
	});
	
});

let facModalBtn = $("#facModalBtn").on("click", function() {
	let checkBox = facModalBody.find("input[type=checkBox]:checked");
	let facModalDiv = $("#facModalDiv");
	let inputTags = "";
	for (let i = 0; i < checkBox.length; i++) {
		inputTags += '<input name="itemList[' + i + '].resumeSn" value="${resumeSn}" />';
		inputTags += '<input name="itemList[' + i + '].resumeItemSn" value="' + checkBox[i].value + '" />'; 
	}
	
	let makefacForm = '<form:form modelAttirbute="resume" id="facModalForm"></form:form>'
	facModalDiv.html(makefacForm);
	$("#facModalForm").html(inputTags);
	
	let facModalForm = $("#facModalForm").submit(function(event) {
		event.preventDefault();
		
		let queryString = $("#facModalForm").serialize();
		
		$.ajax({
			url : "${pageContext.request.contextPath}/resume/${resumeSn}/item",
			method : "post",
			data : queryString,
			dataType : "json",
			success : function(resp) {
				$facList();
				$("button[data-bs-dismiss=modal]").trigger("click");
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
		
		return false;
	});
	
	facModalForm.submit();
});

</script>

<!-- ==================================================주요활동================================================== -->
<div class="form-group">
	<label for="job-title">주요활동</label>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>주요활동명</th>
				<th>주요활동종류</th>
				<th>주요활동기관</th>
				<th>주요활동기간</th>
				<th>주요활동 작성날짜</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="actBody">
		</tbody>
		<tfoot>
			<tr>
				<td colspan="7" id="actFoot">
					<button type="button" class="btn btn-primary" id="actBtn">새로 추가하기</button>
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#actModal">기존 주요활동 추가하기</button>
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- 주요활동모달 -->
<div class="modal fade" id="actModal" tabindex="-1" aria-labelledby="actModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="actModalLabel">기존 주요활동 추가하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
        	<thead>
        		<tr>
        			<th></th>
        			<th>주요활동명</th>
        			<th>주요활동종류</th>
        			<th>주요활동기관</th>
        			<th>주요활동기간</th>
        			<th>주요활동 작성날짜</th>
        			<th>선택</th>
        		</tr>
        	</thead>
        	<tbody id="actModalBody">
        	
        	</tbody>
        </table>
      </div>
      <div id="actModalDiv">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="">닫기</button>
        <button type="button" class="btn btn-primary" id="actModalBtn">추가</button>
      </div>
    </div>
  </div>
</div>


<!-- 주요활동 관리 -->
<script>
let actBtn = $("#actBtn");
let actBody = $("#actBody");
let actFoot = $("#actFoot");

let makeactTrTag = function(index, act) {
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/act/" + act.actSn)
				.html(act.actName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(act.actCategory)
				, $("<td>").html(act.actInstitution)
				, $("<td>").html(act.actPeriod)
				, $("<td>").html(act.actInsertDate.substr(0, 10))
				, $("<td>").append($("<button>").addClass("btn btn-danger").addClass("actRemoveBtn").val(act.actSn).html("삭제"))
			);
}

let actModalBody = $("#actModalBody");

let makeactModalTag = function(index, act) {
	let actIndex = "act" + (index + 1);
	let modalATag =$("<a>")
				.attr("href", "${pageContext.request.contextPath}/act/" + act.actSn)
				.html(act.actName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(modalATag)
				, $("<td>").html(act.actCategory)
				, $("<td>").html(act.actInstitution)
				, $("<td>").html(act.actPeriod.substr(0, 10))
				, $("<td>").html(act.actInsertDate)
				, $("<td>").append($("<input>").attr("type", "checkBox").attr("id", actIndex).attr("name", "itemList.resumeItemSn").val(act.actSn))
			)
}

let $actList = function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/itemList?resumeSn=${resume.resumeSn}",
		method : "get",
		dataType : "json",
		success : function(resp) {
			console.log(resp);
			actBody.empty();
			let dataList = resp.resume.activityList;
			let trTags = [];
			if (dataList) {
				$.each(dataList, function(index, act) {
					trTags.push(makeactTrTag(index, act));
					$("#actForm").remove();
				});
			} else {
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "10")
							.html("주요활동을 아직 등록하지 않았습니다.")
				);	
				trTags.push(tr);
			}
			actBody.html(trTags);
			
			actModalBody.empty();
			let modalList = resp.exclude.activityList;
			let trModalTags = [];
			if (modalList) {
				$.each(modalList, function(index, act) {
					trModalTags.push(makeactModalTag(index, act));
					$("#actModalForm").remove();
				});
			} else {
				let modalTr = $("<tr>").html(
					$("<td>").attr("colspan", "7").html("이력서에 존재하지 않는 주요활동 항목이 없습니다.")
				);
				trModalTags.push(modalTr);
			}
			actModalBody.html(trModalTags);
			$(".actRemoveBtn").on("click", function() {
				actRemove(this);
			});
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

$actList();

function actRemove(button) { // button = this
	console.log(button);
	let removeItem = $(button).val();
	
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/${resumeSn}/itemRemove",
		method : "post",
		data : {
			"resumeItemSn" : removeItem
		},
		dataType : "json",
		success : function(resp) {
			$actList();
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

actBtn.on("click", function() {
	actBody.append(
		$("<tr>").attr("id", "actTr").append(
			$("<td>").css("width", "50")
			, $("<td>").append($("<input>").attr("name", "actName").attr("type", "text").css("width", "140"))
			, $("<td>").append($("<input>").attr("name", "actCategory").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "actInstitution").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "actPeriod").attr("type", "text").css("width", "100"))
			, $("<td>").append($("<button>").attr("id", "actSub").addClass("btn btn-primary").html("저장"))
			, $("<td>").append($("<button>").attr("id", "actDelete").addClass("btn btn-danger").html("취소"))
		)
	)
	
	$(this).parent().hide();
	
	actFoot.append(
		$("<form>").attr("method", "post").attr("encType", "multipart/form-data").attr("id", "actForm").append(
			$("<input>").attr("name", "actName").attr("type", "text")
			, $("<input>").attr("name", "actCategory").attr("type", "text")
			, $("<input>").attr("name", "actInstitution").attr("type", "text")
			, $("<input>").attr("name", "actPeriod").attr("type", "text")
			, $("<input>").attr("name", "memId").attr("type", "text")
		)
	)
	
	let actForm = $("#actForm").on("submit", function(event) {
		event.preventDefault();
		
		let method = this.method;
		let queryString = $(this).serialize();
		
		$.ajax({
			method : method,
			data :queryString,
			dataType : "json",
			success : function(resp) {
				$actList();
				$("#actBtn").parent().show();
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	});
	
	$("#actSub").on("click", function() {
		$("form > input[name=actName]").val($("td > input[name=actName]").val());
		$("form > input[name=actCategory]").val($("td > input[name=actCategory]").val());
		$("form > input[name=actInstitution]").val($("td > input[name=actInstitution]").val());
		$("form > input[name=actPeriod]").val($("td > input[name=actPeriod]").val());
		$("form > input[name=memId]").val("${resume.memId}");
		
		actForm.submit();
	});
	
	$("#actDelete").on("click", function() {
		$("#actTr").remove();
		$("#actBtn").parent().show();
		$("#actForm").remove();
	});
	
});

let actModalBtn = $("#actModalBtn").on("click", function() {
	let checkBox = actModalBody.find("input[type=checkBox]:checked");
	let actModalDiv = $("#actModalDiv");
	let inputTags = "";
	for (let i = 0; i < checkBox.length; i++) {
		inputTags += '<input name="itemList[' + i + '].resumeSn" value="${resumeSn}" />';
		inputTags += '<input name="itemList[' + i + '].resumeItemSn" value="' + checkBox[i].value + '" />'; 
	}
	
	let makeactForm = '<form:form modelAttirbute="resume" id="actModalForm"></form:form>'
	actModalDiv.html(makeactForm);
	$("#actModalForm").html(inputTags);
	
	let actModalForm = $("#actModalForm").submit(function(event) {
		event.preventDefault();
		
		let queryString = $("#actModalForm").serialize();
		
		$.ajax({
			url : "${pageContext.request.contextPath}/resume/${resumeSn}/item",
			method : "post",
			data : queryString,
			dataType : "json",
			success : function(resp) {
				$actList();
				$("button[data-bs-dismiss=modal]").trigger("click");
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
		
		return false;
	});
	
	actModalForm.submit();
});

</script>

<!-- ==================================================교육이수================================================== -->
<div class="form-group">
	<label for="job-title">교육이수</label>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>교육명</th>
				<th>교육종류</th>
				<th>교육기관</th>
				<th>교육기간</th>
				<th>교육이수 작성날짜</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="courseBody">
		</tbody>
		<tfoot>
			<tr>
				<td colspan="7" id="courseFoot">
					<button type="button" class="btn btn-primary" id="courseBtn">새로 추가하기</button>
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#courseModal">기존 교육이수 추가하기</button>
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- 교육이수모달 -->
<div class="modal fade" id="courseModal" tabindex="-1" aria-labelledby="courseModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="courseModalLabel">기존 교육이수 추가하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
        	<thead>
        		<tr>
				<th></th>
				<th>교육명</th>
				<th>교육종류</th>
				<th>교육기관</th>
				<th>교육기간</th>
				<th>교육이수 작성날짜</th>
				<th></th>
        		</tr>
        	</thead>
        	<tbody id="courseModalBody">
        	
        	</tbody>
        </table>
      </div>
      <div id="courseModalDiv">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="">닫기</button>
        <button type="button" class="btn btn-primary" id="courseModalBtn">추가</button>
      </div>
    </div>
  </div>
</div>


<!-- 교육이수 관리 -->
<script>
let courseBtn = $("#courseBtn");
let courseBody = $("#courseBody");
let courseFoot = $("#courseFoot");

let makeCourseTrTag = function(index, course) {
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/course/" + course.courseSn)
				.html(course.courseName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(course.courseCategory)
				, $("<td>").html(course.courseInstitution)
				, $("<td>").html(course.coursePeriod)
				, $("<td>").html(course.courseInsertDate.substr(0, 10))
				, $("<td>").append($("<button>").addClass("btn btn-danger").addClass("courseRemoveBtn").val(course.courseSn).html("삭제"))
			);
}

let courseModalBody = $("#courseModalBody");

let makeCourseModalTag = function(index, course) {
	let courseIndex = "course" + (index + 1);
	let modalATag =$("<a>")
				.attr("href", "${pageContext.request.contextPath}/coursecation/" + course.courseSn)
				.html(course.courseName);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(modalATag)
				, $("<td>").html(course.courseCategory)
				, $("<td>").html(course.courseInstitution)
				, $("<td>").html(course.coursePeriod)
				, $("<td>").html(course.courseInsertDate.substr(0, 10))
				, $("<td>").append($("<input>").attr("type", "checkBox").attr("id", courseIndex).attr("name", "itemList.resumeItemSn").val(course.courseSn))
			)
}

// 공통 모듈로 뺄 수 있을 듯?
let $courseList = function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/itemList?resumeSn=${resume.resumeSn}",
		method : "get",
		dataType : "json",
		success : function(resp) {
			courseBody.empty();
			let dataList = resp.resume.courseList;
			let trTags = [];
			if (dataList) {
				$.each(dataList, function(index, course) {
					trTags.push(makeCourseTrTag(index, course));
					$("#courseForm").remove();
				});
			} else {
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "7")
							.html("교육이수 아직 등록하지 않았습니다.")
				);	
				trTags.push(tr);
			}
			courseBody.html(trTags);
			
			courseModalBody.empty();
			let modalList = resp.exclude.courseList;
			let trModalTags = [];
			if (modalList) {
				$.each(modalList, function(index, course) {
					trModalTags.push(makeCourseModalTag(index, course));
					$("#courseModalForm").remove();
				});
			} else {
				let modalTr = $("<tr>").html(
					$("<td>").attr("colspan", "7").html("이력서에 존재하지 않는 교육이수 항목이 없습니다.")
				);
				trModalTags.push(modalTr);
			}
			courseModalBody.html(trModalTags);
			$(".courseRemoveBtn").on("click", function() {
				courseRemove(this);
			});
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

$courseList();

function courseRemove(button) { // button = this
	console.log(button);
	let removeItem = $(button).val();
	
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/${resumeSn}/itemRemove",
		method : "post",
		data : {
			"resumeItemSn" : removeItem
		},
		dataType : "json",
		success : function(resp) {
			$courseList();
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

courseBtn.on("click", function() {
	courseBody.append(
		$("<tr>").attr("id", "courseTr").append(
			$("<td>").css("width", "50")
			, $("<td>").append($("<input>").attr("name", "courseName").attr("type", "text").css("width", "140"))
			, $("<td>").append($("<input>").attr("name", "courseCategory").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "courseInstitution").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "coursePeriod").attr("type", "text").css("width", "100"))
			, $("<td>").append($("<button>").attr("id", "courseSub").addClass("btn btn-primary").html("저장"))
			, $("<td>").append($("<button>").attr("id", "courseDelete").addClass("btn btn-danger").html("취소"))
		)
	)
	
	$(this).parent().hide();
	
	courseFoot.append(
		$("<form>").attr("method", "post").attr("encType", "multipart/form-data").attr("id", "courseForm").append(
			$("<input>").attr("name", "courseName").attr("type", "text")
			, $("<input>").attr("name", "courseCategory").attr("type", "text")
			, $("<input>").attr("name", "courseInstitution").attr("type", "text")
			, $("<input>").attr("name", "coursePeriod").attr("type", "text")
			, $("<input>").attr("name", "memId").attr("type", "text")
		)
	)
	
	let courseForm = $("#courseForm").on("submit", function(event) {
		event.preventDefault();
		
		let method = this.method;
		let queryString = $(this).serialize();
		
		$.ajax({
			method : method,
			data :queryString,
			dataType : "json",
			success : function(resp) {
				$courseList();
				$("#courseBtn").parent().show();
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	});
	
	$("#courseSub").on("click", function() {
		$("form > input[name=courseName]").val($("td > input[name=courseName]").val());
		$("form > input[name=courseCategory]").val($("td > input[name=courseCategory]").val());
		$("form > input[name=courseInstitution]").val($("td > input[name=courseInstitution]").val());
		$("form > input[name=coursePeriod]").val($("td > input[name=coursePeriod]").val());
		$("form > input[name=memId]").val("${resume.memId}");
		
		courseForm.submit();
	});
	
	$("#courseDelete").on("click", function() {
		$("#courseTr").remove();
		$("#courseBtn").parent().show();
		$("#courseForm").remove();
	});
	
});

let courseModalBtn = $("#courseModalBtn").on("click", function() {
	let checkBox = courseModalBody.find("input[type=checkBox]:checked");
	let courseModalDiv = $("#courseModalDiv");
	let inputTags = "";
	for (let i = 0; i < checkBox.length; i++) {
		inputTags += '<input name="itemList[' + i + '].resumeSn" value="${resumeSn}" />';
		inputTags += '<input name="itemList[' + i + '].resumeItemSn" value="' + checkBox[i].value + '" />'; 
	}
	
	let makecourseForm = '<form:form modelAttirbute="resume" id="courseModalForm"></form:form>'
	courseModalDiv.html(makecourseForm);
	$("#courseModalForm").html(inputTags);
	
	let courseModalForm = $("#courseModalForm").submit(function(event) {
		event.preventDefault();
		
		let queryString = $("#courseModalForm").serialize();
		
		$.ajax({
			url : "${pageContext.request.contextPath}/resume/${resumeSn}/item",
			method : "post",
			data : queryString,
			dataType : "json",
			success : function(resp) {
				$courseList();
				$("button[data-bs-dismiss=modal]").trigger("click");
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
		
		return false;
	});
	
	courseModalForm.submit();
});

</script>

<!-- ==================================================수상내역================================================== -->
<div class="form-group">
	<label for="job-title">수상내역</label>
	<table class="table table-bordered">
		<thead>
			<tr>
				<th></th>
				<th>수상대회명</th>
				<th>수상명</th>
				<th>수상대회종류</th>
				<th>수상날짜</th>
				<th>수상기관</th>
				<th>수상내역 작성날짜</th>
				<th></th>
			</tr>
		</thead>
		<tbody id="awardBody">
		</tbody>
		<tfoot>
			<tr>
				<td colspan="8" id="awardFoot">
					<button type="button" class="btn btn-primary" id="awardBtn">새로 추가하기</button>
					<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#awardModal">기존 수상내역 추가하기</button>
				</td>
			</tr>
		</tfoot>
	</table>
</div>

<!-- 학력모달 -->
<div class="modal fade" id="awardModal" tabindex="-1" aria-labelledby="awardModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="awardModalLabel">기존 수상내역 추가하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <table class="table table-bordered">
        	<thead>
        		<tr>
				<th></th>
				<th>수상대회명</th>
				<th>수상명</th>
				<th>수상대회종류</th>
				<th>수상날짜</th>
				<th>수상기관</th>
				<th>수상내역 작성날짜</th>
				<th></th>
        		</tr>
        	</thead>
        	<tbody id="awardModalBody">
        	
        	</tbody>
        </table>
      </div>
      <div id="awardModalDiv">
      
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal" id="">닫기</button>
        <button type="button" class="btn btn-primary" id="awardModalBtn">추가</button>
      </div>
    </div>
  </div>
</div>


<!-- 학력 관리 -->
<script>
let awardBtn = $("#awardBtn");
let awardBody = $("#awardBody");
let awardFoot = $("#awardFoot");

let makeAwardTrTag = function(index, award) {
	let aTag = $("<a>")
				.attr("href", "${pageContext.request.contextPath}/award/" + award.awardSn)
				.html(award.awardCompetition);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(aTag)
				, $("<td>").html(award.awardName)
				, $("<td>").html(award.awardCategory)
				, $("<td>").html(award.awardDate)
				, $("<td>").html(award.awardInstitution)
				, $("<td>").html(award.awardInsertDate.substr(0, 10))
				, $("<td>").append($("<button>").addClass("btn btn-danger").addClass("awardRemoveBtn").val(award.awardSn).html("삭제"))
			);
}

let awardModalBody = $("#awardModalBody");

let makeAwardModalTag = function(index, award) {
	let awardIndex = "award" + (index + 1);
	let modalATag =$("<a>")
				.attr("href", "${pageContext.request.contextPath}/awardcation/" + award.awardSn)
				.html(award.awardCompetition);
	return $("<tr>").append(
				$("<td>").html(index + 1)
				, $("<td>").html(modalATag)
				, $("<td>").html(award.awardName)
				, $("<td>").html(award.awardCategory)
				, $("<td>").html(award.awardDate)
				, $("<td>").html(award.awardInstitution)
				, $("<td>").html(award.awardInsertDate.substr(0, 10))
				, $("<td>").append($("<input>").attr("type", "checkBox").attr("id", awardIndex).attr("name", "itemList.resumeItemSn").val(award.awardSn))
			)
}

// 공통 모듈로 뺄 수 있을 듯?
let $awardList = function() {
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/itemList?resumeSn=${resume.resumeSn}",
		method : "get",
		dataType : "json",
		success : function(resp) {
			awardBody.empty();
			let dataList = resp.resume.awardList;
			let trTags = [];
			if (dataList) {
				$.each(dataList, function(index, award) {
					trTags.push(makeAwardTrTag(index, award));
					$("#awardForm").remove();
				});
			} else {
				let tr = $("<tr>").html(
					$("<td>").attr("colspan", "7")
							.html("수상내역 아직 등록하지 않았습니다.")
				);	
				trTags.push(tr);
			}
			awardBody.html(trTags);
			
			awardModalBody.empty();
			let modalList = resp.exclude.awardList;
			let trModalTags = [];
			if (modalList) {
				$.each(modalList, function(index, award) {
					trModalTags.push(makeAwardModalTag(index, award));
					$("#awardModalForm").remove();
				});
			} else {
				let modalTr = $("<tr>").html(
					$("<td>").attr("colspan", "7").html("이력서에 존재하지 않는 수상내역 항목이 없습니다.")
				);
				trModalTags.push(modalTr);
			}
			awardModalBody.html(trModalTags);
			$(".awardRemoveBtn").on("click", function() {
				awardRemove(this);
			});
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

$awardList();

function awardRemove(button) { // button = this
	console.log(button);
	let removeItem = $(button).val();
	
	$.ajax({
		url : "${pageContext.request.contextPath}/resume/${resumeSn}/itemRemove",
		method : "post",
		data : {
			"resumeItemSn" : removeItem
		},
		dataType : "json",
		success : function(resp) {
			$awardList();
		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}
	});
}

awardBtn.on("click", function() {
	awardBody.append(
		$("<tr>").attr("id", "awardTr").append(
			$("<td>").css("width", "50")
			, $("<td>").append($("<input>").attr("name", "awardCompetition").attr("type", "text").css("width", "140"))
			, $("<td>").append($("<input>").attr("name", "awardName").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "awardCategory").attr("type", "text").css("width", "120"))
			, $("<td>").append($("<input>").attr("name", "awardDate").attr("type", "date").css("width", "100"))
			, $("<td>").append($("<input>").attr("name", "awardInstitution").attr("type", "text").css("width", "100"))
			, $("<td>").append($("<button>").attr("id", "awardSub").addClass("btn btn-primary").html("저장"))
			, $("<td>").append($("<button>").attr("id", "awardDelete").addClass("btn btn-danger").html("취소"))
		)
	)
	
	$(this).parent().hide();
	
	awardFoot.append(
		$("<form>").attr("method", "post").attr("encType", "multipart/form-data").attr("id", "awardForm").append(
			$("<input>").attr("name", "awardCompetition").attr("type", "text")
			, $("<input>").attr("name", "awardName").attr("type", "text")
			, $("<input>").attr("name", "awardCategory").attr("type", "text")
			, $("<input>").attr("name", "awardDate").attr("type", "date")
			, $("<input>").attr("name", "awardInstitution").attr("type", "text")
			, $("<input>").attr("name", "memId").attr("type", "text")
		)
	)
	
	let awardForm = $("#awardForm").on("submit", function(event) {
		event.preventDefault();
		
		let method = this.method;
		let queryString = $(this).serialize();
		
		$.ajax({
			method : method,
			data :queryString,
			dataType : "json",
			success : function(resp) {
				$awardList();
				$("#awardBtn").parent().show();
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
	});
	
	$("#awardSub").on("click", function() {
		$("form > input[name=awardCompetition]").val($("td > input[name=awardCompetition]").val());
		$("form > input[name=awardName]").val($("td > input[name=awardName]").val());
		$("form > input[name=awardCategory]").val($("td > input[name=awardCategory]").val());
		$("form > input[name=awardDate]").val($("td > input[name=awardDate]").val());
		$("form > input[name=awardInstitution]").val($("td > input[name=awardInstitution]").val());
		$("form > input[name=memId]").val("${resume.memId}");
		
		awardForm.submit();
	});
	
	$("#awardDelete").on("click", function() {
		$("#awardTr").remove();
		$("#awardBtn").parent().show();
		$("#awardForm").remove();
	});
	
});

let awardModalBtn = $("#awardModalBtn").on("click", function() {
	let checkBox = awardModalBody.find("input[type=checkBox]:checked");
	let awardModalDiv = $("#awardModalDiv");
	let inputTags = "";
	for (let i = 0; i < checkBox.length; i++) {
		inputTags += '<input name="itemList[' + i + '].resumeSn" value="${resumeSn}" />';
		inputTags += '<input name="itemList[' + i + '].resumeItemSn" value="' + checkBox[i].value + '" />'; 
	}
	
	let makeawardForm = '<form:form modelAttirbute="resume" id="awardModalForm"></form:form>'
	awardModalDiv.html(makeawardForm);
	$("#awardModalForm").html(inputTags);
	
	let awardModalForm = $("#awardModalForm").submit(function(event) {
		event.preventDefault();
		
		let queryString = $("#awardModalForm").serialize();
		
		$.ajax({
			url : "${pageContext.request.contextPath}/resume/${resumeSn}/item",
			method : "post",
			data : queryString,
			dataType : "json",
			success : function(resp) {
				$awardList();
				$("button[data-bs-dismiss=modal]").trigger("click");
			},
			error : function(jqXHR, status, error) {
				console.log(jqXHR);
				console.log(status);
				console.log(error);
			}
		});
		
		return false;
	});
	
	awardModalForm.submit(); 
});

</script>

<a href="${pageContext.request.contextPath}/resume"><button class="btn btn-primary">목록</button></a>
<a href="${pageContext.request.contextPath}/resume/edit?resumeSn=${resume.resumeSn}"><button class="btn btn-secondary">수정하기</button></a>
<%-- <form:form modelAttribute="resume" action="${pageContext.request.contextPath}/resume/${resume.resumeSn }" method="delete" style="display: inline-block;"> --%>
<form:form modelAttribute="resume" action="${pageContext.request.contextPath}/resume/delete" method="post" style="display: inline-block;">
	<input name="resumeSn" value="${resume.resumeSn}" hidden/>
	<button type="submit" class="btn btn-danger">삭제하기</button>
</form:form>