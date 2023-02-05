<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    

<div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    

    <section class="site-section">
      <div class="container">

        <div class="row align-items-center mb-5">
          <div class="col-lg-8 mb-4 mb-lg-0">
            <div class="d-flex align-items-center">
              <div>
                <h2>기업회원</h2>
              </div>
            </div>
          </div>
        </div>
        <div class="row mb-5">
          <div class="col-lg-12">
            <form class="p-4 p-md-5 border rounded" method="post" enctype="multipart/form-data">
              <h3 class="text-black mb-5 border-bottom pb-2">인사 담당자 정보</h3>
              <div class="form-group">
                <label for="company-website-tw d-block">프로필사진</label> <br>
                <label class="btn btn-primary btn-md btn-file">
                  사진선택<input type="file" hidden>
                </label>
              </div>
              <div class="form-group">
                <label for="job-title">아이디</label>
                <input type="text" class="form-control" id="job-title" name="memId" placeholder="">
              </div>
              <div class="form-group">
                <label for="job-title">비밀번호</label>
                <input type="text" class="form-control" id="job-title" name="memPass" placeholder="">
              </div>
              <div class="form-group">
                <label for="job-title">이름</label>
                <input type="text" class="form-control" id="job-title" name="memName" placeholder="">
                <input type="hidden" class="form-control" id="job-title" name="memAuthCd" value="" placeholder="">
              </div>
              <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" placeholder="">
              </div>
              <div class="form-group">
                <label for="job-title">전화번호</label>
                <input type="tel" class="form-control" id="job-title" placeholder="">
              </div>
              <br>
              <h3 class="text-black my-1 border-bottom pb-2" style="margin-bottom: 0ch;">회사정보</h3>
                 <div class="form-group" >
                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                 회사검색 모달
                </button>
                  <button
                    type="button"
                    class="btn btn-dark"
                    id="insertComBtn">
                    회사등록
                   </button>
                  </div>
               <div class="form-group">
                <label for="job-title">회사명</label>
                <input type="text" class="form-control" id="companyName" placeholder="" name="cmpName">
              </div>
                <div class="col-lg-12" id="companyInsert">
                    <div class="form-group">
                      <label for="company-website-tw d-block">프로필사진</label> <br>
                      <label class="btn btn-primary btn-md btn-file">
                        사진선택<input type="file" hidden>
                      </label>
                    </div>
                    <div class="form-group">
                      <label for="job-title">아이디</label>
                      <input type="text" class="form-control" id="job-title" placeholder="">
                    </div>
                    <div class="form-group">
                      <label for="job-title">비밀번호</label>
                      <input type="text" class="form-control" id="job-title" placeholder="">
                    </div>
                    <div class="form-group">
                      <label for="job-title">이름</label>
                      <input type="text" class="form-control" id="job-title" placeholder="">
                    </div>
                    <div class="form-group">
                      <label for="job-title">닉네임</label>
                      <input type="text" class="form-control" id="job-title" placeholder="">
                    </div><div class="form-group">
                      <label for="job-title">생년월일</label>
                      <input type="date" class="form-control" id="job-title" placeholder="">
                    </div><div class="form-group">
                      <label for="job-title">성별</label>
                      <input type="text" class="form-control" id="job-title" placeholder="">
                    </div>
                    <div class="form-group">
                      <label for="job-title"></label>
                      <input type="text" class="form-control"id="sample3_postcode" placeholder="우편번호">
                      <input type="button" class="form-control"onclick="sample3_execDaumPostcode()" value="우편번호 찾기"><br>
                      <input type="text" class="form-control"id="sample3_address" placeholder="주소"><br>
                      <input type="text" class="form-control"id="sample3_detailAddress" placeholder="상세주소">
                      <div id="wrap" style="display:none;border:1px solid;width:500px;height:300px;margin:5px 0;position:relative">
                        <img src="//t1.daumcdn.net/postcode/resource/images/close.png" id="btnFoldWrap" style="cursor:pointer;position:absolute;right:0px;top:-1px;z-index:1" onclick="foldDaumPostcode()" alt="접기 버튼">
                        </div>
                      </div>
                    <div class="form-group">
                      <label for="email">Email</label>
                      <input type="email" class="form-control" id="email" placeholder="">
                    </div>
                    <div class="form-group">
                      <label for="job-title">전화번호</label>
                      <input type="tel" class="form-control" id="job-title" placeholder="">
                    </div>
                    </div>
            </form>
          </div>

         
        </div>
        <div class="row align-items-center mb-5">
          
          <div class="col-lg-4 ml-auto">
            <div class="row">
              <div class="col-6">
                <a href="#" class="btn btn-block btn-light btn-md" style="border: 1px solid; ">이전</a>
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
    
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true" style="top:100px">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">파일검색</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
            <!-- 검색영역 시작 -->
          <form:form id="searchUI" name="myform" modelAttribute="simpleCondition" method="post" onclick="return false;">
            <fieldset>
              <legend>통합검색</legend>
              <table class="tb wrt_tb2 mb10">
                <caption>회사검색 테이블</caption>
                <colgroup>
                  <col style="width: 120px;">
                  <col>
                  <col style="width: 100px;">
                </colgroup>
                <tr>
                  <th>회사명</th>
                  <form:input path="searchType" type="hidden" value="company"/>
                  <td>
                  	<form:input path="searchWord" type="text" style="width: 100%;" value="" id="searchWord"/>
<!--                   	<input type="text" id=searchWord  style="width: 100%;"> -->
                  </td>
                  <td class="tc">
                  <button type="button" class="btn btn-black btn-sm" id="searchBtn">검색</button>
                  </td>
                </tr>
              </table>
            </fieldset>
          </form:form>
          <!-- 검색영역 끝 -->
          <!-- 검색결과 시작 -->
          </div>
          <div class="well well-gray group_srch_result">
            <!-- <span class="clr-red">검색된 결과가 없습니다.<span> -->
            <table border="1" style="width: 100%;" >
			   <thead>
			      <tr >
			         <th style="font-weight: border:">회사이름</th>
			         <th style="font-weight: border:">대표자</th>
			         <th style="font-weight: bolder;">회사위치</th>
			      </tr>
			   </thead>
			   <tbody name="companyList" id="companyList">
			   		<c:set var="companyList" value ="${pagingVO.dataList }"></c:set>
			   		<c:choose>
			   			<c:when test ="${not empty companyList }">
			   				<c:forEach items="${companyList }" var="company">
			   					<tr>
			   						<td><a href="" onclick="companyClick(this)" data-dismiss="modal" style="color: black; font-weight: bold;">${company.cmpName }</a></td>
			   						<td>${company.cmpRepName }</td>
			   						<td>${company.cmpAddr2 }</td>
			   					</tr>
			   				</c:forEach>
			   			</c:when>
			   			<c:otherwise>
			   				<tr>
			   					<td colspan="3">게시글 없음</td>
			   				</tr>
			   			</c:otherwise>
			   		</c:choose>
			   </tbody>
            </table>
          </div>
          <!-- 검색결과 끝 -->
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
            <button type="button" class="btn btn-primary">확인</button>
          </div>
        </div>
      </div>
    </div>

    
    <script src="<%=request.getContextPath() %>/resources/js/company/incruiterJoin.js"></script>

