<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>INY &mdash; I Need You</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/custom-bs.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/jquery.fancybox.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/bootstrap-select.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/icomoon/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/fonts/line-icons/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/owl.carousel.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/animate.min.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/quill.snow.css" />

<!-- MAIN CSS -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/saramin/style.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/saramin/help.css" />
</head>


<body id="top">
	<div id="overlayer"></div>
	<div class="site-wrap">

		<div id="sri_section" class="  has_banner">
			<div id="sri_wrap">
				<div id="content">
					<div class="wrap_title_recruit">
						<h1 class="title_common">문의하기</h1>
					</div>
					<div class="help_find help_lost wrap_help">
						<div class="cont_find">
							<form method="post"
								action="#" id="writeForm"
								enctype="multipart/form-data">
								<input type="hidden" id="hSelected_category" value="">
								<input type="hidden" id="hSelected_contents" value="">
								<input type="hidden" name="hSeq" id="hSeq" value="">
								<input type="hidden" name="hType" id="hType" value="">
								<input type="hidden" name="hOption" id="hOption" value="">
								<input type="hidden" name="help_total_size" id="help_total_size" value="">
								<input type="hidden" name="csrfToken" value="e3d761ce00af6d347b2725254690c53b">
								<input type="hidden" name="channel" id="channel" value="mail">
								<input type="hidden" name="seq" id="seq" value="seq1675825767">
								<input type="hidden" name="confirm_status" id="confirm_status" value="ready">
								<input type="hidden" name="mail_confirm_complete" value="n" id="mail_confirm_complete">

								<fieldset>
									<legend class="blind">이메일 문의 입력 폼</legend>
									<p class="desc_find_type2">
										평일 09시 에서 17시까지 문의하신 내용은 당일 답변해드립니다. <br>17시 이후에 문의하신 내용은
										다음날에 답변, 주말에 문의하신 내용은 그 다음주 월요일에 답변해 드립니다.
									</p>
									<ul class="list_find">
										<li>
											<div class="wrap_lab">
												<span class="ico_required">
													<span class="blind"> 필수항목 </span>
												</span>
												<label for="help_email" class="lab_find"> 이메일 </label>
											</div>

											<div class="wrap_input">
												<span class="box_input">
													<input type="text" id="help_email" class="inp_find" name="help_email" value="" autocomplete="off">
												</span>

												<button type="button" class="btn_back btn_cert_pop" data-popupid="layer_pop_byemail">
													<span>인증</span>
												</button>
												<input type="hidden" name="sms_confirm_complete" value="" id="sms_confirm_complete">
												<div class="layer_identify open" id="layer_pop_byemail" style="display: none">
													<h4>이메일 인증</h4>
													<button type="button" class="btn_layer_close" onclick="confirm_layer_close(this);">
														<span>닫기</span>
													</button>
													<div class="box_txt_identify">
														<p class="txt" id="email_layer_sub_title" name="email_layer_sub_title"></p>
													</div>

													<table class="tbl_fieldset">
														<caption></caption>
														<colgroup>
															<col style="width: 130px;">
															<col>
														</colgroup>

														<tbody>
															<tr>
																<th>인증번호</th>
																<td><input type="text" id="email_code" name="email_code" value="" class="sri_input" style="width: 96px;">
																	<button type="button" class="btn_basic_type04 confirm-action person">확인</button>
																	<span class="expiredin" id="confirm_remain_mail_time_area" name="confirm_remain_mail_time_area"><strong></strong></span>
																</td>
															</tr>
														</tbody>
													</table>

													<div class="txt alert_txt">
														<p class="alert_column warning_txt" id="email_confirm_msg" style="display: none;">인증번호를 입력해주세요.</p>
													</div>
													<div class="bottom_btn_wrap">
														<button type="button" class="btn_basic_type01" onclick="sendCodeAction();">인증번호 재발송</button>
														<button type="button" class="btn_basic_type05" onclick="changeConfirmCell()">인증완료</button>
													</div>
												</div>

												<!-- 이메일 제안 -->
												<div class="suggest_email email_list" style="display: none">
													<ul class="list_email">
														<li class="auto_list">
															<a href="javascript:;" onclick="return false;" class="link_email">
															<strong class="txt_email">abcd</strong>@naver.com
															</a>
														</li>

														<li class="auto_list">
															<a href="javascript:;" onclick="return false;" class="link_email">
																<strong class="txt_email">abcd</strong>@gmail.com
															</a>
														</li>

														<li class="auto_list">
															<a href="javascript:;" onclick="return false;" class="link_email">
																<strong class="txt_email">abcd</strong>@daum.net
															</a>
														</li>

														<li class="auto_list">
															<a href="javascript:;" onclick="return false;" class="link_email">
																<strong class="txt_email">abcd</strong>@nate.com
															</a>
														</li>

														<li class="auto_list">
															<a href="javascript:;" onclick="return false;" class="link_email">
																<strong class="txt_email">abcd</strong>@outlook.com
															</a>
														</li>
													</ul>
												</div>
												<!-- // 이메일 제안 -->
											</div>
										</li>


										<li>
											<div class="wrap_lab">
												<span class="ico_required">
													<span class="blind">필수항목</span>
												</span>
												<label class="lab_find">구분</label>
											</div>

											<div class="wrap_input">
												<span class="choice_input">
													<span class="inpRdo">
														<input type="radio" name="help_member_type" id="help_member_type_person" class="help_member_type" value="p">
															<label class="lbl" for="help_member_type_person">개인</label>
													</span>
													<span class="inpRdo"> <input type="radio" name="help_member_type" id="help_member_type_company" class="help_member_type" value="c">
														<label class="lbl" for="help_member_type_company">기업</label>
													</span>
												</span>
											</div>
										</li>

										<li>
											<div class="wrap_lab">
												<span class="ico_required">
													<span class="blind">필수항목</span>
												</span>
												<label for="help_category" class="lab_find"> 문의종류 </label>
											</div>

											<div class="wrap_input">
												<span class="sri_input2">
													<select id="help_category" style="width: 338px" name="help_category">
														<option selected="" value="">선택해주세요</option>
														<option value="4">최저임금 위반/불량 기업/공고 신고</option>
														<option value="5">오류 신고</option>
														<option value="15">이력서 문의</option>
														<option value="16">입사지원 문의</option>
														<option value="17">검색 문의</option>
														<option value="6">회원가입/탈퇴/ID/PW</option>
														<option value="18">공고 문의</option>
														<option value="19">지원자관리 문의</option>
														<option value="20">이메일/알림 문의</option>
														<option value="21">결제/유료 상품 문의</option>
														<option value="12">연봉정보 수정요청</option>
														<option value="22">인적성검사 문의</option>
														<option value="24">기업정보</option>
														<option value="9">제안사항</option>
														<option value="13">기타</option>
												</select>
												</span>
											</div>
										</li>

										<li>
											<div class="wrap_lab">
												<span class="ico_required">
													<span class="blind">필수항목</span>
												</span>
												<label for="help_title" class="lab_find">제목</label>
											</div>
											<div class="wrap_input">
												<span class="box_input">
													<input type="text" id="help_title" class="inp_find" style="width: 533px" name="help_title">
												</span>
											</div>
										</li>

										<li>
											<div class="wrap_lab">
												<span class="ico_required">
													<span class="blind">필수항목</span>
												</span>
												<label for="help_desc" class="lab_find">내용</label>
											</div>
											<div class="wrap_input">
												<span class="box_input">
													<textarea id="help_desc" class="inp_find textarea" name="help_content" style="width: 533px; height: 120px;"></textarea>
												</span>
											</div>
										</li>

										<li>
											<div class="wrap_lab">
												<label for="help_upload" class="lab_find">파일첨부</label>
											</div>
											<div class="wrap_input">
												<div class="uploads"></div>
												<div class="wrap_file">
													<input type="file" id="help_upload" class="inp_upload" title="파일 업로드" name="uploaded_file">
													<label for="help_upload" class="btn_basic2 type03">파일첨부하기</label>
												</div>
												<p class="noti_inp">
													10MB 이하의 hwp, pdf, zip, MS Office 파일, 이미지 파일(JPG, GIF, PNG,
													BMP) 만 등록 가능합니다.
													<!-- <br/>(최대 5개까지 가능)-->
												</p>
											</div>
										</li>
									</ul>

									<div class="noti_find">
										<h3 class="noti_title">[개인정보 수집·이용에 대한 안내]</h3>
										<p class="desc_find_type2">(주)I Need You은 이용자 문의를 처리하기 위해 다음과
											같이 개인정보를 수집 및 이용하며, 이용자의 개인정보를 안전하게 취급하는데 최선을 다하고 있습니다.</p>
										<ul class="list_noti">
											<li>① 수집항목 : 이메일 주소</li>
											<li>② 수집·이용목적 : 문의에 따른 원활한 상담 제공</li>
											<li>③ 보유 및 이용기간 : <strong>문의 처리 후 3년간 보관</strong></li>
										</ul>
										<p class="desc_find_type2">
											위 동의를 거부 할 권리가 있으며 동의 거부 시 문의하기 이용이 제한됩니다.<br>
											이외의 방법으로 문의하시려면 이메일(iny@iny.co.kr)을 통하여 문의하시기 바랍니다.
										</p>
										<div class="check_agree">
											<div class="sri_input3">
												<input type="checkbox" id="agree_chk">
													<label for="agree_chk">위의 ‘개인정보 수집 및 이용‘에 동의합니다.</label>
											</div>
										</div>
									</div>

									<div class="wrap_link">
										<a href="/">
											<button type="button" class="btn_biggest_type03" id="help_cancel">취소하기</button>
										</a>
										<button type="submit" class="btn_biggest_type01" id="help_send">문의하기</button>
									</div>

									<div id="files">
										<ul id="files_ul"></ul>
									</div>
								</fieldset>
							</form>
						</div>
					</div>

					<script type="text/javascript">
						var fileArray = [];
						var totalUploadedLength;
						var isLogin = 0;
						var isSleepMember = 0;

						window.onload = function() {
							var form = document.getElementById('writeForm');
							var sendBtn = document.getElementById('help_send');
							var fileInput = documentgetElementById('help_upload');
							var cancelBtn = document.getElementById('help_cancel');
							var hOption = document.getElementById('hOption');
							var helpCategory = document.getElementById('help_category');
							var helpTextArea = document.getElementById('help_desc');
							var isContentWritten = false;

							// email 자동완성에서 이메일을 키보드로 선택하고 Enter 눌렀을 시 폼 전송 방지 //
							form.addEventListener('keydown', function(e) {
								if (e.target.id === 'help_email') {
									if (e.key === 'Enter') {
										e.preventDefault();
									}
								}
							});

							form.help_email.addEventListener('keyup',function(e) {
												if (!(e.keyCode >= 37 && e.keyCode <= 40)) {
													var regexp = /[[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/gi;
													if (regexp.test(form.help_email.value)) {
														form.help_email.value = form.help_email.value.replace(regexp,'');
													}
												}
							});

							// 옵션 변경 시에 템플릿 변경 또는 내용 제거 //
							var previousOptionValue = 0;
							helpCategory.addEventListener('mousedown', function(e) {
										previousOptionValue = e.target.value;
									});

							// 옵션 변경 시에 템플릿 적용을 위한 이벤트 //
							helpCategory.addEventListener('change', function(e) {
												var hOption = document.getElementById('hOption');
												var helpCategory = document.getElementById('help_category');
												if (hOption.value !== '') {
													if (confirm('"문의 종류" 를 변경하면, 작성하신 내용이 모두 지워집니다. 변경하시겠습니까?')) {
														setTemplate(hOption, helpCategory);
														hOption.value = this.value;
													} else {
														this.value = previousOptionValue;
													}
												} else if (hOption.value === '') {
													// 파라미터 값으로 옵션 값이 안넘어오고, 문의 내역이 default 값일 때 //
													setTemplate(hOption,
															helpCategory);
													hOption.value = this.value;
												}
							});

							// content 작성 시에 빈칸 체크 //
							helpTextArea.addEventListener('keydown',function(e) {
										if (e.keyCode !== 32) {
											isContentWritten = true;
										}
							});

							// 파라미터로 option 값 넘어 왔을 시에 템플릿 불러오기 //
							if (!!hOption.value) {
								setTemplate(hOption, helpCategory);
								if (hOption.value === '27') {
									helpCategory.disabled = true;
								}
							}

							// 작성 취소 버튼 눌렀을 시 //
							cancelBtn.addEventListener('click', function() {
								if (confirm("작성한 내용이 모두 지워집니다. 정말로 취소 하시겠습니까?")) {
									if (hOption.value === '27') {
										window.close();
									} else {
										history.back(1);
									}
									} else {
										return false
									}
							});

							(function($) {
								$(document).ready(function() {
									loginCheckRedirect();
									loginValidate();
									var $upload_name = $('.uploads');
									var filename = '';
									var maxSize = 10 * 1024 * 1024;
									var fileTarget = $('#help_upload');
									fileTarget.on('change', function() { // 값이 변경되면
										if (!this.files || this.files.length === 0) {
											return;
										}

										if (this.files[0].size > maxSize) {
											alert('첨부파일 용량은 최대 10Mbyte 넘을수 없습니다.');
											return;
										}

										if (window.FileReader) { // modern browser
											filename = $(this)[0].files[0].name;
										} else { // old IE
											filename = $(this).val().split('/').pop().split('\\').pop(); // 파일명만 추출
										}

										if (filename.length >= 25) {
											var extPos = filename.lastIndexOf('.');
											var subRest = filename.substring(15,extPos);
											var fileExt = filename.substring(extPos);
											var dotNotation = ' . . . . ';
											filename = filename.substr(0,10)
													+ dotNotation
													+ subRest
													+ fileExt;
										}
										// 추출한 파일명 삽입
											html = '<span class="info_upload">'
													+ ' <span class="txt_upload">'
													+ filename
													+ '</span>'
													+ '<button type="button" class="btn_delete btn_delete"><span class="blind">파일삭제</span></button>'
													+ '</span>';
												$upload_name.html(html);
											});

											$(document).on('click','.btn_delete', function() {
												var agent = navigator.userAgent.toLowerCase();
												$(this).parent().remove();
													if (agent.indexOf("msie") != -1) {
														$("#help_upload").replaceWith(
															$("#help_upload").clone(true));
													} else {
														$("#help_upload").val("");
													}
											});
								});

								function loginCheckRedirect() {
									if (isLogin === 0 && confirm('로그인 후 문의하시면, 내 문의 내역에서 확인 가능합니다. 로그인 하시겠습니까?')) {
										redirect_url = '#'
												+ $(location).attr('pathname')
												+ ""
												+ $(location).attr('search');
										location.href = redirect_url;
									}
								}

								function loginValidate() {
									if (isLogin === 1 && isSleepMember !== 1) {
										$('#help_email').attr('readonly', true);
										$('#confirm_status').val('complete');
										$('.btn_cert_pop').addClass('on');
										$('#mail_confirm_complete').val('y');
									}
								}
							})(jQuery);

							// 문의하기 버튼 눌렀을 시 //
							sendBtn.addEventListener('click',function(e) {
												e.preventDefault();
												var formData = {
													email : form.help_email,
													type : document.querySelectorAll('input[class^="help_member_type"]'),
													category : form.help_category,
													title : form.help_title,
													content : form.help_desc,
													files : form.help_upload,
													agreeOn : form.agree_chk,
													confirmStatus : form.confirm_status
												};
												var chkLength = 0;
												// 회원 구분 선택 여부 //
												var typeLength = formData.type.length;
												// 이메일 //
												if (isEmpty(formData.email.value)) {
													alert('표시된 필수사항[이메일]을 입력 해 주세요.');
													formData.email.focus();
													return false;
												}

												if (emailCheck(formData.email.value
														.trim())) {
													alert('이메일 주소를 다시 확인해주세요.');
													formData.email.focus();
													return false;
												}

												// 회원 구분 선택 여부 //
												for (var i = 0; i < typeLength; i++) {
													if (formData.type[i].checked) {
														chkLength++;
													}
												}
												// 회원 구분 선택 여부 //
												if (chkLength === 0) {
													alert('표시된 필수사항[구분]을 선택 해 주세요.');
													return false;
												}
												// 문의종류//
												if (isEmpty(formData.category.value)) {
													alert('표시된 필수사항[문의 종류]을 선택 해 주세요.');
													formData.category.focus();
													return false;
												}
												// 제목 //
												if (isEmpty(formData.title.value)) {
													alert('표시된 필수사항[제목]을 입력 해 주세요.');
													formData.title.focus();
													return false;
												}
												// 내용 //
												if (isEmpty(formData.content.value)
														|| !isContentWritten) {
													alert('표시된 필수사항[내용]을 입력 해 주세요.');
													formData.content.focus();
													return false;
												}

												if (formData.confirmStatus.value !== 'complete') {
													alert('인증을 완료하세요.');
													return false;
												}

												// 개인정보 수집 동의 체크박스 //
												if (!formData.agreeOn.checked) {
													alert('개인정보 수집에 동의 하지 않으면 이용할 수 없습니다.');
													formData.agreeOn.focus();
													return false;
												}

												if (formData.confirmStatus.value !== 'complete') {
													alert('인증을 완료하세요.');
													return false;
												}

												// 확인 시에 전송 //
												if (confirm('문의하시겠습니까?')) {
													form.help_category.disabled = false;
													form.submit();
												} else {
													return false;
												}
											});

							// 여기부터 이메일 자동 완성 //
							// 이메일 자동 완성 Elements //
							var email = {
								'listUl' : document.querySelector('ul[class*="list_find"]'),
								'input' : document.getElementById('help_email'),
								'recommendList' : document.querySelectorAll('li[class^="auto_list"]'),
								'divSuggest' : document.querySelector('div[class^="suggest_email"]')
							};

							// list item 안에 strong element //
							var inRecommendList;
							// 리스트 중 현재 포커스 중인 번호 //
							var order = 0;
							// 다른 곳 클릭시 none //

							email.input.addEventListener('blur',function(e) {
												jQuery('body').off('click').on('click',function(e) {
													if (!jQuery(e.target).hasClass("auto_search")) {
														email.divSuggest.style.display = 'none';
													}
												});

												// if (e.target.id !== 'help_email') {
												//     email.divSuggest.style.display = 'none';
												// }
							});

							email.listUl.addEventListener('keyup',function(e) {
								if (e.target.id === 'help_email') {
									if (email.input.value === '') {
										return false;
									} else {
										email.divSuggest.style.display = 'inherit';
										if (email.input.value.indexOf('@') > -1) {
											email.divSuggest.style.display = 'none';
										}

										for (var i = 0; i < email.recommendList.length; i++) {
											inRecommendList = email.recommendList[i].children[0].children[0];
											inRecommendList.innerText = email.input.value;
										}
									}
									if (e.keyCode === 38) {
										if (order > 1
												&& order <= 5) {
											--order;
											email.recommendList[order].style.backgroundColor = 'white';
											email.recommendList[order - 1].style.backgroundColor = 'lightgray';
										}
									}
									if (e.keyCode === 40) {
										if (order !== 0
												&& order <= 4) {
											email.recommendList[order - 1].style.backgroundColor = 'white';
											email.recommendList[order].style.backgroundColor = 'lightgray';
											order++;
										} else if (order === 0) {
											email.recommendList[order].style.backgroundColor = 'lightgray';
											order++;
										}
									}
									if (e.key === 'Enter') {
										e.preventDefault();
										email.input.value = '';
										email.input.value = email.recommendList[order - 1].innerText;
										email.divSuggest.style.display = 'none';
									}
								}
							});

							// 자동 완성 클릭 시 //
							email.divSuggest.addEventListener('click',function(e) {
								email.input.value = '';
								email.input.value = e.target.innerText;
								if (e.target.nodeName === 'STRONG') {
									email.input.value = e.target.parentNode.innerText;
								}

								this.style.display = 'none';
							});

							// 여기까지 이메일 자동완성 //
						};

						function setFileDeleteBtn(files) {
							var deleteBtn = document.querySelectorAll('button[class^="btn_delete"]');
							var deleteBtnLength = deleteBtn.length;
							for (var i = 0; i < deleteBtnLength; i++) {
								deleteBtn[i].addEventListener('click', function(e) {
									e.preventDefault();
									// var thisFileNumber = this.dataset.file_number;
									var thisFileNumber = e.target.getAttribute('data-file_number');
									var findList = "span[data-file_number='"
											+ thisFileNumber
											+ "']";
									var span = document.querySelector(findList);
									// removeFile(files, thisFileNumber);
									removeFileElement(thisFileNumber);
									if (span !== null && span !== undefined) {
										span.innerHTML = '';
									}
								})
							}
						}

						function setTemplate(hOption, helpCategory) {
							var templateCompany = '원활한 상담을 위해 아래 정보를 입력해주세요.\n'
									+ '- 기업명 / 공고 제목 :\n' + '- 공고 주소 :\n'
									+ '- 신고 내용 :';
							var templateError = '원활한 상담을 위해 아래 정보를 입력해주세요.\n\n'
									+ '- 운영체제(OS) : ex. 윈도우 7\n'
									+ '- 브라우저 정보 : ex. 익스플로러 11\n'
									+ '- 오류에 대한 설명 :\n\n'
									+ '*오류 화면 캡쳐 첨부를 해주시면 더 빠르게 확인이 가능합니다.';

							var templateSiat = '원활한 상담을 위해 아래 정보를 입력해주세요.\n\n'
									+ '- 발행을 원하는 인적성검사 쿠폰명, 쿠폰 갯수 : \n'
									+ '(ex : 사람인 인적성검사 2건, 사람인 인성검사 3건)\n\n'
									+ '* 동일 검사로 최대 3건까지만 발행 가능';
							var helpTextArea = document.getElementById('help_desc');
							if (parseInt(helpCategory.value) === 4 || hOption.value === 4) {
								helpTextArea.value = '';
								helpTextArea.value = templateCompany;
							} else if (parseInt(helpCategory.value) === 5 || hOption.value === 5) {
								helpTextArea.value = '';
								helpTextArea.value = templateError;
							} else if (parseInt(helpCategory.value) === 22 || hOption.value === 22) {
								helpTextArea.value = '';
								helpTextArea.value = templateSiat;
							} else {
								helpTextArea.value = '';
							}
						}

						function removeFile(files, fileNumber) {
							var length = files.size;

							for (var i = 0; i < length; i++) {
								var originFileNumber = parseInt(files[i].getAttribute('file_number'));
								var deleteFileNumber = parseInt(fileNumber);
								if (originFileNumber === deleteFileNumber) {
									delete files[i];
									removeFileElement(fileNumber);
								}
							}

							fileArray.forEach(function(v, i, a) {
								if (parseInt(a[i].file_number) === parseInt(fileNumber)) {
									a.splice(i, 1);
								}
							});
						}

						function isTypeAllowable(file) {
							var allowableType = [ 'hwp', 'pdf', 'zip', 'xls','xlsx', 'jpg', 'gif', 'png', 'bmp', 'doc','docx', 'ppt', 'pptx' ];
							var name = file;
							var dotPosition = name.lastIndexOf('.');
							var type = name.substr(dotPosition + 1).toLowerCase();

							if (allowableType.indexOf(type) !== -1) {
								return true;
							} else {
								alert('지원하지 않는 확장자 입니다.');
								return false;
							}
						}

						function removeFileElement(file_number) {
							var fileElem = document.querySelector("input[data-file_number='"+ file_number + "']");
							fileElem.innerHTML = '';
							fileElem.setAttribute('type', 'hidden');
							fileElem.setAttribute('name', '');
						}

						function isSizeAllowable(file) {
							var total = 0;
							var equalNumber = 1000000;
							var size = (parseInt(file.size) / equalNumber);
							var totalSizeElem = document.getElementById('help_total_size');
							if (size > 10) {
								alert('첨부 용량을 초과하였습니다.');
								return false;
							}
							total += parseInt(size);
							fileArray.forEach(function(v, i, a) {
								total += a[i].size;
							});
							if ((total / equalNumber) > 10) {
								alert('첨부 용량을 초과하였습니다.');
								return false;
							}

							totalSizeElem.value = parseInt(total);
							return true;
						}

						function isEmpty(elementValue) {
							if (elementValue.trim() === '') {
								return true;
							} else {
								return false;
							}
						}

						function loginCkeckRedirect() {
							if (isLogin === 0 && confirm('로그인 후 문의하시면, 내 문의 내역에서 확인 가능합니다. 로그인 하시겠습니까?')) {
								redirect_url = '#' + option;
								location.href = redirect_url;
							}
						}

						function emailCheck(email) {
							if (!/^[0-9a-z._+-]+@([0-9a-z_-]+\.)+[a-z]{2,10}$/i.test(email)) {
								return true;
							}
							return false;
						}
					</script>

				</div>
			</div>
		</div>
	</div>

	<!-- SCRIPTS -->
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/isotope.pkgd.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/stickyfill.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.fancybox.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.waypoints.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/jquery.animateNumber.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/resources/js/quill.min.js"></script>

	<script
		src="${pageContext.request.contextPath}/resources/js/bootstrap-select.min.js"></script>

	<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
</body>
</html>