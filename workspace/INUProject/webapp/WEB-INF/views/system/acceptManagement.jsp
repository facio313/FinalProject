<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />  
<style>
  .wrap_community_topic .section_inner {
    width: 49%;
  }
  .company_honest_qna .contents_container {
    width: 95%;
}
</style>
    

<div id="sri_section" class="layout_full">
	<div id="sri_wrap">
		<div id="content">
			<div class="company_honest_qna">
				<div class="contents_container">
					<div class="wrap_story_panel">
						<div class="wrap_section wrap_community_topic" style="margin-top: 36px;">
							<div class="wrap_title">
								<h3 class="main_tit">주제별 승인관리</h3>
							</div>
							<div class="wrap_slide_category">
								<div class="bx-wrapper" style="max-width: 1374px">
									<div class="bx-viewport" aria-live="polite" style=" width: 100%; overflow: hidden; position: relative; height: 50px;">
										<ul class="list_category js-category" style=" width: 11215%; position: relative; transition-duration: 0s; transform: translate3d(0px, 0px, 0px);">
                        					<li aria-hidden="false" style=" float: left; list-style: none; position: relative; width: 235px; margin-right: 12px;">
                          						<a class="item_cate selected" href="<c:url value='/systemManagement/acceptManagement/appliIncruiterList'/>">
													기업/총괄 승인대기목록
												</a>
											</li>
											<li aria-hidden="true" style=" float: left; list-style: none; position: relative; width: 235px; margin-right: 12px;">
												<a class="item_cate" href="">
													기업리뷰 승인대기목록
												</a>
											</li>
											<li aria-hidden="true" style=" float: left; list-style: none; position: relative; width: 235px; margin-right: 12px;">
												<a class="item_cate" href="<c:url value='/systemManagement/acceptManagement/appliExpertList'/>">
													전문가 승인대기목록
												</a>
											</li>
											<li aria-hidden="true" style=" float: left; list-style: none; position: relative; width: 235px; margin-right: 12px;">
												<a class="item_cate" href="">
													상품 승인대기목록
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
                			<div class="community_list">
                  				<div class="section_inner">
                    				<div class="wrap_title">
                      					<h4 class="title">
                        					<a href="<c:url value='/systemManagement/acceptManagement/appliIncruiterList'/>" class="link_go">
                        						기업/총괄 승인대기목록
                        					</a>
                      					</h4>
                      					<a href="<c:url value='/systemManagement/acceptManagement/appliIncruiterList'/>" class="link_more">
                      						더보기
                      					</a>
                    				</div>
                    				<ul class="list_story">
                    					<c:choose>
                    						<c:when test="${not empty incruiterList }">
                    							<c:forEach items="${incruiterList }" var="incruiter" begin="0" end="3">
			                      					<li>
			                        					<a href='<c:url value="/systemManagement/acceptManagement/appliIncruiterList/${incruiter.memId}"/>' class="link" >
			                          						<span class="txt_subject">${incruiter.memId }</span>
			                        					</a>
			                      					</li>
                    							</c:forEach>
                    						</c:when>
                    						<c:otherwise>
                    								<li>
                    									목록 없음
                    								</li>
                    						</c:otherwise>
                    					</c:choose>
                    				</ul>
                  				</div>
                  				<div class="section_inner">
                    				<div class="wrap_title">
                      					<h4 class="title">
                        					<a href="" class="link_go">
                        						기업리뷰 승인대기목록
                        					</a>
                      					</h4>
                      					<a href="" class="link_more">
                      						더보기
                    					</a>
                    				</div>
                    				<ul class="list_story">
                      					<li>
                        					<a href="" class="link">
                          						<span class="txt_subject">이것도 파견직 인가요?</span>
                        					</a>
                      					</li>
                      					<li>
                        					<a href="" class="link">
                          						<span class="txt_subject">이런경우에는 어떻게 해야하나요??</span>
                        					</a>
                      					</li>
                      					<li>
                        					<a href="" class="link">
                          						<span class="txt_subject">근로계약서 작성 후 출근 하루만 퇴사 고민</span>
                        					</a>
                      					</li>
                      					<li>
                        					<a href="" class="link">
                          						<span class="txt_subject">퇴사할때 뭐라고 말씀드리는게 좋을까요?</span>
                        					</a>
                      					</li>
                    				</ul>
                  				</div>
                  				<div class="section_inner">
                    				<div class="wrap_title">
                      					<h4 class="title">
                        					<a href="<c:url value='/systemManagement/acceptManagement/appliExpertList'/>" class="link_go">
                        						전문가 승인대기목록
                        					</a>
                      					</h4>
                      					<a href="<c:url value='/systemManagement/acceptManagement/appliExpertList'/>" class="link_more">
                      						더보기
                      					</a>
                    				</div>
                    				<ul class="list_story">
                    					<c:choose>
                    						<c:when test="${not empty expertList }">
                    							<c:forEach items="${expertList }" var="expert" begin="0" end="3">
                    								<li>
                    									<a href="<c:url value='/systemManagement/acceptManagement/appliExpertList/${expert.memId}'/>" class="link">
		                          							<span class="txt_subject">${expert.memId }</span>
		                          						</a>
			                      					</li>
                    							</c:forEach>
                    						</c:when>
                    						<c:otherwise>
                    							<li>
                    								목록 없음
                    							</li>
                    						</c:otherwise>
                    					</c:choose>
                      					
                    				</ul>
                  				</div>
                  				<div class="section_inner">
                    				<div class="wrap_title">
                      					<h4 class="title">
                        					<a href="" class="link_go">
                        						상품 승인대기목록
                       						</a>
                      					</h4>
                      					<a href="" class="link_more">
                      						더보기
                      					</a>
                    				</div>
                    				<ul class="list_story">
                      					<li>
                        					<a href="" class="link">
                          						<span class="txt_subject">광주 케이플러스손해사정 채용공고</span>
                        					</a>
                      					</li>
                      					<li>
                        					<a href="" class="link">
                          						<span class="txt_subject">해커스교육그룹</span>
                        					</a>
                      					</li>
                      					<li>
                        					<a href="" class="link">
                          						<span class="txt_subject">이진스 라는 회사 어떤곳인가요?</span>
                        					</a>
                      					</li>
                      					<li>
                        					<a href="" class="link">
                          						<span class="txt_subject">케이플러스손해사정 채용공고</span>
                        					</a>
                      					</li>
                    				</ul>
                  				</div>
                			</div>
              			</div>
           			</div>
        		</div>
      		</div>
    	</div>
  	</div>
</div>