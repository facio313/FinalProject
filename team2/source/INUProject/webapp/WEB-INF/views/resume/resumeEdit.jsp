<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
							<form:form modelAttribute="resume" enctype="multipart/form-data" method="post">
								<div class="qna_write_wrap">
									<div class="qna_write_selection">
										<span class="qna_category_tit">????????? ????????????</span>
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
												<label for="incumTitle" class="lab_find">??????</label>
											</div>
											<div class="wrap_input">
												<span class="box_input">
													<form:input path="resumeTitle" type="text" cssClass="inp_find" required="required" placeholder="????????? ??????????????????"/>
													<form:errors path="resumeTitle" element="span" cssClass="text-danger inp_find" />												
												</span>
											</div>
										</li>

										<li>
											<div class="wrap_lab">
												<label for="topTitle" class="lab_find">??????</label>
											</div>
											<div class="wrap_input">
												<span class="box_input">
													<form:input path="resumeAddr1" type="text" cssClass="inp_find" required="required" placeholder="????????? ??????????????????."/>
													<form:errors path="resumeAddr1" element="span" cssClass="text-danger inp_find" />
												</span>
												<p class="noti_inp">????????? ??????API??? ???????????? ??????????????????.</p>
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
													<form:input path="resumeName" type="text" cssClass="inp_find" required="required" placeholder="????????? ??????????????????."/>
													<form:errors path="resumeName" element="span" cssClass="text-danger inp_find" />
												</span>
											</div>
											<div class="wrap_lab">
												<span class="ico_required">
													<span class="blind">????????????</span>
												</span>
												<label for="cmdName" class="lab_find">??????</label>
											</div>
											<div class="wrap_input">
												<span class="box_input">
													<form:select path="resumeGender" cssClass="inp_find">
														<form:option value="">??????</form:option>
														<form:option value="??????">??????</form:option>
														<form:option value="??????">??????</form:option>
														<form:option value="??????">??????</form:option>
														<form:option value="?????????">?????????</form:option>
													</form:select>
													<form:errors path="resumeGender" element="span" cssClass="text-danger inp_find" />
												</span>
											</div>
										</li>

										<li class="col_type">
											<div class="wrap_lab">
												<span class="ico_required">
													<span class="blind">????????????</span>
												</span>
												<label for="subTitle" class="lab_find">?????????</label>
											</div>
											<div class="wrap_input">
												<span class="box_input">
													<form:input path="resumeEmail" type="text" cssClass="inp_find" required="required" placeholder="???????????? ??????????????????."/>
													<form:errors path="resumeEmail" element="span" cssClass="text-danger inp_find" />
												</span>
												<p class="noti_inp">????????? ???????????? ??? ???????????? ???????????????.</p>
											</div>
											<div class="wrap_lab">
												<span class="ico_required">
													<span class="blind">????????????</span>
												</span>
												<label for="department" class="lab_find">????????????</label>
											</div>
											<div class="wrap_input">
												<span class="box_input">
													<form:input path="resumeTel" type="text" cssClass="inp_find" required="required" placeholder="??????????????? ??????????????????."/>
													<form:errors path="resumeTel" element="span" cssClass="text-danger inp_find" />
												</span>
												<p class="noti_inp">????????? ???????????? ??? ??????????????? ???????????????.</p>
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
													<input type="file" id="fileUpload" class="inp_upload" title="?????? ?????????" name="uploadedFile">
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
													<a href="${pageContext.request.contextPath }/resume" class="btn btn-block btn-danger btn-md">??????</a>
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