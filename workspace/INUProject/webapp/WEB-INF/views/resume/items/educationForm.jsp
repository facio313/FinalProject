<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/layout.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/board.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/pattern.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/saramin/help.css">

<style>
.qna_write_wrap .qna_write_selection {padding: 0 0 22px;}
.ck-editor__editable { height: 100px; }
.ck-content { font-size: 15px; }
.help_find .type2 .inp_find {width: 844px;}
.help_find li.col_type .inp_find {width: 254px;}
.help_find .type2 .wrap_input {width: 886px;}
.help_find .type2 .wrap_lab {width: 210px;}
.help_find li.col_type .wrap_lab:first-child {width: 210px;}
.help_find li.col_type .wrap_input {width: 364px;}
.btn_basic2.type03 {border: 1px solid #8f8f8f;color: #fff;background-color: #9c9c9c;}
.btn_basic2 {display: inline-block;height: 40px;font-size: 15px;line-height: normal;vertical-align: top;}
.q_num {display: block;padding-bottom: 15px;color: #045738;font-size: 26px;font-weight: bold;letter-spacing: 0;line-height: 18px;}
.form-group {margin-bottom: 3rem;margin-top: -15px;}
#qna{height: 40px;width: 40px;border-radius: 50px;margin: auto;margin-top: -27px;margin-right: 412px;}
.btn btn-block btn-primary btn-md{
    /* margin-bottom: 20px; */
    padding-bottom: 15px;
    padding-top: 15px;
}
</style>

<section class="site-section">
	<div class="container">

		<div class="row mb-5">
			<div class="col-lg-12">

				<div class="help_find help_contact wrap_help">
					<div class="cont_find">
						<form:form modelAttribute="education" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath}/education/insertt">
							<div class="qna_write_wrap">
								<div class="qna_write_selection">
									<span class="qna_category_tit">?????? ????????????</span>
								</div>
							</div>
							<fieldset>
								<legend class="blind">???????????? ?????? ???</legend>
								<p class="desc_find_type2">
									<span class="txt_required">*</span> ??? ?????? ???????????????.
								</p>

								<ul class="list_find type2">
								
									<li>
										<div class="wrap_lab">
											<span class="ico_required">
												<span class="blind">????????????</span>
											</span>
											<label for="incumTitle" class="lab_find">?????????</label>
										</div>
										<div class="wrap_input">
											<span class="box_input">
												<form:input path="eduName" type="text" cssClass="form-control" />
												<form:errors path="eduName" element="span" cssClass="text-danger" />											
											</span>
										</div>
									</li>

									<li>
										<div class="wrap_lab">
											<label for="topTitle" class="lab_find">????????????</label>
										</div>
										<div class="wrap_input">
											<span class="box_input">
												<form:input path="eduDepartment" type="text" cssClass="form-control" />
												<form:errors path="eduDepartment" element="span" cssClass="text-danger" />
											</span>
											<p class="noti_inp">????????????, ??????, ?????? ???</p>
										</div>
									</li>
									
									<li class="col_type">
										<div class="wrap_lab">
											<span class="ico_required">
												<span class="blind">????????????</span>
											</span>
											<label for="incumName" class="lab_find">??????</label>
										</div>
										<div class="wrap_input">
											<span class="box_input">
												<form:input path="eduMajor" type="text" cssClass="form-control" />
												<form:errors path="eduMajor" element="span" cssClass="text-danger" />
											</span>
										</div>
										<div class="wrap_lab">
											<span class="ico_required">
												<span class="blind">????????????</span>
											</span>
											<label for="department" class="lab_find">??????</label>
										</div>
										<div class="wrap_input">
											<span class="box_input">
												<form:input path="eduStatus" type="text" cssClass="form-control" />
												<form:errors path="eduStatus" element="span" cssClass="text-danger" />
											</span>
											<p class="noti_inp">??????, ??????, ?????? ???</p>
										</div>										
									</li>

									<li class="col_type">
										<div class="wrap_lab">
											<span class="ico_required">
												<span class="blind">????????????</span>
											</span>
											<label for="cmdName" class="lab_find">?????????</label>
										</div>
										<div class="wrap_input">
											<span class="box_input">
												<form:input path="eduEntered" type="date" cssClass="form-control" />
												<form:errors path="eduEntered" element="span" cssClass="text-danger" />
											</span>
										</div>									
										<div class="wrap_lab">
											<span class="ico_required">
												<span class="blind">????????????</span>
											</span>
											<label for="subTitle" class="lab_find">?????????</label>
										</div>
										<div class="wrap_input">
											<span class="box_input">
												<form:input path="eduGraduated" type="date" cssClass="form-control" />
												<form:errors path="eduGraduated" element="span" cssClass="text-danger" />
											</span>
											<p class="noti_inp">?????????, ?????????, ????????? ???</p>
										</div>
									</li>
									
									<li class="col_type">
										<div class="wrap_lab">
											<span class="ico_required">
											</span>
											<label for="subTitle" class="lab_find">??????</label>
										</div>
										<div class="wrap_input">
											<span class="box_input">
												<form:input path="eduScore" type="number" cssClass="form-control" step="0.01"/>
												<form:errors path="eduScore" element="span" cssClass="text-danger" />
											</span>
										</div>
										<div class="wrap_lab">
											<span class="ico_required">
											</span>
											<label for="department" class="lab_find">????????????</label>
										</div>
										<div class="wrap_input">
											<span class="box_input">
												<form:input path="eduStandard" type="number" cssClass="form-control" step="0.01"/>
												<form:errors path="eduStandard" element="span" cssClass="text-danger" />
											</span>
											<p class="noti_inp">4.5, 4.3, 4.0 ???</p>
										</div>
									</li>



									<li>
										<div class="wrap_lab">

											<label for="help_upload" class="lab_find">????????????</label>
										</div>
										<div class="wrap_input">
											<div class="uploads" style="display: none;" id="uploadedDiv">
												<span class="info_upload">
													<span class="txt_upload" id="uploadedFileNm"></span>
													<button type="button" class="btn_delete btn_delete" id="fileDeleteBtn">
														<span class="blind">????????????</span>
													</button>
												</span>
											</div>
											<div class="wrap_file">
												<input type="file" id="fileUpload" class="inp_upload" title="?????? ?????????" name="attachFiles" multiple>
												<label for="fileUpload" class="btn_basic2 type03">?????? ????????????</label>
											</div>
											<p class="noti_inp">
												10MB ????????? hwp, pdf, zip, MS Office
												??????, ????????? ??????(JPG, GIF, PNG, BMP) ??? ?????? ???????????????.<br>
												??? ???????????? ????????? ????????? ???????????????.
											</p>
										</div>
									</li>
								</ul>

								<div class="row align-items-center mb-5" style="margin-bottom:-1rem !important;">
									<div class="col-lg-4 ml-auto" style="margin: 46px 10px -15px;">
										<div class="row">
											<div class="col-6">
												<button type="submit" class="btn btn-block btn-primary btn-md" style=" border-radius: 0;">???????????????</button>
											</div>
											<div class="col-6">
												<a href="${pageContext.request.contextPath }/education" class="btn btn-block btn-danger btn-md">??????</a>
											</div>
										</div>
									</div>
					 			</div>
							</fieldset>
						</form:form>
					</div>
				</div>
				
			</div>
		</div>
		
	</div>
</section>
								