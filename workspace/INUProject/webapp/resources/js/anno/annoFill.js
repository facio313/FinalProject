$("#fillBtn").on("click",function(event){
	let target = $(event.target);
	$("[name=annoTitle]").val('[현대차증권] 2023년 각 분야 채용공고_t');
	// 날짜는 직접 입력
//	myAnnoForm.annoStartdate.value = '시작일';
//	myAnnoForm.annoEnddate.value = '종료일';
	
	//수동
//	$("[name=industry0]").val('4').trigger("change");
//	$("[name=industry1]").val('401').trigger("change");
//	$("[name=industryCode]").val('40125');
	
	//근무환경
	$("[name=eduCode]").val('05');
	$("[name=annoSalary]").val('연봉');
	$("[name=salaryDetail]").val(4000);
	$("[name=annoProbation]").val('2개월');
	//annoContent에는 사진만 업로드하기
	//자동채우기 x
	
	//추가할 개수만큼 만들기
	//태그 비우고 만들기
	$("#welDiv").append(
			$("<li>").append(
				$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('의료비 지원 (본인,가족)')
				, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('A02')
			)
		);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('상해/실손 보험 지원')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('A05')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('웰컴키트 지급')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('B01')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('경조사 지원금')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('B02')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('자녀 학자금 지원')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('B09')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('통신비 지원')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('B10')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('의료비 지원 (본인,가족)')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('A02')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('통근버스 운행')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('C04')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('유류비 지원')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('C07')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('인센티브 및 성과급')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('D05')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('연차 수당')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('D07')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('청년 내일 채움 공제 지원')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('D10')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('멘토링 제도 운영')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('G02')
			)
	);
	$("#welDiv").append(
			$("<li>").append(
					$("<a>").attr("class","welTag").attr("href","#").attr("onclick","return false;").html('컨퍼런스 개최 및 지원')
					, $("<input>").attr("type","hidden").attr("name","welfareCodeList").val('G07')
			)
	);
	
	//세부01
	$("[name='detailList[0].daFd']").val('컨텐츠 제작 및 기획자');
	$("[name='detailList[0].job0']").val('05').trigger("change");
	$("[name='detailList[0].job1']").val('056').trigger("change");
	$("[name='detailList[0].jobCode']").val('415500');
	$("[name='detailList[0].daCount']").val(2);

	$("[name='detailList[0].careerNames'][value='신입']").prop("checked",true);
	$("[name='detailList[0].careerNames'][value='경력']").prop("checked",true);
	$("[name='detailList[0].daCarYeer']").val('1년 이상').parents(".careerYear").attr("style","display:block");
	$("[name='detailList[0].daDepartment']").val('근무부서');
	$("[name='detailList[0].daTask']").val('담당업무');
	$("[name='detailList[0].empltypeCode']").val('01');

	$("[name='detailList[0].inpositionCode'][value='A07']").prop("checked",true);
	
	$("[name='detailList[0].regionVO.regionName']").val('대전 서구');
	$("#sample4_jibunAddress0").val('대전 서구');
	$("[name='detailList[0].daCondition']").val('지원조건');
	$("[name='detailList[0].daPrefer']").val('우대사항');
	
	//세부02
	$("[name='detailList[1].daFd']").val('IB (유동화) 담당');
	$("[name='detailList[1].job0']").val('01').trigger("change");
	$("[name='detailList[1].job1']").val('01C').trigger("change");
	$("[name='detailList[1].jobCode']").val('031900');
	$("[name='detailList[1].daCount']").val(5);

	$("[name='detailList[1].careerNames'][value='경력']").prop("checked",true);
	$("[name='detailList[1].daCarYeer']").val('4년 이상').parents(".careerYear").attr("style","display:block");
	$("[name='detailList[1].daDepartment']").val('근무부서');
	$("[name='detailList[1].daTask']").val('담당업무');
	$("[name='detailList[1].empltypeCode']").val('02');

	$("[name='detailList[1].inpositionCode'][value='A07']").prop("checked",true);
	
	$("[name='detailList[1].regionVO.regionName']").val('서울 용산구');
	$("#sample4_jibunAddress1").val('서울 용산구');
	$("[name='detailList[1].daCondition']").val('지원조건');
	$("[name='detailList[1].daPrefer']").val('우대사항');
	
	//세부03
	$("[name='detailList[2].daFd']").val('기업분석 RA');
	$("[name='detailList[2].job0']").val('01').trigger("change");
	$("[name='detailList[2].job1']").val('011').trigger("change");
	$("[name='detailList[2].jobCode']").val('012205');
	$("[name='detailList[2].daCount']").val(3);

	$("[name='detailList[2].careerNames'][value='경력무관']").prop("checked",true);
//	$("[name='detailList[2].daCarYeer']").val('4년 이상');
	$("[name='detailList[2].daDepartment']").val('근무부서');
	$("[name='detailList[2].daTask']").val('담당업무');
	$("[name='detailList[2].empltypeCode']").val('01');
	
	$("[name='detailList[2].inpositionCode'][value='A07']").prop("checked",true);
	$("[name='detailList[2].inpositionCode'][value='A11']").prop("checked",true);

	$("[name='detailList[2].regionVO.regionName']").val('대전 중구');
	$("#sample4_jibunAddress2").val('대전 중구');
	$("[name='detailList[2].daCondition']").val('지원조건');
	$("[name='detailList[2].daPrefer']").val('우대사항');
	
});