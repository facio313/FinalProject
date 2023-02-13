<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 2.      허근주      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<section class="site-section" id="next-section">
	<div class="container">
		<div class="row mb-5">
			<div class="col-lg-12">
				<span class="text-primary d-block mb-5"><span
					class="icon-magnet display-1"></span></span>
				<h2 class="mb-4" style="margin-left: 45%;">전문가 신청</h2>
				<div class="row mb-5">
					<div class="col-lg-12">
						<form:form modelAttribute="expert"
							class="p-4 p-md-5 border rounded" method="post"
							enctype="multipart/form-data">
							<h3 class="text-black mb-5 border-bottom pb-2">전문가 정보</h3>
							<div class="form-group">
								<label for="company-website-tw d-block">보유자격증</label> <br>
								<label class="btn btn-primary btn-md btn-file"> 자격증선택
								<input type="file" hidden name="attachFiles" required="required">
								</label>
							</div>
							<div class="form-group">
								<label for="job-title">한줄소개</label>
								<form:input path="expertIntroduction" type="text"
									cssClass="form-control" />
								<form:errors path="expertIntroduction" element="span"
									cssClass="text-danger" />
							</div>
							<div class="form-group">
								<label for="job-title">가입경로</label>
								<form:input path="expertJoinpath" type="text"
									cssClass="form-control" />
								<form:errors path="expertJoinpath" element="span"
									cssClass="text-danger" />
							</div>
							<div class="form-group">
								<label for="job-title">직업</label>
								<form:input path="expertField" type="text"
									cssClass="form-control" />
								<form:errors path="expertField" element="span"
									cssClass="text-danger" />
							</div>
							<div class="form-group">
								<label for="job-title">태그</label>
								<form:input path="expertTag" type="text" cssClass="form-control" />
								<form:errors path="expertTag" element="span"
									cssClass="text-danger" />
							</div>
							<br>
							<div class="form-group">
								<div class="form-group">
								<input type="button" class="form-control"
									onclick="sample3_execDaumPostcode()" value="우편번호 찾기">
									<label for="job-title">사업장 우편번호</label>
									<form:input path="expertZip" type="text"
										cssClass="form-control" id="sample3_postcode"
										placeholder="우편번호" />
									<form:errors path="expertZip" element="span"
										cssClass="text-danger" />
								</div>
								<div class="form-group">
									<label for="job-title">사업장주소</label>
									<form:input path="expertAddr" type="text"
										cssClass="form-control" placeholder="사업장주소" />
									<form:errors path="expertAddr" element="span"
										cssClass="text-danger" />
								</div>
								<div class="form-group">
									<label for="job-title">사업장 상세주소</label>
									<form:input path="expertAddr2" type="text"
										cssClass="form-control" placeholder="상세주소" />
									<form:errors path="expertAddr2" element="span"
										cssClass="text-danger" />
								</div>
								<div id="wrap"
									style="display: none; border: 1px solid; width: 500px; height: 300px; margin: 5px 0; position: relative">
									<img src="//t1.daumcdn.net/postcode/resource/images/close.png"
										id="btnFoldWrap"
										style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
										onclick="foldDaumPostcode()" alt="접기 버튼">
								</div>
							</div>
							<div class="form-group">
								<label for="job-title">고객센터 이메일</label>
								<form:input path="expertEmail" type="text"
									cssClass="form-control" />
								<form:errors path="expertEmail" element="span"
									cssClass="text-danger" />
							</div>
							<div class="form-group">
								<label for="job-title">고객센터 전화번호</label>
								<form:input path="expertTel" type="text" cssClass="form-control" />
								<form:errors path="expertTel" element="span"
									cssClass="text-danger" />
							</div>
							<div class="form-group">
								<label for="job-title">은행</label>
								<form:input path="expertBank" type="text"
									cssClass="form-control" />
								<form:errors path="expertBank" element="span"
									cssClass="text-danger" />
							</div>
							<div class="form-group">
								<label for="job-title">계좌번호</label>
								<form:input path="expertAccount" type="text"
									cssClass="form-control" />
								<form:errors path="expertAccount" element="span"
									cssClass="text-danger" />
							</div>
							<div class="form-group">
								<label for="job-title">예금주</label>
								<form:input path="expertHolder" type="text"
									cssClass="form-control" />
								<form:errors path="expertHolder" element="span"
									cssClass="text-danger" />
							</div>
							 <div class="form-group">
								<form:select path="exfieldId" onchange="changeExfield()" id="exfield">
									<option value>분야코드</option>
									<c:forEach items="${exfield }" var ="exfield">
										<form:option value="${exfield.exfieldId }" label="${exfield.exfieldName }"></form:option>
									</c:forEach>
								</form:select>
								<form:errors path="exfieldId" element="span"
									cssClass="text-danger" />
							</div> 
							
							<div class="form-group">
								<form:select path="exjobId" id="exjob">
									<option value>직업코드</option>
									<c:forEach items="${exjob }" var ="exjob">
										<form:option value="${exjob.exjobId }" label="${exjob.exjobName }"></form:option>
									</c:forEach>
								</form:select>
								<form:errors path="exjobId" element="span"
									cssClass="text-danger" />
							</div> 
							<%-- <div class="form-group">
								<label for="job-title">직업코드</label>
								<form:input path="exjobId" type="text" cssClass="form-control" />
								<form:errors path="exjobId" element="span"
									cssClass="text-danger" />
							</div> --%>
						<div class="row align-items-center mb-5">
							<div class="col-lg-4 ml-auto">
								<div >
								<a href="#" class="btn btn-block btn-light btn-md"
									style="border: 1px solid;">이전</a>
			                	<input type="submit" class="btn btn-block btn-primary btn-md" value="등록">
								</div>
			             	</div>
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
		</div>
	</div>
</section>
<script type="text/javascript">
function changeExfield(){
	var exfieldSelect = $("#exfield option:selected").val();
	var exjobSelect = $("#exjob")
	exjobSelect.find('option').each(function(){
		$(this).remove();
	})
	exjobSelect.append("<option>직업코드</option>");
	console.log(exjobSelect)
	var data = {
			"exfieldId" : exfieldSelect 
	}
	console.log(data)
	$.ajax({
		url:'/INUProject/expert/exfield',
		method: 'post',
		data : JSON.stringify(data),
		contentType: 'application/json; charset=UTF-8',
		dataType : 'json',
		success : function(resp){
// 			console.log(resp[0].exfieldId)
			console.log(resp)
			for(i=0; i<resp.length; i++){
				console.log(resp[i].exfieldId)
				console.log(resp[i].exjobName)
				exjobSelect.append("<option value="+resp[i].exjobId+" label="+resp[i].exjobName+"></option>")
			}
			
		},
      error : function(jqXHR, status, error) {
          console.log(jqXHR);
          console.log(status);
          console.log(error);
       }

		
	})
	
}
</script>