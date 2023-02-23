<%--
* [[개정이력(Modification Information)]]
* 수정일             수정자            수정내용
* ----------  ---------  -----------------
* 2023. 2. 15.      최경수            최초작성
* 2023. 2. 18.      최경수           달력, 일정
* 2023. 2. 19.      최경수          화면 꾸미
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link href="<%=request.getContextPath()%>/resources/cks/processMain.css" rel="stylesheet"/>

<!-- 달력, 일정 -->
<div style="position: relative; margin-bottom: 75px; padding: 50px; height: 90vh;">
	<div id='calendar' style="position: abolute; padding: 50px; float:left; border-radius: 0.5em; width: 67%; height: 100%; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);"></div>
	<div id='schedular' class="table-responsive" style="position: abolute; padding-top: 50px; padding-bottom: 50px; float:right; border-radius: 0.5em; width: 32%; height: 100%; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
<!-- 		<div style="position: relative; margin-right: 10px; margin-bottom: 15px; background-color: rgb(0, 158, 100); width: 95%%; height: 50px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);"> -->
		<div style="position: relative; margin-right: 10px; margin-bottom: 15px; background-color: rgb(4, 87, 56); width: 95%%; height: 50px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
			<span style="position: absolute; left: 20px; top: 7px; font-size: 25px; font-weight: 800; color: white;">할 일</span>
		</div>
		<ul class="responsive-table">
		  <li class="table-header">
		    <div class="col col-1">No</div>
		    <div class="col col-2"style="left: 20px;">TODO</div>
		    <div class="col col-3" style="left: 70px;">DEADLINE</div>
		    <div class="col col-4">CHECK</div>
		  </li>
		  <li class="table-row">
		    <div class="col col-1">42235</div>
		    <div class="col col-2"><input type="text" value="공고-세부공고-채용과정"></div>
		    <div class="col col-3"><input type="date" value="2023-02-20"></div>
		    <div class="col col-4"><input type="checkBox"></div>
		  </li>
		  <li class="table-row">
		    <div class="col col-1">42442</div>
		    <div class="col col-2"><input type="text" value="세부공고-채용과정"></div>
		    <div class="col col-3"><input type="date" value="2023-02-21"></div>
		    <div class="col col-4"><input type="checkBox"></div>
		  </li>
		  <li class="table-row">
		    <div class="col col-1">42257</div>
		    <div class="col col-2"><input type="text" value="채용과정-항목"></div>
		    <div class="col col-3"><input type="date" value="2023-02-22"></div>
		    <div class="col col-4"><input type="checkBox"></div>
		  </li>
		  <li class="table-row">
		    <div class="col col-1">42311</div>
		    <div class="col col-2"><input type="text" value="점수입력"></div>
		    <div class="col col-3"><input type="date" value="2023-02-23"></div>
		    <div class="col col-4"><input type="checkBox"></div>
		  </li>
		  <li class="table-row">
		    <div class="col col-1">42311</div>
		    <div class="col col-2"><input type="text" value="달력, 선형진행도"></div>
		    <div class="col col-3"><input type="date" value="2023-02-24"></div>
		    <div class="col col-4"><input type="checkBox"></div>
		  </li>
		  <li class="table-row">
		    <div class="col col-1">42311</div>
		    <div class="col col-2"><input type="text" value="첨부파일"></div>
		    <div class="col col-3"><input type="date" value="2023-02-25"></div>
		    <div class="col col-4"><input type="checkBox"></div>
		  </li>
		</ul>
	</div>
</div>



<!-- 세부공고 목록(카드) -->
<div>

<!-- 	<div style="position: relative; margin-right: 10px; margin-bottom: 15px; background-color: rgb(0, 158, 100); left: -20px; width: 95%%; height: 100px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);"> -->
	<div style="position: relative; margin-right: 10px; margin-bottom: 75px; background-color: rgb(4, 87, 56); left: -20px; width: 90%; height: 100px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
		<span style="position: absolute; left: 20px; top: 7px; font-size: 40px; font-weight: 800; color: white;">회사 공고</span>
		<span style="position: absolute; left: 20px; top: 60px; font-size: 15px; font-weight: 600; color: white;">[세부공고별]</span>
	</div>
	
	<section class="page-contain">
	
			<div style="display: flex; flex-direction: column; padding-top: 110px; min-width: 17.75em; min-height: 20.75em; text-decoration: none; text-align: center;">
				<h3>전체 공고</h3>
				<h3>목록 보기</h3>
				<h1>&#10159;</h1>
			</div>
	
			<a href="${pageContext.request.contextPath}/process/${list[0].annoNo}" class="data-card">
				<h3>세부공고</h3>
				<h4>공고제목</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card">
				<h3>개발자</h3>
				<h4>제14회 상반기 공개채용</h4>
				<p>직무, 직급, 복지, 등</p>
				<p>입사지원서, 자기소개, 토론면접, 실무면접, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card">
				<h3>인사담당자</h3>
				<h4>제14회 상반기 공개채용</h4>
				<p>직무, 직급, 복지, 등</p>
				<p>입사지원서, 자기소개, 토론면접, 실무면접, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card">
				<h3>품질관리자</h3>
				<h4>제8회 상시채용</h4>
				<p>직무, 직급, 복지, 등</p>
				<p>입사지원서, 자기소개, 토론면접, 실무면접, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
	
			<a href="#" class="data-card">
				<h3>기업변호사</h3>
				<h4>제8회 상시채용</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card">
				<h3>디자이너</h3>
				<h4>제13회 하반기 공개채용</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card">
				<h3>상담사</h3>
				<h4>제13회 하반기 공개채용</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card">
				<h3>구내요리사</h3>
				<h4>제13회 하반기 공개채용</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>		
									
	</section>
	
	
	<!-- 끝난 공고 -->
<!-- 	<div style="position: relative; margin-right: 10px; margin-bottom: 15px; background-color: rgb(0, 158, 100); left: -20px; width: 95%%; height: 100px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);"> -->
<!-- 	<div style="position: relative; margin-right: 10px; margin-bottom: 15px; background-color: rgb(4, 87, 56); left: -20px; width: 90%; height: 100px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);"> -->
<!-- 		<span style="position: absolute; left: 20px; top: 7px; font-size: 40px; font-weight: 800; color: white;">만료된 공고</span> -->
<!-- 		<span style="position: absolute; left: 20px; top: 60px; font-size: 15px; font-weight: 600; color: white;">[세부공고별]</span> -->
<!-- 	</div> -->
	
	<section class="page-contain" style="position: relative; top: -100px;">
	
			<a href="#" class="data-card completed">
				<h3>세부공고</h3>
				<h4>공고제목</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card completed">
				<h3>개발자</h3>
				<h4>제14회 상반기 공개채용</h4>
				<p>직무, 직급, 복지, 등</p>
				<p>입사지원서, 자기소개, 토론면접, 실무면접, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card completed">
				<h3>인사담당자</h3>
				<h4>제14회 상반기 공개채용</h4>
				<p>직무, 직급, 복지, 등</p>
				<p>입사지원서, 자기소개, 토론면접, 실무면접, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card completed">
				<h3>품질관리자</h3>
				<h4>제8회 상시채용</h4>
				<p>직무, 직급, 복지, 등</p>
				<p>입사지원서, 자기소개, 토론면접, 실무면접, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
	
			<a href="#" class="data-card completed">
				<h3>기업변호사</h3>
				<h4>제8회 상시채용</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card completed">
				<h3>디자이너</h3>
				<h4>제13회 하반기 공개채용</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card completed">
				<h3>상담사</h3>
				<h4>제13회 하반기 공개채용</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>
			
			<a href="#" class="data-card completed">
				<h3>구내요리사</h3>
				<h4>제13회 하반기 공개채용</h4>
				<p>직무, 직급, 복지,</p>
				<p>입사지원서, 자기소개서, 인턴십, 임원면접</p>
				<span class="link-text">
					세부공고 채용과정 관리하기
					<svg width="25" height="16" viewBox="0 0 25 16" fill="none" xmlns="http://www.w3.org/2000/svg">
						<path fill-rule="evenodd" clip-rule="evenodd" d="M17.8631 0.929124L24.2271 7.29308C24.6176 7.68361 24.6176 8.31677 24.2271 8.7073L17.8631 15.0713C17.4726 15.4618 16.8394 15.4618 16.4489 15.0713C16.0584 14.6807 16.0584 14.0476 16.4489 13.657L21.1058 9.00019H0.47998V7.00019H21.1058L16.4489 2.34334C16.0584 1.95281 16.0584 1.31965 16.4489 0.929124C16.8394 0.538599 17.4726 0.538599 17.8631 0.929124Z" fill="rgb(4, 87, 56)" />
					</svg>
				</span>
			</a>		
									
	</section>
</div>

<!-- 공고목록 -->
<%-- <div style="position: relative; margin-right: 10px; margin-bottom: 15px; background-color: rgb(4, 87, 56); left: -20px; width: 90%; height: 100px; box-shadow: 0 3px 6px rgba(0,0,0,0.16), 0 3px 6px rgba(0,0,0,0.23);">
	<span style="position: absolute; left: 20px; top: 7px; font-size: 40px; font-weight: 800; color: white;">공고목록</span>
	<span style="position: absolute; left: 20px; top: 60px; font-size: 15px; font-weight: 600; color: white;">[세부공고별]</span>
</div>
<c:choose>
	<c:when test="${not empty list}">
		<div class="courses-container">
			<c:forEach items="${list}" var="anno" end="9">
				<!-- 나중에 processVO에 annoVO 넣어놓기 -->
				<c:forEach items="${processList}" var="process" end="0">
					<div class="course">
						<div class="course-preview">
							<h6 style="color: white;">${anno.company.cmpName}</h6>
							<h2 style="color: white;">${anno.annoTitle}</h2>
							<a href="${pageContext.request.contextPath}/announcement/view/${anno.annoNo}">공고 내용 보러가기<i class="fas fa-chevron-right"></i></a>
						</div>
						<div class="course-info">
							<div class="progress-container">
								<div class="progress"></div>
								<span class="progress-text">3/8 ${process.processCodeId} </span>
							</div>
							<h6>직급</h6>
							<a style="text-decoration: none;" href="${pageContext.request.contextPath}/process/${processList[0].daNo}"><h2>직무명</h2></a>
							<button class="listBtn" style="width: 25%;" onclick='location.href="${pageContext.request.contextPath}/process/${processList[0].daNo}/${processList[0].processCodeId}"'>채용과정 보러가기</button>
						</div>
					</div>
				</c:forEach>
			</c:forEach>
		</div>
	</c:when>
	<c:otherwise>
		<div class="courses-container">
			<div class="course">
				<div class="course-preview">
					<h6 style="color: white;">회사명</h6>
					<h2 style="color: white;">공고이름</h2>
					<a href="#">공고 내용 보러가기<i class="fas fa-chevron-right"></i></a>
				</div>
				<div class="course-info">
					<div class="progress-container">
						<div class="progress"></div>
						<span class="progress-text">3/8 현재 채용과정 </span>
					</div>
					<h6>직급</h6>
					<h2>직무명</h2>
					<button class="listBtn" style="width: 25%;">채용과정 보러가기</button>
				</div>
			</div>
		</div>
	</c:otherwise>
</c:choose> --%>

<%-- <div class="bottom" style="position: relative;">
	<table class="table hover table-bordered">
		<thead>
			<tr>
				<th>세부공고아이디</th>
				<th>분류코드</th>
				<th>과정 순번</th>
				<th>시작날짜</th>
				<th>종료날짜</th>
				<th>진행방식</th>
				<th>기준만점</th>
				<th>제약사항</th>
				<th>첨부파일 아이디</th>
				<th>과정삭제날짜</th>
				<th>과정추가날짜</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${processList}" var="process">
				<tr>
					<td>${process.daNo}</td>
					<td>${process.processCodeId}</td>
					<td>${process.processSn}</td>
					<td>${process.processStartDate}</td>
					<td>${process.processEndDate}</td>
					<td>${process.processWay}</td>
					<td>${process.processScore}</td>
					<td>${process.processLimit}</td>
					<td>${process.tblId}</td>
					<td>${process.processDeleteDate}</td>
					<td>${process.processInsertDate}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>



<div id="sri_section" class="  has_banner">
	<div id="sri_wrap">
      	<div id="content">
			<div class="wrap_help">
      			리스트 영역
				<div class="wrap_list_help">
              		<h2 class="tit_list_help">
         				<strong></strong> 공고 목록
                    </h2>
      				도움말 리스트
      				<ul class="list_help">
      					<c:choose>
		      				<c:when test="${not empty list}">
			      				<c:forEach items="${list}" var="anno">
			                        <li>
			                  			<dl>
			                      			<dt>
			                          			<button type="button" class="btn_close">
			                          				<span class="question">${anno.annoTitle }</span>
			                          			</button>
			                      			</dt>
			                      			<dd class="answer">
			                      				<c:forEach items="${anno.detailList}" var="detail">
				                      				<a href="${pageContext.request.contextPath}/process/form?daNo=${detail.daNo}">${detail.daNo}추가</a>
				                      				<a href="${pageContext.request.contextPath}/process/edit?daNo=${detail.daNo}">${detail.daNo}수정</a>
			                      				</c:forEach>
								      		</dd>	
			                      			<dd class="date1">시작일 : ${anno.annoDate }</dd>
			                      			<dd class="date2">종료일 : ${anno.annoStartdate }</dd>
			                      			<dd class="view">등록일 : ${anno.annoEnddate }</dd>
			                  			</dl>
			                  			<button type="button" class="close btn_close">접기<span></span></button>
			              			</li>
			      				</c:forEach>
		      				</c:when>
		      				<c:otherwise>
		      					<li>
		      						<dl>
		      							<dt>공고글 없음</dt>
		      							<dd>올라온 공고글이 없습니다.</dd>
		      						</dl>
		      					</li>
		      				</c:otherwise>
	      				</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
</div> --%>



<!-- <script type="text/javascript">
	var $list = jQuery('.list_help'),
	  $li = jQuery('> li', $list);
	
	$list.on('click', '.btn_close', function () {
	  var $this = jQuery(this).closest('li');
	  if ($this.hasClass('select')) {
	      $this.removeClass('select');
	  } else {
	      $li.removeClass('select');
	      $this.addClass('select');
	  }
	});
</script> -->

<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/daygrid@6.1.4/index.global.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@fullcalendar/interaction@6.1.4/index.global.min.js"></script>
<script src='https://cdn.jsdelivr.net/npm/fullcalendar@6.1.4/index.global.min.js'></script>
<script>

	document.addEventListener('DOMContentLoaded', function() {
	  var calendarEl = document.getElementById('calendar');
	  var calendar = new FullCalendar.Calendar(calendarEl, {
	    initialView: 'dayGridMonth'
// 	    , plugins: [ 'interaction', 'dayGrid']
	    , headerToolbar: {
	      	  left: 'prevYear,prev,today',
	      	  center: 'title',
	      	  right: 'dayGridMonth,dayGridWeek,next,nextYear'
	    }
	    , editable: true
	    , droppable: true
	    , locale: 'ko'
	    , buttonText: {
//             today: '오늘',
            month: '월',
            week: '주'
	    }
	  });
	  calendar.setOption('aspectRatio', 1.2);
	  calendar.setOption('height', '100%');
	  calendar.render();
	});

</script>