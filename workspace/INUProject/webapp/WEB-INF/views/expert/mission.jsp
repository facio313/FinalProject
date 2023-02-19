<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 17.     	허근주      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
.tg .tg-0lax{text-align:left;vertical-align:top}
</style>
<table class="tg" style="
    width: 75%;
    /* max-height: 50%; */
    height: 700px;
    margin: 60px;
    margin-left: 200px;
    text-align: center;
">
<thead>
  <tr>
    <th class="tg-0pky" colspan="2">
    	<input type="text" placeholder="아이디"">
    </th>
    <th class="tg-0pky" colspan="2">
    	<select >
    		<option value ="">상품분류</option>
		<c:forEach items="${exlprod }" var="exlprod">
			<option value="${exlprod.exlprodId }" >${exlprod.exlprodName }
			</option>
		</c:forEach>
    	</select>
    </th>
   	 <c:forEach items="${exlprod }" var="exlprod">
    <th class="tg-0lax" colspan="2">
    	<input type="radio"  name="exlprodId" value ="${exlprod.exlprodId }">${exlprod.exlprodName }
    </th>
    </c:forEach>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky" colspan="2">
       	<select id="exfield" onchange="changeExfield()">
    		<option value ="">중분류</option>
		<c:forEach items="${exfield }" var="exfield">
			<option value="${exfield.exfieldId }" >${exfield.exfieldName }
			</option>
		</c:forEach>
    	</select>
    </td>
    <td class="tg-0pky" colspan="2">
    	<select id="exjob" >
    		<option value ="">소분류</option>
    			<c:forEach items="${exjob }" var="exjob">
				<option value="${exjob.exjobId }">${exjob.exjobName }
				</option>
			</c:forEach>
    	</select> 
    </td>
    <td class="tg-0lax" colspan="2">
    	<input type="date">
    </td>
    <td class="tg-0lax" colspan="2">
    	<input type="date">
    </td>
  </tr>
  <tr>
    <td class="tg-0pky" colspan="4"></td>
    <td class="tg-0lax"><button type="submit">조회</button></td>
    <td class="tg-0lax"><button type="submit">저장</button></td>
    <td class="tg-0lax"><button type="submit">엑셀다운</button></td>
    <td class="tg-0lax"><button type="submit">삭제</button></td>
  </tr>
  		<tr>
  			<td class="tg-0lax"><h4>전문가 아이디</h4>
  			</td>
  			<td class="tg-0lax"><h4>상품명</h4>
  			</td>
  			<td class="tg-0lax" colspan="2"><h4>상품분류</h4>
  			</td>
  			<td class="tg-0lax" colspan="2"><h4>중분류</h4>
  			</td>
  			<td class="tg-0lax" colspan="2"><h4>소분류</h4>
  			</td>
  		</tr>
  			<c:set var="exprodList" value="${pagingVO.dataList }"></c:set>
			<!--         <div id="posts" class="row no-gutter"> -->
			<c:choose>
				<c:when test="${not empty exprodList }">
					<c:forEach items="${exprodList }" var="exprod">
  					<tr>
					  	<td class="tg-0lax">
					  	<input type="checkbox" value="${exprod.exprodId }">${exprod.memId }
					  	</td>
					    <td class="tg-0lax">
					    		${exprod.exprodName }
					    </td>
			  			<td class="tg-0lax" colspan="2">
			  					${exprod.exfieldId }
			  			</td>
			  			<td class="tg-0lax" colspan="2">
			  					${exprod.exjobId }
			  			</td>
			  			<td class="tg-0lax" colspan="2">
			  					${exprod.exlprodId }
			  			</td>
	 				 </tr>
					</c:forEach>
				</c:when>
			</c:choose>
</tbody>
</table>

<script>
//직업필드 선택시 직업 비동기 구현
function changeExfield() {
	var exfieldSelect = $("#exfield option:selected").val();
	var exjobSelect = $("#exjob")
	exjobSelect.find('option').each(function() {
		$(this).remove();
	})
	exjobSelect.append("<option value=''>직업<option>");
	console.log(exjobSelect)
	var data = {
		"exfieldId" : exfieldSelect
	}
	// 	console.log(data)
	$.ajax({
		url : '/INUProject/expert/exfield',
		method : 'post',
		data : JSON.stringify(data),
		contentType : 'application/json; charset=UTF-8',
		dataType : 'json',
		success : function(resp) {
			// 			console.log(resp[0].exfieldId)
			console.log(resp)
			for (i = 0; i < resp.length; i++) {
				console.log(resp[i].exfieldId)
				console.log(resp[i].exjobName)
				exjobSelect.append("<option value="+resp[i].exjobId+">" + resp[i].exjobName
						+ "</option>")
			}
			console.log(exjobSelect);

		},
		error : function(jqXHR, status, error) {
			console.log(jqXHR);
			console.log(status);
			console.log(error);
		}

	})

};
</script>