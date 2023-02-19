<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/help.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/components.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/layout.css">

<style>
	#checkDisp {
		border: 1px solid red;
	}
	#radioDisp {
		border: 1px solid green;
	}
	#disp {
		border: 1px solid blue;
	}
</style>

<div id="checkDisp">
	<h1>추가할 채용과정을 선택하세요</h1>
	<input type="checkbox" class="btn-check" name="process" value="PRC001" id="check1" checked disabled>
	<label class="btn btn-primary" for="check1">입사지원서</label>
	
	<input type="checkbox" class="btn-check" name="process" value="PRC002" id="check2">
	<label class="btn btn-primary" for="check2">자기소개서</label>
	
	<input type="checkbox" class="btn-check" name="process" value="PRC003" id="check3">
	<label class="btn btn-primary" for="check3">필기시험</label>
	
	<input type="checkbox" class="btn-check" name="process" value="PRC004" id="check4">
	<label class="btn btn-primary" for="check4">역량평가</label>
	
	<input type="checkbox" class="btn-check" name="process" value="PRC005" id="check5">
	<label class="btn btn-primary" for="check5">토론면접</label>
	
	<input type="checkbox" class="btn-check" name="process" value="PRC006" id="check6">
	<label class="btn btn-primary" for="check6">실무면접</label>
	
	<input type="checkbox" class="btn-check" name="process" value="PRC007" id="check7">
	<label class="btn btn-primary" for="check7">인턴십</label>
	
	<input type="checkbox" class="btn-check" name="process" value="PRC008" id="check8" checked disabled>
	<label class="btn btn-primary" for="check8">임원면접</label>
</div>

<div id="radioDisp">
	<h1>채용과정 내용</h1>
	<input type="radio" class="btn-check" name="options" value="PRC001" id="option1" autocomplete="off" checked>
	<label class="btn btn-success" for="option1" data-color="btn-success">입사지원서</label>
	
	<input type="radio" class="btn-check" name="options" value="PRC002" id="option2" autocomplete="off" style="display: none;">
	<label class="btn " for="option2" style="display: none;">자기소개서</label>
	
	<input type="radio" class="btn-check" name="options" value="PRC003" id="option3" autocomplete="off" style="display: none;">
	<label class="btn " for="option3" style="display: none;">필기시험</label>
	
	<input type="radio" class="btn-check" name="options" value="PRC004" id="option4" autocomplete="off" style="display: none;">
	<label class="btn " for="option4" style="display: none;">역량평가</label>
	
	<input type="radio" class="btn-check" name="options" value="PRC005" id="option5" autocomplete="off" style="display: none;">
	<label class="btn " for="option5" style="display: none;">토론면접</label>
	
	<input type="radio" class="btn-check" name="options" value="PRC006" id="option6" autocomplete="off" style="display: none;">
	<label class="btn " for="option6" style="display: none;">실무면접</label>
	
	<input type="radio" class="btn-check" name="options" value="PRC007" id="option7" autocomplete="off" style="display: none;">
	<label class="btn " for="option7" style="display: none;">인턴십</label>
	
	<input type="radio" class="btn-check" name="options" value="PRC008" id="option8" autocomplete="off">
	<label class="btn " for="option8" >임원면접</label>
</div>
<form:form modelAttribute="process" action="${pageContext.request.contextPath}/process" method="post" enctype="multipart/form-data">
<form:hidden path="processList[0].daNo" cssClass="form-control" value="${daNo}"/>
<form:hidden path="processList[1].daNo" cssClass="form-control" value="${daNo}"/>
<form:hidden path="processList[2].daNo" cssClass="form-control" value="${daNo}"/>
<form:hidden path="processList[3].daNo" cssClass="form-control" value="${daNo}"/>
<form:hidden path="processList[4].daNo" cssClass="form-control" value="${daNo}"/>
<form:hidden path="processList[5].daNo" cssClass="form-control" value="${daNo}"/>
<form:hidden path="processList[6].daNo" cssClass="form-control" value="${daNo}"/>
<form:hidden path="processList[7].daNo" cssClass="form-control" value="${daNo}"/>
<div id="disp">
	<div id="disp1">
		<div class="form-group">
			<label for="job-title">입사지원서</label>
			<form:input path="processList[0].processCodeId" type="text" cssClass="form-control" value="PRC01" readonly="true"/>
			<form:errors path="processList[0].processCodeId" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 세부 공고의 각 과정 순번</label>
			<form:input path="processList[0].processSn" type="number" cssClass="form-control" />
			<form:errors path="processList[0].processSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">시작날짜</label>
			<form:input path="processList[0].processStartDate" type="date" cssClass="form-control" />
			<form:errors path="processList[0].processStartDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">종료날짜</label>
			<form:input path="processList[0].processEndDate" type="date" cssClass="form-control" />
			<form:errors path="processList[0].processEndDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">온라인, 대면 등</label>
			<form:input path="processList[0].processWay" type="text" cssClass="form-control" />
			<form:errors path="processList[0].processWay" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">기준만점</label>
			<form:input path="processList[0].processScore" type="number" cssClass="form-control" />
			<form:errors path="processList[0].processScore" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">제약사항 </label>
			<form:input path="processList[0].processLimit" type="text" cssClass="form-control" />
			<form:errors path="processList[0].processLimit" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</label>
			<form:input path="processList[0].tblId" type="text" cssClass="form-control" />
			<form:errors path="processList[0].tblId" element="span" cssClass="text-danger" />
		</div>
	</div>
	<div id="disp2" style="display: none;">
		<div class="form-group">
			<label for="job-title">자기소개서</label>
			<form:input path="processList[1].processCodeId" type="text" cssClass="form-control" value="PRC02" readonly="true"/>
			<form:errors path="processList[1].processCodeId" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 세부 공고의 각 과정 순번</label>
			<form:input path="processList[1].processSn" type="number" cssClass="form-control" />
			<form:errors path="processList[1].processSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">시작날짜</label>
			<form:input path="processList[1].processStartDate" type="date" cssClass="form-control" />
			<form:errors path="processList[1].processStartDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">종료날짜</label>
			<form:input path="processList[1].processEndDate" type="date" cssClass="form-control" />
			<form:errors path="processList[1].processEndDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">온라인, 대면 등</label>
			<form:input path="processList[1].processWay" type="text" cssClass="form-control" />
			<form:errors path="processList[1].processWay" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">기준만점</label>
			<form:input path="processList[1].processScore" type="number" cssClass="form-control" />
			<form:errors path="processList[1].processScore" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">제약사항 </label>
			<form:input path="processList[1].processLimit" type="text" cssClass="form-control" />
			<form:errors path="processList[1].processLimit" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</label>
			<form:input path="processList[1].tblId" type="text" cssClass="form-control" />
			<form:errors path="processList[1].tblId" element="span" cssClass="text-danger" />
		</div>
	</div>
	<div id="disp3" style="display: none;">
		<div class="form-group">
			<label for="job-title">필기시험</label>
			<form:input path="processList[2].processCodeId" type="text" cssClass="form-control" value="PRC03" readonly="true"/>
			<form:errors path="processList[2].processCodeId" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 세부 공고의 각 과정 순번</label>
			<form:input path="processList[2].processSn" type="number" cssClass="form-control" />
			<form:errors path="processList[2].processSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">시작날짜</label>
			<form:input path="processList[2].processStartDate" type="date" cssClass="form-control" />
			<form:errors path="processList[2].processStartDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">종료날짜</label>
			<form:input path="processList[2].processEndDate" type="date" cssClass="form-control" />
			<form:errors path="processList[2].processEndDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">온라인, 대면 등</label>
			<form:input path="processList[2].processWay" type="text" cssClass="form-control" />
			<form:errors path="processList[2].processWay" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">기준만점</label>
			<form:input path="processList[2].processScore" type="number" cssClass="form-control" />
			<form:errors path="processList[2].processScore" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">제약사항 </label>
			<form:input path="processList[2].processLimit" type="text" cssClass="form-control" />
			<form:errors path="processList[2].processLimit" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</label>
			<form:input path="processList[2].tblId" type="text" cssClass="form-control" />
			<form:errors path="processList[2].tblId" element="span" cssClass="text-danger" />
		</div>
	</div>
	<div id="disp4" style="display: none;">
		<div class="form-group">
			<label for="job-title">역량평가</label>
			<form:input path="processList[3].processCodeId" type="text" cssClass="form-control" value="PRC04" readonly="true"/>
			<form:errors path="processList[3].processCodeId" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 세부 공고의 각 과정 순번</label>
			<form:input path="processList[3].processSn" type="number" cssClass="form-control" />
			<form:errors path="processList[3].processSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">시작날짜</label>
			<form:input path="processList[3].processStartDate" type="date" cssClass="form-control" />
			<form:errors path="processList[3].processStartDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">종료날짜</label>
			<form:input path="processList[3].processEndDate" type="date" cssClass="form-control" />
			<form:errors path="processList[3].processEndDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">온라인, 대면 등</label>
			<form:input path="processList[3].processWay" type="text" cssClass="form-control" />
			<form:errors path="processList[3].processWay" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">기준만점</label>
			<form:input path="processList[3].processScore" type="number" cssClass="form-control" />
			<form:errors path="processList[3].processScore" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">제약사항 </label>
			<form:input path="processList[3].processLimit" type="text" cssClass="form-control" />
			<form:errors path="processList[3].processLimit" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</label>
			<form:input path="processList[3].tblId" type="text" cssClass="form-control" />
			<form:errors path="processList[3].tblId" element="span" cssClass="text-danger" />
		</div>
	</div>
	<div id="disp5" style="display: none;">
		<div class="form-group">
			<label for="job-title">토론면접</label>
			<form:input path="processList[4].processCodeId" type="text" cssClass="form-control" value="PRC05" readonly="true"/>
			<form:errors path="processList[4].processCodeId" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 세부 공고의 각 과정 순번</label>
			<form:input path="processList[4].processSn" type="number" cssClass="form-control" />
			<form:errors path="processList[4].processSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">시작날짜</label>
			<form:input path="processList[4].processStartDate" type="date" cssClass="form-control" />
			<form:errors path="processList[4].processStartDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">종료날짜</label>
			<form:input path="processList[4].processEndDate" type="date" cssClass="form-control" />
			<form:errors path="processList[4].processEndDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">온라인, 대면 등</label>
			<form:input path="processList[4].processWay" type="text" cssClass="form-control" />
			<form:errors path="processList[4].processWay" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">기준만점</label>
			<form:input path="processList[4].processScore" type="number" cssClass="form-control" />
			<form:errors path="processList[4].processScore" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">제약사항 </label>
			<form:input path="processList[4].processLimit" type="text" cssClass="form-control" />
			<form:errors path="processList[4].processLimit" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</label>
			<form:input path="processList[4].tblId" type="text" cssClass="form-control" />
			<form:errors path="processList[4].tblId" element="span" cssClass="text-danger" />
		</div>
	</div>
	<div id="disp6" style="display: none;">
		<div class="form-group">
			<label for="job-title">실무면접</label>
			<form:input path="processList[5].processCodeId" type="text" cssClass="form-control" value="PRC06" readonly="true"/>
			<form:errors path="processList[5].processCodeId" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 세부 공고의 각 과정 순번</label>
			<form:input path="processList[5].processSn" type="number" cssClass="form-control" />
			<form:errors path="processList[5].processSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">시작날짜</label>
			<form:input path="processList[5].processStartDate" type="date" cssClass="form-control" />
			<form:errors path="processList[5].processStartDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">종료날짜</label>
			<form:input path="processList[5].processEndDate" type="date" cssClass="form-control" />
			<form:errors path="processList[5].processEndDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">온라인, 대면 등</label>
			<form:input path="processList[5].processWay" type="text" cssClass="form-control" />
			<form:errors path="processList[5].processWay" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">기준만점</label>
			<form:input path="processList[5].processScore" type="number" cssClass="form-control" />
			<form:errors path="processList[5].processScore" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">제약사항 </label>
			<form:input path="processList[5].processLimit" type="text" cssClass="form-control" />
			<form:errors path="processList[5].processLimit" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</label>
			<form:input path="processList[5].tblId" type="text" cssClass="form-control" />
			<form:errors path="processList[5].tblId" element="span" cssClass="text-danger" />
		</div>
	</div>
	<div id="disp7" style="display: none;">
		<div class="form-group">
			<label for="job-title">인턴십</label>
			<form:input path="processList[6].processCodeId" type="text" cssClass="form-control" value="PRC07" readonly="true"/>
			<form:errors path="processList[6].processCodeId" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 세부 공고의 각 과정 순번</label>
			<form:input path="processList[6].processSn" type="number" cssClass="form-control" />
			<form:errors path="processList[6].processSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">시작날짜</label>
			<form:input path="processList[6].processStartDate" type="date" cssClass="form-control" />
			<form:errors path="processList[6].processStartDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">종료날짜</label>
			<form:input path="processList[6].processEndDate" type="date" cssClass="form-control" />
			<form:errors path="processList[6].processEndDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">온라인, 대면 등</label>
			<form:input path="processList[6].processWay" type="text" cssClass="form-control" />
			<form:errors path="processList[6].processWay" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">기준만점</label>
			<form:input path="processList[6].processScore" type="number" cssClass="form-control" />
			<form:errors path="processList[6].processScore" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">제약사항 </label>
			<form:input path="processList[6].processLimit" type="text" cssClass="form-control" />
			<form:errors path="processList[6].processLimit" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</label>
			<form:input path="processList[6].tblId" type="text" cssClass="form-control" />
			<form:errors path="processList[6].tblId" element="span" cssClass="text-danger" />
		</div>
	</div>
	<div id="disp8" style="display: none;">
		<div class="form-group">
			<label for="job-title">임원면접</label>
			<form:input path="processList[7].processCodeId" type="text" cssClass="form-control" value="PRC08" readonly="true"/>
			<form:errors path="processList[7].processCodeId" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 세부 공고의 각 과정 순번</label>
			<form:input path="processList[7].processSn" type="number" cssClass="form-control" />
			<form:errors path="processList[7].processSn" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">시작날짜</label>
			<form:input path="processList[7].processStartDate" type="date" cssClass="form-control" />
			<form:errors path="processList[7].processStartDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">종료날짜</label>
			<form:input path="processList[7].processEndDate" type="date" cssClass="form-control" />
			<form:errors path="processList[7].processEndDate" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">온라인, 대면 등</label>
			<form:input path="processList[7].processWay" type="text" cssClass="form-control" />
			<form:errors path="processList[7].processWay" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">기준만점</label>
			<form:input path="processList[7].processScore" type="number" cssClass="form-control" />
			<form:errors path="processList[7].processScore" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">제약사항 </label>
			<form:input path="processList[7].processLimit" type="text" cssClass="form-control" />
			<form:errors path="processList[7].processLimit" element="span" cssClass="text-danger" />
		</div>
		<div class="form-group">
			<label for="job-title">각 과정별 점수 입증 관련 문서 업로드하는 첨부파일 아이디</label>
			<form:input path="processList[7].tblId" type="text" cssClass="form-control" />
			<form:errors path="processList[7].tblId" element="span" cssClass="text-danger" />
		</div>
	</div>
</div>
<div class="form-group">
	<input type="submit" value="저장 후 세부 항목 작성하러 가기" /> 
	<input type="reset" value="취소" />		
</div>
</form:form>
<script>
for (let i = 2; i < 8; i++){
	$("#check"+i).on("click", function(){
		if (!$(this).prop("checked")){
			$("#option"+i).hide();
			$("[for=option"+i+"]").hide();
		} else {
			$("#option"+i).show();
			$("[for=option"+i+"]").show();
		}
	});
}

let $btnColor = $("label[for=option1]").data("color");

$("input[type=radio]").on("click", function() {
	let parent = $(this).parent();
	let id = parent.find(":checked").attr("id");
	$("label[for="+id+"]").addClass($btnColor);
	
	let uid = parent.children("input").not(":checked");
	for (let i = 0; i < uid.length; i++) {
		$("label[for="+uid[i].id+"]").removeClass($btnColor);
	}
	
	let index = id.substring(6);
	$("#disp"+index).show();
	
	let udisp = $("#disp").children().not("#disp"+index);
	for (let i = 0; i < udisp.length; i++) {
		udisp[i].style.display = "none";
	}
});
</script>
