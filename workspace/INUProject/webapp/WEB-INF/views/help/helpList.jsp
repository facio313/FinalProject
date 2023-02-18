<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/custom-bs.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/jquery.fancybox.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap-select.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/icomoon/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/fonts/line-icons/style.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/owl.carousel.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/animate.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/quill.snow.css">
<!-- MAIN CSS -->
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/style.css">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/help.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/components.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/layout.css">

<!-- HOME -->
<section class="section-hero home-section overlay inner-page bg-image"
	style="background-image: url('<%=request.getContextPath()%>/resources/images/hero_1.jpg');"
	id="home-section">
	<div class="container">
		<div class="row">
			<div class="col-md-7">
				<h1 class="text-white font-weight-bold">도움말</h1>
				<div class="custom-breadcrumbs">
					<a href="#">Help</a>
					<span class="mx-2 slash">/</span> 
					<span class="text-white">
						<strong>FAQ</strong>
					</span>
				</div>
			</div>
		</div>
	</div>
</section>


<div id="sri_section" class="  has_banner">
	<div id="sri_wrap">
      	<div id="content">
			<div class="wrap_help">
				<!-- 검색 -->
				<div class="search_help">
					<form action="/zf_user/help/help-word/help-search" onsubmit="return isValidation();">
      					<label for="helpSearchInput" class="copy">
          					<strong>궁금한 점</strong>이 있으면
          					<br>검색해 주세요<i>!</i>
      					</label>
      					<input id="helpSearchInput" name="keyword" class="input_search_help" type="text" placeholder="검색어는 20자 이내로 입력해주세요." value=""/>
   						<button class="btn_search_help" type="submit">
      						<span class="blind">검색하기</span>
   						</button>
   						<div class="suggetion">
       						<span class="tit">추천검색어</span>
                           	<a href="/zf_user/help/help-word/help-search?keyword=%EC%9D%B4%EB%A0%A5%EC%84%9C" class="item">이력서</a>
                           	<a href="/zf_user/help/help-word/help-search?keyword=%EC%9E%85%EC%82%AC%EC%A7%80%EC%9B%90" class="item">입사지원</a>
                           	<a href="/zf_user/help/help-word/help-search?keyword=%EC%B1%84%EC%9A%A9%EC%A0%95%EB%B3%B4" class="item">채용정보</a>
                           	<a href="/zf_user/help/help-word/help-search?keyword=%EC%9D%B8%EC%9E%AC%ED%92%80" class="item">인재풀</a>
                   		</div>
  					</form>
				</div>
				<!-- // 검색 -->
				<ul class="tabList">
					<li id="private" class="select">
      					<a href='<c:url value="help?helpSort=HPS"/>' class="inTab">
          					<span>개인회원</span>
      					</a>
  					</li>
  					<li id="company" class="">
      					<a href='<c:url value="help?helpSort=HPI"/>' class="inTab">
          					<span>기업회원</span>
      					</a>
  					</li>
				</ul>
<%-- 				<input hidden name="flag" value="${flag}"/> --%>
				<script>
					$("#company").click(function(){
						$("#private").removeClass("select");
						$("#company").addClass("select");
					});
// 					$("#private").click(function(){
// 						$("#company").removeClass("select");
// 						$("#private").addClass("select");
// 					});
				
					/* if ($("input[name=flag]").val() == "i"){
						$("#private").removeClass("select");
						$("#company").addClass("select");
					} */
					
				</script>
				
				<ul class="tab_help">
  					<li class="select">
      					<a href="/zf_user/help/help-word/main?memberCode=per" class="inTab">
          					<span>전체</span>
      					</a>
  					</li>
  					<c:forEach items="${listName}" var="listName">
	                    <li class="">
	          				<a href="" class="inTab">
	              				<span>${listName.codeName}</span>
	          				</a>
	      				</li>
  					</c:forEach>
      			</ul>
				<a href="" class="btn_basic_type01 btn_report_enquiry">등록</a>
      			<!-- 리스트 영역 -->
				<div class="wrap_list_help">
              		<h2 class="tit_list_help">
         				<strong></strong> 자주 묻는 질문
                    </h2>
      				<!-- 도움말 리스트 -->
      				<ul class="list_help">
      					<c:choose>
		      				<c:when test="${not empty list}">
			      				<c:forEach items="${list}" var="helpList">
			                        <li>
			                  			<dl>
			                      			<dt>
			                          			<button type="button" class="btn_close">
			                          				<span class="question">${helpList.helpTitle }</span>
			                          			</button>
			                      			</dt>
			                      			<dd class="answer">
			                      				${helpList.helpContent }
								      		</dd>
			                      			<dd class="date1">등록일 : ${helpList.helpDate }</dd>
			                      			<dd class="date2">수정일 : ${helpList.helpModiDate }</dd>
			                      			<dd class="view">조회수 : ${helpList.helpHit }</dd>
			                  			</dl>
			                  			<button type="button" class="close btn_close">접기<span></span></button>
			              			</li>
			      				</c:forEach>
		      				</c:when>
		      				<c:otherwise>
		      					<li>
		      						<dl>
		      							<dt>게시글 없음</dt>
		      							<dd>올라온 게시글이 없습니다.</dd>
		      						</dl>
		      					</li>
		      				</c:otherwise>
	      				</c:choose>
					</ul>
				</div>
			</div>
			<script type="text/javascript">
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
				
				function isValidation() {
				  if (jQuery('#helpSearchInput').val().length > 20) {
				      alert('검색어는 20자 이내로 입력해주세요.\n키워드로 검색하시면 더 많은 검색결과를 찾을 수 있습니다.');
				      return false;
				  }
				
				  return true;
				}
			
			</script>
		</div>
	</div>
</div>