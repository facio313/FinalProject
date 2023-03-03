<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/layout.css">

<style>
.pf {
 	font-size: 24px; 
}
.radiuss{
	border : 1px solid #eaedf4;
	border-radius: 12px;
	padding: 80px 99px 100px 99px;
}
table {
  	width: 100%;
  	height: 600px;
 	border-top: 1px solid #eaedf4;
  	border-collapse: collapse;
}
th{
	background: #f7f7f7;
	border-bottom: 1px solid #eaedf4;
  	padding: 10px;
  	width: 155px;
} 
td {
  	border-bottom: 1px solid #eaedf4;
  	padding: 20px;
}
</style>

<section class="site-section">
	<div class="container" >
		<div class="radiuss">
			<div style="display: flex; letter-spacing: -2px; line-height: 24px; align-items: center;">
				<span style="font-size: 40px;">전문가 상세</span>
				<input type="hidden" name="memId" value="${expert.memId }"/>
				<input type="hidden" id="memEmail" value="${expert.seekerVO.memEmail }"/>
			</div>
			<hr style="background-color: #5c667b; height: 2px;">
			<table>
			  	<tr>
				    <th scope="row">아이디</th>
				    <td>${expert.memId }</td>
				    <th scope="row">신청일자</th>
				    <td>${fn:substring(expert.expertVO.expertAppliDate,0,10) }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">성명</th>
				    <td>${expert.memName }</td>
				    <th scope="row">성별</th>
				    <td>${expert.seekerVO.memGender }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">생년월일</th>
				    <td>${expert.seekerVO.memBirth }</td>
				    <th scope="row">이메일</th>
				    <td>${expert.seekerVO.memEmail }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">연락처</th>
				    <td>${expert.seekerVO.memTel }</td>
				    <th scope="row">직업</th>
				    <td>${expert.expertVO.expertField }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">분야</th>
				    <td>${expert.expertVO.exfieldName }</td>
				    <th scope="row">직종</th>
				    <td>${expert.expertVO.exjobName }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">사업장 우편번호</th>
				    <td>${expert.expertVO.expertZip }</td>
				    <th scope="row">태그</th>
				    <td>${expert.expertVO.expertTag }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">사업장 기본주소</th>
				    <td colspan="3">${expert.expertVO.expertAddr }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">사업장 상세주소</th>
				    <td colspan="3">${expert.expertVO.expertAddr2 }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">고객센터 전화번호</th>
				    <td>${expert.expertVO.expertTel }</td>
				    <th scope="row">고객센터 이메일</th>
				    <td>${expert.expertVO.expertEmail }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">은행</th>
				    <td>${expert.expertVO.expertBank }</td>
				    <th scope="row">계좌번호</th>
				    <td>${expert.expertVO.expertAccount }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">가입경로</th>
				    <td colspan="3">${expert.expertVO.expertJoinpath }</td>
			  	</tr>
			  	<tr>
				    <th scope="row">한줄소개</th>
				    <td colspan="3">${expert.expertVO.expertIntroduction }</td>
			  	</tr>
			</table>
			<div class="row align-items-center mb-5">
				<div class="col-lg-4 ml-auto">
					<div class="row">
						<div class="col-4" style="padding: 10px 3px 10px 3px;">
							<input type="button" 
								onclick="location.href='<c:url value="/systemManagement/memberList/expertList"/>'" 
								class="btn btn-block btn-primary btn-md" 
								value="목록으로" />
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>



	
	
	












