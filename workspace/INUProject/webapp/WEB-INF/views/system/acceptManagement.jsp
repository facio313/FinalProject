<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>


<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />  
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/saramin/components.css">  
<style>
  .company_honest_qna .contents_container {
    width: 90%;
}

.wrap_community_topic .section_inner {
    width: 490px;
    height: 615px;
}

.wrap_community_topic .section_inner:nth-child(even) {
    float: left;
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
                        					<li aria-hidden="false" style=" float: left; list-style: none; position: relative; width: 230px; margin-right: 12px;">
                          						<a class="item_cate selected" href="<c:url value='/systemManagement/acceptManagement'/>">
													전체
												</a>
											</li>
                        					<li aria-hidden="false" style=" float: left; list-style: none; position: relative; width: 230px; margin-right: 12px;">
                          						<a class="item_cate" href="<c:url value='/systemManagement/acceptManagement/appliIncruiterList'/>">
													기업/총괄 승인대기목록
												</a>
											</li>
											<li aria-hidden="true" style=" float: left; list-style: none; position: relative; width: 230px; margin-right: 12px;">
												<a class="item_cate" href="<c:url value='/systemManagement/acceptManagement/appliExpertList'/>">
													전문가 승인대기목록
												</a>
											</li>
											<li aria-hidden="true" style=" float: left; list-style: none; position: relative; width: 230px; margin-right: 12px;">
												<a class="item_cate" href="<c:url value='/systemManagement/acceptManagement/appliProdList'/>">
													상품 승인대기목록
												</a>
											</li>
										</ul>
									</div>
								</div>
							</div>
                			<div class="community_list">
                  				<div class="section_inner" style="margin-right:15px">
                    				<div class="wrap_title">
                      					<h4 class="title">
                        					<a href="<c:url value='/systemManagement/acceptManagement/appliIncruiterList'/>" >
                        						기업/총괄 승인대기목록
                        					</a>
                      					</h4>
                      					<a href="<c:url value='/systemManagement/acceptManagement/appliIncruiterList'/>" >
                      						더보기
                      					</a>
                    				</div>
                    				<div class="tblType">
	                    				<table>
	                    					<colgroup>
							            		<col width="50">
							            		<col width="280">
							          		</colgroup>
	                    					<thead>
	                    						<tr>
	                    							<th>번호</th>
	                    							<th>이름(회사명)</th>
	                    							<th>신청일자</th>
	                    						</tr>
	                    					</thead>
	                    					<tbody>
	                    						<c:choose>
		                    						<c:when test="${not empty incruiterList }">
		                    							<c:forEach items="${incruiterList }" var="incruiter" begin="0" end="9">
		                    								<tr>
		                    									<td>${incruiter.rnum }</td>
		                    									<td>
			                    									<a href='<c:url value="/systemManagement/acceptManagement/appliIncruiterList/${incruiter.memId}"/>'>
			                    										${incruiter.memName }(${incruiter.companyVO.cmpName })
			                    									</a>
		                    									</td>
		                    									<td>${incruiter.incruiterVO.memDate }</td>
		                    								</tr>
		                    							</c:forEach>
		                    						</c:when>
		                    						<c:otherwise>
		                    								<li>
		                    									목록 없음
		                    								</li>
		                    						</c:otherwise>
		                    					</c:choose>
	                    					</tbody>
	                    				</table>
                    				</div>
                  				</div>
                  				<div class="section_inner" style="margin-right:15px">
                    				<div class="wrap_title">
                      					<h4 class="title">
                        					<a href="<c:url value='/systemManagement/acceptManagement/appliExpertList'/>">
                        						전문가 승인대기목록
                        					</a>
                      					</h4>
                      					<a href="<c:url value='/systemManagement/acceptManagement/appliExpertList'/>">
                      						더보기
                      					</a>
                    				</div>
                    				<div class="tblType">
	                    				<table>
	                    					<colgroup>
							            		<col width="50">
							            		<col width="280">
							          		</colgroup>
		                    				<thead>
		                    					<tr>
		                    						<th>번호</th>
		                    						<th>이름(직업)</th>
		                    						<th>신청일자</th>
		                    					</tr>
		                    				</thead>
		                    				<tbody>
		                    					<c:choose>
		                    						<c:when test="${not empty expertList }">
		                    							<c:forEach items="${expertList }" var="expert" begin="0" end="9">
		                    								<tr>
		                    									<td>${expert.rnum }</td>
					                    						<td>
					                    							<a href="<c:url value='/systemManagement/acceptManagement/appliExpertList/${expert.memId}'/>">
					                    								${expert.memName }(${expert.expertVO.expertField })
					                    							</a>
					                    						</td>
					                    						<td>${fn:substring(expert.expertVO.expertAppliDate,0,10) }</td>
					                    					</tr>
		                    							</c:forEach>
		                    						</c:when>
		                    						<c:otherwise>
		                    							<li>
		                    								목록 없음
		                    							</li>
		                    						</c:otherwise>
		                    					</c:choose>
		                    				</tbody>
	                    				</table>
                    				</div>
                  				</div>
                  				<div class="section_inner">
                    				<div class="wrap_title">
                      					<h4 class="title">
                        					<a href='<c:url value="/systemManagement/acceptManagement/appliProdList"/>'>
                        						상품 승인대기목록
                       						</a>
                      					</h4>
                      					<a href='<c:url value="/systemManagement/acceptManagement/appliProdList"/>'>
                      						더보기
                      					</a>
                    				</div>
                    				<div class="tblType">
	                    				<table>
	                    					<colgroup>
							            		<col width="50">
							            		<col width="280">
							          		</colgroup>
	                    					<thead>
	                    						<tr>
	                    							<th>번호</th>
	                    							<th>이름(상품명)</th>
	                    							<th>신청일자</th>
	                    						</tr>
	                    					</thead>
	                    					<tbody>
	                    						<c:set var="exprodList" value="${pagingVO.dataList }"/>
		                    					<c:choose>
		                    						<c:when test="${not empty exprodList }">
			                    						<c:forEach items="${exprodList }" var="exprod" begin="0" end="9">
			                    							<tr>
			                    								<td>${exprod.rnum }</td>
			                    								<td>
			                    									<a href='<c:url value="/systemManagement/acceptManagement/appliprodList/${exprod.exprodId}"/>'>
			                    										${exprod.memName }(${exprod.exprodName })
			                    									</a>
			                    								</td>
			                    								<td>${fn:substring(exprod.exprodAppliDate,0,10) }</td>
			                    							</tr>
			                    						</c:forEach>
		                    						</c:when>
		                    						<c:otherwise>
		                    							<li>
		                    								목록 없음.
		                    							</li>
		                    						</c:otherwise>
		                    					</c:choose>
	                    					</tbody>
	                    				</table>
                    				</div>
                  				</div>
                			</div>
              			</div>
           			</div>
        		</div>
      		</div>
    	</div>
  	</div>
</div>