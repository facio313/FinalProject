<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 1.      허근주      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 바디 영역 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/jobs-view.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/layout.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/board.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/pattern.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/saramin/components.css" />
<style>
h2 {
	font-size: xx-large;
}
.carouselSection__Ni7CI {
	position: relative;
	max-width: 1280px;
	margin: 0 auto
}

.carouselArea__ZOr8q {
	overflow: hidden;
	padding: 15px 0 40px
}

@media screen and (min-width: 768px) {
	.carouselArea__ZOr8q {
		padding: 20px 0 60px
	}
}

@media screen and (min-width: 1025px) {
	.carouselArea__ZOr8q {
		margin: 0 28px
	}
}

.carouselArea__ZOr8q .swiper-wrapper {
	overflow: visible;
	margin: 0;
	padding: 0 15px
}

@media screen and (min-width: 768px) {
	.carouselArea__ZOr8q .swiper-wrapper {
		padding: 0 35px
	}
}

@media screen and (min-width: 1025px) {
	.carouselArea__ZOr8q .swiper-wrapper {
		padding: 0
	}
}

.carouselArea__ZOr8q .swiper-slide {
	padding: 0 5px;
	box-sizing: border-box
}

@media screen and (min-width: 1025px) {
	.carouselArea__ZOr8q .swiper-slide {
		padding: 0 12px
	}
}

.defaultContainer__WhvRw:after {
	content: "";
	display: block;
	clear: both
}

.defaultContainer__WhvRw .swiper-wrapper {
	padding: 0 15px
}

@media screen and (min-width: 768px) {
	.defaultContainer__WhvRw .swiper-wrapper {
		padding: 0 35px
	}
}

@media screen and (min-width: 1025px) {
	.defaultContainer__WhvRw .swiper-wrapper {
		padding: 0
	}
}

.defaultContainer__WhvRw .swiper-slide {
	width: 100%
}

.carouselButton__thbAQ {
	position: absolute;
	top: 50%;
	left: 0;
	display: none;
	width: 100%;
	max-width: 1376px;
	z-index: 1;
	margin-top: -48px
}

@media screen and (min-width: 1025px) {
	.carouselButton__thbAQ {
		display: block
	}
}

@media only screen and (min-width: 1200px) {
	.carouselButton__thbAQ {
		width: 100vw;
		left: 50%;
		-webkit-transform: translateX(-50%);
		transform: translateX(-50%)
	}
}

.tabArea__x7XR_ {
	background-color: #fff
}

.tabArea__x7XR_.isFixed__EgZsW {
	position: fixed;
	top: 56px;
	right: 0;
	left: 0;
	z-index: 99
}

.tabArea__x7XR_.themeBlack__DEf6M .tabTitle__vAxzl {
	color: #999
}

.tabArea__x7XR_.themeBlack__DEf6M .tab__Vrxbb[aria-selected=true] .tabTitle__vAxzl
	{
	color: #000
}

.tabArea__x7XR_.themeBlack__DEf6M .tab__Vrxbb[aria-selected=true] .tabCount__Zy8Lw
	{
	color: #8c8c8c
}

.tabArea__x7XR_.themeBlack__DEf6M .tab__Vrxbb[aria-selected=true] .tabInner__xcNw2::after
	{
	background-color: currentColor
}

.tabArea__x7XR_.typeDefault__I02JH {
	position: relative
}

.tabArea__x7XR_.typeDefault__I02JH .tab__Vrxbb {
	padding: 0 6px
}

.tabArea__x7XR_.typeDefault__I02JH .tabInner__xcNw2 {
	padding: 21px 4px 15px;
	line-height: 20px
}

.tabArea__x7XR_.typeDefault__I02JH .tabTitle__vAxzl {
	font-size: 16px
}

@media only screen and (min-width: 1025px) {
	.tabArea__x7XR_.typeDefault__I02JH .tabTitle__vAxzl {
		font-size: 17px
	}
}

.tabArea__x7XR_.typeDefault__I02JH .tab__Vrxbb[aria-selected=true] .tabInner__xcNw2::after
	{
	z-index: 1
}

@media only screen and (min-width: 1025px) {
	.tabArea__x7XR_.leftGradient__tOAu7 .tabBox__izQkU:before,
		.tabArea__x7XR_.rightGradient__YL_q2 .tabBox__izQkU:after {
		position: absolute;
		top: 0;
		bottom: 0;
		z-index: 1;
		width: 40px;
		content: ""
	}
	.tabArea__x7XR_.leftGradient__tOAu7 .tabBox__izQkU:before {
		left: 32px;
		background-image: -webkit-linear-gradient(right, rgba(255, 255, 255, 0)
			0%, #fff 70%);
		background-image: linear-gradient(to left, rgba(255, 255, 255, 0) 0%,
			#fff 70%)
	}
	.tabArea__x7XR_.rightGradient__YL_q2 .tabBox__izQkU::after {
		right: 32px;
		background-image: -webkit-linear-gradient(left, rgba(255, 255, 255, 0)
			0%, #fff 70%);
		background-image: linear-gradient(to right, rgba(255, 255, 255, 0) 0%,
			#fff 70%)
	}
}

.tabBox__izQkU {
	position: relative;
	max-width: 1280px;
	margin: 0 auto
}

.ScrollMenu_scrollContainer__PHmUL {
	padding: 0 12px
}

@media only screen and (min-width: 768px) {
	.ScrollMenu_scrollContainer__PHmUL {
		padding: 0 32px
	}
}

@media only screen and (min-width: 1025px) {
	.ScrollMenu_scrollContainer__PHmUL {
		margin: 0 32px;
		padding: 0
	}
}

.typeDefault__I02JH .ScrollMenu_scrollContainer__PHmUL {
	padding: 0 10px
}

@media only screen and (min-width: 768px) {
	.typeDefault__I02JH .ScrollMenu_scrollContainer__PHmUL {
		padding: 0 30px
	}
}

@media only screen and (min-width: 1025px) {
	.typeDefault__I02JH .ScrollMenu_scrollContainer__PHmUL {
		margin: 0 30px;
		padding: 0
	}
}

.tab__Vrxbb {
	display: inline-block;
	padding: 0 8px;
	vertical-align: top
}

.tab__Vrxbb[aria-selected=true] .tabInner__xcNw2 {
	position: relative
}

.tab__Vrxbb[aria-selected=true] .tabInner__xcNw2::after {
	position: absolute;
	right: 0;
	bottom: 0;
	left: 0;
	height: 3px;
	border-radius: 2px;
	background-color: #4a65f6;
	content: ""
}

.tab__Vrxbb[aria-selected=true] .tabTitle__vAxzl {
	color: #4a65f6
}

.tab__Vrxbb[aria-selected=true] .tabCount__Zy8Lw {
	color: #7e96ff
}

.tabInner__xcNw2 {
	padding: 18px 0 14px;
	line-height: 24px
}

.tabTitle__vAxzl {
	display: inline-block;
	font-size: 18px;
	font-weight: bold;
	vertical-align: top;
	color: #333
}

.tabCount__Zy8Lw {
	display: inline-block;
	margin-left: 4px;
	line-height: 17px;
	font-size: 14px;
	margin: 3px 0 0 3px;
	vertical-align: top;
	color: #8c8c8c
}

.icon__uT19S {
	display: inline-block;
	width: 4px;
	height: 4px;
	margin-left: 2px;
	border-radius: 50%;
	background-color: #fa605b;
	vertical-align: top
}

.classWrap__Z1VkJ {
	overflow: hidden
}

.section__ecPWG {
	word-break: break-all;
	word-wrap: break-word;
	padding: 40px 0;
	border-bottom: 1px solid rgba(126, 150, 255, .2)
}

@media screen and (min-width: 1025px) {
	.section__ecPWG {
		padding-bottom: 60px
	}
}

.section__ecPWG .classInfo__X8xC5, .section__ecPWG .SubTitle_SubTitleItem_titleSection__dr45H,
	.section__ecPWG .description__oonAm, .section__ecPWG .subDescription__fOanH,
	.section__ecPWG .ExpertButton_buttonArea__BpKXb {
	padding: 0 20px
}

@media only screen and (min-width: 768px) {
	.section__ecPWG .classInfo__X8xC5, .section__ecPWG .SubTitle_SubTitleItem_titleSection__dr45H,
		.section__ecPWG .description__oonAm, .section__ecPWG .subDescription__fOanH,
		.section__ecPWG .ExpertButton_buttonArea__BpKXb {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.section__ecPWG .classInfo__X8xC5, .section__ecPWG .SubTitle_SubTitleItem_titleSection__dr45H,
		.section__ecPWG .description__oonAm, .section__ecPWG .subDescription__fOanH,
		.section__ecPWG .ExpertButton_buttonArea__BpKXb {
		padding: 0
	}
}

.section__ecPWG .CarouselList_carouselArea__jhKDn {
	padding: 10px 0 0
}

@media screen and (min-width: 1025px) {
	.section__ecPWG .CarouselList_carouselArea__jhKDn {
		margin: 0 -5px
	}
	.section__ecPWG .CarouselList_carouselArea__jhKDn .swiper-slide {
		padding: 0 5px
	}
}

@media screen and (max-width: 1024px) {
	.section__ecPWG .CarouselList_defaultContainer__SoE2B .swiper-slide {
		width: 228px !important
	}
}

.section__ecPWG .ReservationCard_title__hCyBV {
	font-weight: normal
}

.classSection__yRwvM {
	word-break: break-all;
	word-wrap: break-word;
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 25px 20px
}

@media only screen and (min-width: 768px) {
	.classSection__yRwvM {
		padding-left: 40px;
		padding-right: 40px
	}
}

.subDescription__fOanH {
	margin-top: 2px;
	font-size: 13px;
	line-height: 18px;
	color: #8c8c8c
}

.exampleBadge___Omx0 {
	float: right;
	width: 47px;
	height: 24px;
	line-height: 24px;
	border-radius: 12px;
	background-color: rgba(74, 101, 246, .6);
	font-size: 13px;
	font-weight: 800;
	text-align: center;
	color: #fff;
	margin-top: -5px
}

.expertProfileSection__ZuiKZ {
	position: relative;
	border-top: 4px solid #f4f7ff;
	position: relative;
	border-bottom: 1px solid rgba(126, 150, 255, .2)
}

.expertProfileSection__ZuiKZ:after {
	position: absolute;
	top: -4px;
	right: 0;
	left: 0;
	height: 1px;
	background-color: rgba(126, 150, 255, .2);
	content: ""
}

.expertProfileSection__ZuiKZ .inner__sA63s {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 25px 20px
}

@media only screen and (min-width: 768px) {
	.expertProfileSection__ZuiKZ .inner__sA63s {
		padding-left: 40px;
		padding-right: 40px
	}
}

.videoSection__RYzjB .thumbnail__yBjc8 {
	position: relative;
	background-color: #000;
	text-align: center
}

@media screen and (min-width: 768px) {
	.videoSection__RYzjB .thumbnail__yBjc8 {
		padding: 0 40px
	}
}

.videoSection__RYzjB.normalScreen__vx4fg .u_rmcplayer .u_rmcplayer_video
	{
	height: 56.25vw;
	min-height: 180px;
	max-height: 500px
}

@media screen and (min-width: 769px) {
	.videoSection__RYzjB.normalScreen__vx4fg .u_rmcplayer .u_rmcplayer_video
		{
		max-height: 700px
	}
}

.videoSection__RYzjB .productThumbnail__XQwUR {
	height: 56.25vw;
	min-height: 180px;
	max-height: 500px;
	background: no-repeat center/cover
}

.videoSection__RYzjB .dimmed__VnijS {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, .4)
}

.videoSection__RYzjB .dimmed__VnijS.primary__OjmXk {
	background-color: rgba(0, 0, 0, .8)
}

.videoSection__RYzjB .videoNotify__bwfnA {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	height: 100%;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center
}

.videoSection__RYzjB .inner__sA63s {
	-webkit-box-flex: 1;
	-webkit-flex: 1 1 auto;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	text-align: center
}

.videoSection__RYzjB .title__Yajqn {
	font-size: 18px;
	line-height: 23px;
	color: #fff
}

.videoSection__RYzjB .text__gzq4k {
	margin-top: 6px;
	font-size: 14px;
	line-height: 20px;
	color: #999
}

.videoSection__RYzjB .envTestButton__zSmej {
	height: 42px;
	margin-top: 20px;
	padding: 0 14px 0 12px;
	border-radius: 12px;
	border: 1px solid rgba(126, 150, 255, .15);
	background-color: rgba(126, 150, 255, .04);
	font-size: 14px;
	font-weight: bold;
	color: #4a65f6
}

.videoSection__RYzjB .envTestButton__zSmej.primary__OjmXk {
	background-color: #7e96ff;
	color: #fff
}

.videoSection__RYzjB .iconPlayBtn__qsN9u {
	margin-bottom: -12px
}

@media screen and (min-width: 768px) {
	.videoSection__RYzjB .iconPlayBtn__qsN9u {
		width: 106px;
		height: 112px;
		margin-bottom: -24px
	}
}

.videoSection__RYzjB .playTime__t_22F {
	color: #fff;
	font-weight: bold;
	font-size: 15px;
	line-height: 18px
}

@media screen and (min-width: 768px) {
	.videoSection__RYzjB .playTime__t_22F {
		font-size: 30px;
		line-height: 36px
	}
}

.videoSection__RYzjB .notifyArea__ipdNF {
	background-color: #f4f7ff
}

.videoSection__RYzjB .ExpertButton_buttonArea__BpKXb {
	margin-top: 30px
}

.videoSection__RYzjB .ExpertButton_typeWhite__Ko52E {
	color: #4a65f6
}

.videoSection__RYzjB .ExpertButton_typeWhite__Ko52E:hover,
	.videoSection__RYzjB .ExpertButton_typeWhite__Ko52E:focus,
	.videoSection__RYzjB .ExpertButton_typeWhite__Ko52E:active {
	color: rgba(74, 101, 246, .5)
}

.videoSection__RYzjB .notifyInfo__QEuRs {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 20px 20px 30px
}

@media only screen and (min-width: 768px) {
	.videoSection__RYzjB .notifyInfo__QEuRs {
		padding-left: 40px;
		padding-right: 40px
	}
}

.videoSection__RYzjB .notifyTitle__Z4X5g {
	display: block;
	font-size: 16px;
	line-height: 23px;
	font-weight: bold
}

.videoSection__RYzjB .notifyList__WrJIY {
	margin-top: 10px
}

.videoSection__RYzjB .notifyItem__FFYKn {
	position: relative;
	padding-left: 7px;
	font-size: 14px;
	line-height: 20px;
	margin-top: 6px;
	color: rgba(76, 76, 76, .8)
}

.videoSection__RYzjB .notifyItem__FFYKn::before {
	position: absolute;
	top: 8px;
	left: 1px;
	width: 3px;
	height: 3px;
	border-radius: 50%;
	background-color: rgba(76, 76, 76, .8);
	content: ""
}

.videoSection__RYzjB .notifyItem__FFYKn .linkText__uVf8E {
	color: #7e96ff
}

.videoSection__RYzjB .notifyItem__FFYKn .linkText__uVf8E.textUnderline__vigh1
	{
	-webkit-text-decoration: underline #7e96ff;
	text-decoration: underline #7e96ff
}

.videoSection__RYzjB .Tooltip_button__iCmSK {
	padding: 4px 0 4px 4px;
	color: #4a65f6;
	text-decoration: underline
}

.videoSection__RYzjB .Tooltip_tooltipText__J3GWH {
	line-height: 20px
}

.videoSection__RYzjB .Tooltip_iconInfo__F9YXZ {
	display: none
}

.videoSection__RYzjB .Tooltip_tooltip__lJ5pp {
	width: 405px;
	padding: 24px 50px 24px 20px
}

.videoSection__RYzjB .Tooltip_inner__dX6kM+.Tooltip_inner__dX6kM {
	margin-top: 10px
}

.videoSection__RYzjB .Tooltip_inner__dX6kM li {
	margin-top: 10px
}

.videoSection__RYzjB .Tooltip_inner__dX6kM li:first-child {
	padding: 0
}

.videoSection__RYzjB .Tooltip_inner__dX6kM li:first-child::before {
	display: none
}

.videoSection__RYzjB .alertArea__ERKlE {
	padding: 0 20px;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	box-sizing: border-box;
	width: 100%;
	height: 48px;
	background-color: #fff1f1;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center
}

@media only screen and (min-width: 768px) {
	.videoSection__RYzjB .alertArea__ERKlE {
		padding-left: 40px;
		padding-right: 40px
	}
}

.videoSection__RYzjB .alert__r8pgR {
	-webkit-box-flex: 1;
	-webkit-flex: 1 1 auto;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	line-height: 19px;
	font-size: 14px;
	font-weight: 500;
	color: #ff7070;
	text-align: center
}

.productButtonArea__viTQq {
	margin-top: 20px
}

.classTargetBox__yQLrP {
	border-radius: 5px;
	box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .05);
	border: 1px solid rgba(126, 150, 255, .15);
	background-color: #fff;
	text-align: center;
	margin-top: 15px;
	padding: 30px 25px
}

@media screen and (min-width: 1025px) {
	.classTargetBox__yQLrP {
		margin-top: 20px;
		padding: 40px
	}
}

.classTargetBox__yQLrP .iconClassContent__j3DyP {
	width: 24px;
	height: 24px
}

@media screen and (min-width: 1025px) {
	.classTargetBox__yQLrP .iconClassContent__j3DyP {
		width: 36px;
		height: 36px
	}
}

.classTargetBox__yQLrP .classTargetText__rWdIt {
	font-size: 20px;
	line-height: 28px;
	margin-top: 8px;
	font-weight: bold
}

.classTargetBox__yQLrP .classTargetText__rWdIt strong {
	font-weight: bold;
	color: #4a65f6;
	background: -webkit-linear-gradient(rgba(255, 255, 255, 0) 0 20px,
		rgba(74, 101, 246, 0.12) 20px 25px, rgba(255, 255, 255, 0) 25px 100%);
	background: linear-gradient(rgba(255, 255, 255, 0) 0 20px,
		rgba(74, 101, 246, 0.12) 20px 25px, rgba(255, 255, 255, 0) 25px 100%)
}

@media screen and (min-width: 1025px) {
	.classTargetBox__yQLrP .classTargetText__rWdIt {
		font-size: 24px;
		line-height: 32px;
		margin-top: 20px
	}
}

.classInfoList__dsSy5 {
	margin-top: 20px
}

.classInfoList__dsSy5 .infoItem__dEq6U+.infoItem__dEq6U {
	margin-top: 25px
}

.classInfoList__dsSy5 .description__oonAm {
	margin-top: 4px;
	font-size: 15px;
	line-height: 23px
}

.classInfoList__dsSy5 .ExpertButton_buttonArea__BpKXb {
	margin-top: 20px;
	-webkit-box-pack: start;
	-webkit-justify-content: flex-start;
	-ms-flex-pack: start;
	justify-content: flex-start
}

.classInfoList__dsSy5 .ExpertButton_buttonExpert__p92Dm {
	-webkit-box-flex: 0;
	-webkit-flex: 0 1 auto;
	-ms-flex: 0 1 auto;
	flex: 0 1 auto;
	line-height: 18px
}

.classInfoList__dsSy5 .counselingTimeButton__iQoUJ {
	margin-left: 2px;
	height: 23px
}

.classInfoList__dsSy5 .iconArrow__VCrWf {
	display: inline-block;
	overflow: hidden;
	position: relative;
	width: 13px;
	height: 7px;
	margin: 6px 4px 0 4px;
	vertical-align: top
}

.classInfoList__dsSy5 .iconArrow__VCrWf:before {
	position: absolute;
	top: 50%;
	left: 50%;
	content: ""
}

.classInfoList__dsSy5 .iconArrow__VCrWf:before {
	width: 7px;
	height: 7px;
	-webkit-transform: translate(-50%, -50%) scale(1, 1.0769230769)
		rotate(45deg);
	transform: translate(-50%, -50%) scale(1, 1.0769230769) rotate(45deg);
	margin-top: -3px;
	border: 1px solid #4c4c4c;
	border-width: 0 1px 1px 0
}

.classInfoList__dsSy5 .iconArrow__VCrWf.isExpanded__nVcEF {
	display: inline-block;
	overflow: hidden;
	position: relative;
	width: 13px;
	height: 7px
}

.classInfoList__dsSy5 .iconArrow__VCrWf.isExpanded__nVcEF:before {
	position: absolute;
	top: 50%;
	left: 50%;
	content: ""
}

.classInfoList__dsSy5 .iconArrow__VCrWf.isExpanded__nVcEF:before {
	width: 7px;
	height: 7px;
	-webkit-transform: translate(-50%, -50%) scale(1, 1.0769230769)
		rotate(45deg);
	transform: translate(-50%, -50%) scale(1, 1.0769230769) rotate(45deg);
	margin-top: 3px;
	border: 1px solid #4c4c4c;
	border-width: 1px 0 0 1px
}

.classInfoList__dsSy5 .iconRightArrow__so27X {
	display: inline-block;
	vertical-align: top;
	margin-left: 6px;
	height: 8px;
	width: 8px;
	border: solid #000;
	border-width: 0 0 3px 3px
}

.classInfoList__dsSy5 .timeTableWrap__RVM_y {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: end;
	-webkit-align-items: flex-end;
	-ms-flex-align: end;
	align-items: flex-end
}

.classInfoList__dsSy5 .classTimeTable__gkRGx th, .classInfoList__dsSy5 .classTimeTable__gkRGx td
	{
	margin-top: 4px;
	font-size: 15px;
	line-height: 23px
}

.classInfoList__dsSy5 .classTimeTable__gkRGx th {
	font-weight: normal
}

.classInfoList__dsSy5 .classTimeTable__gkRGx td {
	padding-left: 4px
}

.scheduleList__FHkZR {
	margin: 5px -5px -5px
}

.scheduleList__FHkZR:after {
	content: "";
	display: block;
	clear: both
}

.scheduleItem__J8Nfl {
	float: left;
	width: 50%;
	padding: 5px;
	box-sizing: border-box
}

@media screen and (min-width: 1280px) {
	.scheduleItem__J8Nfl {
		width: 25%
	}
}

.curriculum__rtRW3 {
	display: block;
	margin-top: 6px;
	padding: 20px;
	border-radius: 5px;
	background-color: #f6f6f9
}

.curriculum__rtRW3:after {
	content: "";
	display: block;
	clear: both
}

.curriculum__rtRW3 .thumbnail__yBjc8 {
	position: relative;
	width: 138px;
	height: 78px;
	border-radius: 5px;
	background: #eff1ee no-repeat center/cover;
	margin: 0 2rem 15px 0
}

.curriculum__rtRW3 .thumbnail__yBjc8:after {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	border: 1px solid rgba(0, 0, 0, .05);
	border-radius: 5px;
	content: ""
}

@media screen and (min-width: 768px) {
	.curriculum__rtRW3 .thumbnail__yBjc8 {
		float: left;
		margin-bottom: 0
	}
}

.curriculum__rtRW3 .info__rsTy4 {
	position: relative
}

@media screen and (min-width: 768px) {
	.curriculum__rtRW3 .info__rsTy4 {
		overflow: hidden
	}
}

.curriculum__rtRW3 .name__mEHrn {
	display: block;
	font-size: 13px;
	line-height: 16px;
	color: rgba(0, 0, 0, .8)
}

.curriculum__rtRW3 .mainTitleArea__xg4g4 {
	margin-top: 6px;
	font-size: 1.8rem;
	line-height: 2.6rem
}

@media screen and (min-width: 768px) {
	.curriculum__rtRW3 .mainTitleArea__xg4g4 {
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		width: 100%
	}
}

.curriculum__rtRW3 .mainTitle__iEAuI {
	display: block
}

@media screen and (min-width: 768px) {
	.curriculum__rtRW3 .mainTitle__iEAuI {
		-webkit-box-flex: 1;
		-webkit-flex: 1 1 auto;
		-ms-flex: 1 1 auto;
		flex: 1 1 auto
	}
}

.curriculum__rtRW3 .count__QLE0T {
	position: absolute;
	top: -93px;
	right: 5px;
	color: rgba(0, 0, 0, .4)
}

@media screen and (min-width: 768px) {
	.curriculum__rtRW3 .count__QLE0T {
		position: static;
		-webkit-box-flex: 0;
		-webkit-flex: none;
		-ms-flex: none;
		flex: none;
		margin-left: 10px
	}
}

.curriculum__rtRW3 .text__gzq4k {
	margin-top: 12px;
	font-size: 14px;
	font-weight: bold;
	line-height: 17px;
	color: rgba(6, 6, 6, .5)
}

.curriculum__rtRW3 .iconCircleArrow__nAtko {
	margin: 1px 0 0 4px
}

.curriculum__rtRW3 .iconCircleArrow__nAtko circle {
	fill: #060606;
	opacity: .5
}

.curriculum__rtRW3 .iconCircleArrow__nAtko path {
	fill: #fff
}

.categoryList__J4CXs {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 15px 20px 31px
}

@media only screen and (min-width: 768px) {
	.categoryList__J4CXs {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media only screen and (min-width: 768px) {
	.categoryList__J4CXs {
		padding-top: 20px;
		padding-bottom: 51px
	}
}

.categoryItem__jNHuV {
	position: relative;
	display: inline-block;
	height: 3.8rem;
	margin: 0 6px 9px 0;
	padding: 0 13px;
	border-radius: calc(3.8rem * 0.5);
	box-sizing: border-box;
	box-shadow: 0 1px 4px 0 rgba(126, 150, 255, .3);
	background-color: rgba(255, 255, 255, .7);
	font-size: 1.4rem;
	line-height: 3.8rem;
	font-weight: 600;
	color: #7e96ff;
	vertical-align: top
}

.iconNew__VcXob {
	display: inline-block;
	vertical-align: top;
	background-color: #ff7070;
	width: 4px;
	height: 4px;
	border-radius: 50%;
	margin: .8rem 0 0 1px
}

.themeBlack__tHIg2 {
	background-color: #000
}

.themeBlack__tHIg2 .classWrap__tNgZW {
	background-color: #000
}

.themeBlack__tHIg2 .classWrap__tNgZW::before {
	position: absolute;
	top: -162px;
	right: 0;
	overflow: hidden;
	width: 254px;
	height: 644px;
	background:
		url("https://ssl.pstatic.net/static/kin/section/expert/m/classDeco1.png")
		no-repeat top left/506px auto;
	content: ""
}

.themeBlack__tHIg2 .Header_headerWrap__KIQJw {
	background-color: rgba(0, 0, 0, 0)
}

.themeBlack__tHIg2 .Header_isFixed___EvIG .Header_header__EQypd {
	background-color: #000
}

.curriculumEnd__a2l9D {
	position: relative;
	padding-bottom: 40px;
	color: #fff
}

.curriculumEnd__a2l9D .logoExpert__LtpHS {
	position: absolute;
	top: -10px;
	right: -6px;
	margin: 0 -10px;
	padding: 0 10px
}

@media screen and (min-width: 1025px) {
	.curriculumEnd__a2l9D .logoExpert__LtpHS {
		display: none
	}
}

.curriculumEnd__a2l9D .section__CFZLV {
	padding: 0 20px
}

@media only screen and (min-width: 768px) {
	.curriculumEnd__a2l9D .section__CFZLV {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.curriculumEnd__a2l9D .section__CFZLV {
		padding: 0
	}
}

.innerGrid__L9Ezr {
	position: fixed;
	width: 375px
}

.innerGrid__L9Ezr.isStand__twQM4 {
	position: absolute
}

.intro__F54dH {
	position: relative;
	margin: 24px 0 50px
}

@media screen and (min-width: 1025px) {
	.intro__F54dH {
		margin-top: 0
	}
}

.intro__F54dH .category__mbHY_ {
	margin-bottom: 1px;
	color: rgba(126, 150, 255, .8);
	font-size: 14px;
	font-weight: bold
}

.intro__F54dH .title__pOIqC {
	padding-right: 16%;
	line-height: 46px;
	font-size: 34px;
	font-weight: bold;
	word-break: keep-all
}

.intro__F54dH .title__pOIqC.titleZoom__KY7XF {
	line-height: 40px;
	font-size: 30px
}

@media screen and (min-width: 1025px) {
	.intro__F54dH .title__pOIqC {
		padding-right: 0
	}
}

.intro__F54dH .textArea__w_Xsx {
	overflow: hidden;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: end;
	-webkit-align-items: flex-end;
	-ms-flex-align: end;
	align-items: flex-end;
	width: 100%;
	margin-top: 14px;
	opacity: .7
}

.intro__F54dH .textArea__w_Xsx .text__c6E7d {
	display: block;
	display: -webkit-box;
	overflow: hidden;
	text-overflow: ellipsis;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	-webkit-box-flex: 1;
	-webkit-flex: 1 1 auto;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	max-height: 46px;
	font-size: 15px;
	line-height: 23px
}

.intro__F54dH .textArea__w_Xsx .button__YYfQM {
	-webkit-box-flex: 0;
	-webkit-flex: none;
	-ms-flex: none;
	flex: none;
	padding-left: 5px;
	font-size: 15px;
	font-weight: bold;
	line-height: 23px;
	color: #fff
}

.intro__F54dH .textArea__w_Xsx.more__Dw3sO {
	display: block
}

.intro__F54dH .textArea__w_Xsx.more__Dw3sO .text__c6E7d {
	-webkit-box-flex: 0;
	-webkit-flex: none;
	-ms-flex: none;
	flex: none;
	display: inline;
	max-height: 100%
}

.profile__IOgEL {
	position: relative;
	margin-top: 40px;
	border: 1px solid rgba(126, 150, 255, .15);
	border-radius: 5px;
	box-shadow: 0 6px 8px 0 rgba(126, 150, 255, .1);
	background-color: #fff;
	overflow: hidden
}

@media screen and (min-width: 1025px) {
	.profile__IOgEL {
		margin-top: 0
	}
}

.profile__IOgEL .expertInfoArea__G7QdU {
	position: relative;
	padding: 20px 120px 15px 20px
}

.profile__IOgEL .expertInfoArea__G7QdU.isOto__ThA_y {
	background-color: #525b82
}

.profile__IOgEL .expertInfoArea__G7QdU.isVod__TJn0W {
	background-color: #413d81
}

.profile__IOgEL .userThumbnail__AQj5I {
	position: absolute;
	width: 80px;
	height: 80px;
	border-radius: 50%;
	background: #eff1ee no-repeat center/cover;
	overflow: hidden;
	right: 20px;
	z-index: 1;
	margin-top: -40px
}

.profile__IOgEL .userThumbnail__AQj5I:after {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	border: 1px solid rgba(0, 0, 0, .05);
	border-radius: 50%;
	content: ""
}

.profile__IOgEL .userName__TmuO6 {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: block;
	position: relative;
	font-size: 18px;
	line-height: 22px;
	font-weight: bold;
	color: #fff
}

.profile__IOgEL .introduce__Cdhof {
	display: block;
	display: -webkit-box;
	overflow: hidden;
	text-overflow: ellipsis;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	position: relative;
	margin-top: 5px;
	font-size: 13px;
	line-height: 16px;
	max-height: 32px;
	color: rgba(255, 255, 255, .7)
}

.profile__IOgEL .expertCareerArea__hHHmE {
	position: relative;
	padding: 15px 20px 20px
}

.profile__IOgEL .ExpertButton_buttonArea__SNGTT {
	-webkit-box-pack: start;
	-webkit-justify-content: flex-start;
	-ms-flex-pack: start;
	justify-content: flex-start;
	margin-top: 13px
}

.profile__IOgEL .ExpertButton_buttonExpert__aM1aU {
	position: relative;
	-webkit-box-flex: 0;
	-webkit-flex: 0 1 auto;
	-ms-flex: 0 1 auto;
	flex: 0 1 auto;
	border: none;
	color: #666
}

.profile__IOgEL.themeProfileBlack__Ppoac, .profile__IOgEL.themeProfilePink__TZlle,
	.profile__IOgEL.themeProfileGreen__yZpw6, .profile__IOgEL.themeProfileBlue__i8DUd,
	.profile__IOgEL.themeProfilePurple__PH4IR {
	box-shadow: none;
	background-color: rgba(0, 0, 0, 0);
	border: none
}

.profile__IOgEL.themeProfileBlack__Ppoac .expertInfoArea__G7QdU::before,
	.profile__IOgEL.themeProfileBlack__Ppoac .expertCareerArea__hHHmE::before,
	.profile__IOgEL.themeProfilePink__TZlle .expertInfoArea__G7QdU::before,
	.profile__IOgEL.themeProfilePink__TZlle .expertCareerArea__hHHmE::before,
	.profile__IOgEL.themeProfileGreen__yZpw6 .expertInfoArea__G7QdU::before,
	.profile__IOgEL.themeProfileGreen__yZpw6 .expertCareerArea__hHHmE::before,
	.profile__IOgEL.themeProfileBlue__i8DUd .expertInfoArea__G7QdU::before,
	.profile__IOgEL.themeProfileBlue__i8DUd .expertCareerArea__hHHmE::before,
	.profile__IOgEL.themeProfilePurple__PH4IR .expertInfoArea__G7QdU::before,
	.profile__IOgEL.themeProfilePurple__PH4IR .expertCareerArea__hHHmE::before
	{
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	content: ""
}

.profile__IOgEL.themeProfileBlack__Ppoac .ExpertButton_buttonExpert__aM1aU,
	.profile__IOgEL.themeProfilePink__TZlle .ExpertButton_buttonExpert__aM1aU,
	.profile__IOgEL.themeProfileGreen__yZpw6 .ExpertButton_buttonExpert__aM1aU,
	.profile__IOgEL.themeProfileBlue__i8DUd .ExpertButton_buttonExpert__aM1aU,
	.profile__IOgEL.themeProfilePurple__PH4IR .ExpertButton_buttonExpert__aM1aU
	{
	color: #fff
}

.profile__IOgEL.themeProfilePink__TZlle .expertInfoArea__G7QdU::before,
	.profile__IOgEL.themeProfileGreen__yZpw6 .expertInfoArea__G7QdU::before,
	.profile__IOgEL.themeProfileBlue__i8DUd .expertInfoArea__G7QdU::before,
	.profile__IOgEL.themeProfilePurple__PH4IR .expertInfoArea__G7QdU::before
	{
	background-color: rgba(0, 0, 0, .35)
}

.profile__IOgEL.themeProfilePink__TZlle .expertCareerArea__hHHmE::before,
	.profile__IOgEL.themeProfileGreen__yZpw6 .expertCareerArea__hHHmE::before,
	.profile__IOgEL.themeProfileBlue__i8DUd .expertCareerArea__hHHmE::before,
	.profile__IOgEL.themeProfilePurple__PH4IR .expertCareerArea__hHHmE::before
	{
	background-color: rgba(0, 0, 0, .15)
}

.profile__IOgEL.themeProfilePink__TZlle .ExpertButton_buttonExpert__aM1aU,
	.profile__IOgEL.themeProfileGreen__yZpw6 .ExpertButton_buttonExpert__aM1aU,
	.profile__IOgEL.themeProfileBlue__i8DUd .ExpertButton_buttonExpert__aM1aU,
	.profile__IOgEL.themeProfilePurple__PH4IR .ExpertButton_buttonExpert__aM1aU
	{
	background-color: rgba(255, 255, 255, .1)
}

.profile__IOgEL.themeProfileBlack__Ppoac .expertInfoArea__G7QdU::before
	{
	background-color: rgba(255, 255, 255, .05)
}

.profile__IOgEL.themeProfileBlack__Ppoac .expertCareerArea__hHHmE::before
	{
	background-color: rgba(255, 255, 255, .1)
}

.profile__IOgEL.themeProfileBlack__Ppoac .expertInfoArea__G7QdU,
	.profile__IOgEL.themeProfileBlack__Ppoac .expertCareerArea__hHHmE {
	background-color: #000
}

.profile__IOgEL.themeProfileBlack__Ppoac .ExpertButton_buttonExpert__aM1aU
	{
	background-color: rgba(255, 255, 255, .05)
}

.profile__IOgEL.themeProfilePink__TZlle .expertInfoArea__G7QdU,
	.profile__IOgEL.themeProfilePink__TZlle .expertCareerArea__hHHmE {
	background-color: #d96161
}

.profile__IOgEL.themeProfileGreen__yZpw6 .expertInfoArea__G7QdU,
	.profile__IOgEL.themeProfileGreen__yZpw6 .expertCareerArea__hHHmE {
	background-color: #306a4b
}

.profile__IOgEL.themeProfileBlue__i8DUd .expertInfoArea__G7QdU,
	.profile__IOgEL.themeProfileBlue__i8DUd .expertCareerArea__hHHmE {
	background-color: #5277b8
}

.profile__IOgEL.themeProfilePurple__PH4IR .expertInfoArea__G7QdU,
	.profile__IOgEL.themeProfilePurple__PH4IR .expertCareerArea__hHHmE {
	background-color: #6b68a8
}

.SubTitle_SubTitleItem_titleSection__aua0x {
	padding: 0 20px;
	margin-top: 48px
}

@media only screen and (min-width: 768px) {
	.SubTitle_SubTitleItem_titleSection__aua0x {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.SubTitle_SubTitleItem_titleSection__aua0x {
		padding: 0
	}
}

.SubTitle_SubTitleItem_titleSection__aua0x .SubTitle_SubTitleItem_title__gH3IL .titleCount__H0Wkt
	{
	display: inline-block;
	min-width: 22px;
	height: 22px;
	margin: 3px 0 0 7px;
	padding: 0 5px;
	box-sizing: border-box;
	border-radius: 15px;
	background-color: #4a65f6;
	color: #fff;
	font-size: 16px;
	font-weight: bold;
	line-height: 22px;
	text-align: center;
	vertical-align: top
}

@media screen and (min-width: 1025px) {
	.SubTitle_SubTitleItem_titleSection__aua0x .SubTitle_SubTitleItem_title__gH3IL .titleCount__H0Wkt
		{
		margin-top: 7px
	}
}

.description__KA75R {
	padding: 0 20px;
	margin-top: 4px;
	font-size: 14px;
	font-weight: 500;
	line-height: 20px;
	color: rgba(255, 255, 255, .5)
}

@media only screen and (min-width: 768px) {
	.description__KA75R {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.description__KA75R {
		padding: 0
	}
}

.card__CPGJk {
	position: relative;
	overflow: hidden;
	border-radius: 5px;
	border: 1px solid rgba(126, 150, 255, .15);
	background-color: #fff;
	word-break: break-word;
	word-wrap: break-word
}

@media screen and (min-width: 1025px) {
	.card__CPGJk:hover {
		box-shadow: 0 6px 8px 0 rgba(126, 150, 255, .1)
	}
}

.card__CPGJk.dimmed__EPUJp .title__drg4_ {
	opacity: .4
}

.cardLink__kZaup {
	display: block
}

.cardMain__Q7J1J {
	position: relative;
	padding: 15px;
	background: #6076ec no-repeat center right;
	box-sizing: border-box
}

.cardMain__Q7J1J.typeCircle__E625u {
	background-image:
		url("https://ssl.pstatic.net/static/kin/section/expert/m/bgCardCircle.png");
	background-size: 159px auto
}

.cardMain__Q7J1J.typeSquare__OCYA_ {
	background-image:
		url("https://ssl.pstatic.net/static/kin/section/expert/m/bgCardSquare.png");
	background-size: 188px auto
}

.cardMain__Q7J1J.typeTriangle__sKnFj {
	background-image:
		url("https://ssl.pstatic.net/static/kin/section/expert/m/bgCardTriangle.png");
	background-size: 143px auto
}

.cardMain__Q7J1J.typeBookmark__x2hiI {
	padding-right: 54px
}

.cardContent__JA24X {
	padding: 12px 15px
}

.card__CPGJk .bookmarkButton__s5n6L {
	position: absolute;
	top: 9px;
	right: 9px;
	padding: 5px
}

.card__CPGJk .bookmarkButton__s5n6L[aria-pressed=false] .iconHeart__GF7vQ path
	{
	fill-opacity: .15;
	fill: #000
}

.thumbnail__eALK_ {
	height: 100%;
	opacity: .2;
	background: no-repeat center/cover
}

.thumbnailArea__QCEP3 {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0
}

.mainTitle__uPWqg {
	display: block;
	display: -webkit-box;
	overflow: hidden;
	text-overflow: ellipsis;
	-webkit-line-clamp: 3;
	-webkit-box-orient: vertical;
	position: relative;
	height: 75px;
	font-size: 19px;
	font-weight: 600;
	line-height: 25px;
	color: #fff
}

.title__drg4_ {
	display: block;
	display: -webkit-box;
	overflow: hidden;
	text-overflow: ellipsis;
	-webkit-line-clamp: 2;
	-webkit-box-orient: vertical;
	height: 42px;
	font-size: 15px;
	line-height: 21px;
	color: #4c4c4c
}

.title__drg4_.typeDefault__ZaMUc {
	color: #8c8c8c
}

.text__bnojS {
	margin-top: 4px;
	color: #333;
	font-size: 15px;
	line-height: 26px
}

.ItemPrice_price__Ewne8 {
	margin-top: 4px
}

.SubProfile_itemProfile__UCrBb {
	padding: 12px 15px
}

.SubProfile_itemProfile__UCrBb:before {
	position: absolute;
	top: 0;
	right: 15px;
	left: 15px;
	height: 1px;
	background-color: rgba(156, 174, 228, .1);
	content: ""
}

.foldInner__Rukpz {
	word-break: break-all;
	word-wrap: break-word;
	padding: 20px 0 17px;
}

@media screen and (min-width: 1025px) {
	.foldInner__Rukpz {
		padding-bottom: 47px;
	}
}

.expertProductEnd__jk5tK {
	overflow: hidden
}

.expertProductEnd__jk5tK .SubTitle_titleSection__IY__2:first-child {
	padding-top: 25px
}

@media screen and (min-width: 1025px) {
	.expertProductEnd__jk5tK .TabList_tabArea__ePuxY:not (.TabList_isFixed__E45bg
		 ) .TabList_ScrollMenu_scrollContainer__MouQX {
		margin: 0 -8px
	}
}

.innerGrid__Czrt2 {
	position: fixed;
	width: 375px;
	z-index: 2
}

.innerGrid__Czrt2.isStand__ags7Z {
	position: absolute
}

.productClassCategory__tnDS0 {
	border-top: 1px solid rgba(126, 150, 255, .2);
	background-color: #f4f7ff
}

.productDetailReview__a9JnA {
	background-color: #fafbff;
	padding-bottom: 25px
}

.productDetailReview__a9JnA .titleArea__IaNCJ {
	padding: 36px 20px 0;
	position: relative;
	height: 135px;
	margin-bottom: 45px;
	box-sizing: border-box
}

@media only screen and (min-width: 768px) {
	.productDetailReview__a9JnA .titleArea__IaNCJ {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productDetailReview__a9JnA .titleArea__IaNCJ {
		padding-left: 24px;
		padding-right: 24px
	}
}

.productDetailReview__a9JnA .reviewInfoArea__liY13 {
	position: relative;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	box-sizing: border-box;
	height: 105px;
	margin-top: 8px;
	padding: 20px 0;
	border-radius: 5px;
	box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .05);
	border: 1px solid rgba(126, 150, 255, .15);
	background-color: #fff
}

.productDetailReview__a9JnA .reviewInfoArea__liY13 .isDimmed__kXuxH {
	opacity: .15
}

.productDetailReview__a9JnA .reviewInfoItem__CzhEi {
	-webkit-flex-basis: 50%;
	-ms-flex-preferred-size: 50%;
	flex-basis: 50%;
	text-align: center
}

.productDetailReview__a9JnA .reviewInfoItem__CzhEi+.reviewInfoItem__CzhEi
	{
	border-left: 1px solid rgba(126, 150, 255, .2)
}

.productDetailReview__a9JnA .infoTitle__p2nv5 {
	margin-top: 6px;
	font-size: 13px;
	line-height: 16px;
	color: rgba(0, 0, 0, .5)
}

.productDetailReview__a9JnA .infoDesc__Uod6L {
	margin-top: 5px;
	font-size: 24px;
	line-height: 28px;
	font-weight: bold
}

.productDetailReview__a9JnA .infoDesc__Uod6L .iconStar__ZXN6o {
	margin-right: 5px
}

.productDetailReview__a9JnA .reviewListArea__qLXdP {
	padding: 0 20px
}

@media only screen and (min-width: 768px) {
	.productDetailReview__a9JnA .reviewListArea__qLXdP {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productDetailReview__a9JnA .reviewListArea__qLXdP {
		padding: 0 24px
	}
}

.linkReport__el96l {
	display: inline-block;
	vertical-align: top;
	font-size: 13px;
	line-height: 20px;
	color: #8c8c8c;
	margin-top: 16px
}

.linkReport__el96l .iconArrow__xG3fN {
	display: inline-block;
	overflow: hidden;
	position: relative;
	width: 5px;
	height: 10px;
	margin: 5px 0 0 5px;
	vertical-align: top
}

.linkReport__el96l .iconArrow__xG3fN:before {
	position: absolute;
	top: 50%;
	left: 50%;
	content: ""
}

.linkReport__el96l .iconArrow__xG3fN:before {
	width: 5px;
	height: 5px;
	-webkit-transform: translate(-50%, -50%) scale(1, 1) rotate(45deg);
	transform: translate(-50%, -50%) scale(1, 1) rotate(45deg);
	margin-left: -2px;
	border: 1px solid #8c8c8c;
	border-width: 1px 1px 0 0
}

.productInfo__tCeN1 {
	position: relative;
	z-index: 0;
	padding: 40px 20px 0
}

.productInfo__tCeN1 .infoTitleSection__JTGaQ {
	position: relative;
	width: 100%;
	text-align: left;
	height: 58px;
	padding: 5px 0;
	border-bottom: 1px solid rgba(237, 239, 249, .55)
}

.productInfo__tCeN1 .infoTitleSection__JTGaQ .iconArrow__xG3fN {
	position: absolute;
	top: 50%;
	right: 3px;
	margin-top: -2px;
	width: 9px;
	height: 9px;
	border: 1px #4c4c4c;
	border-style: solid solid none none;
	-webkit-transform: rotate(-45deg);
	transform: rotate(-45deg)
}

.productInfo__tCeN1 .infoTitleSection__JTGaQ[aria-expanded=true] {
	border-bottom: none
}

.productInfo__tCeN1 .infoTitleSection__JTGaQ[aria-expanded=true] .iconArrow__xG3fN
	{
	margin-top: -9px;
	-webkit-transform: rotate(135deg);
	transform: rotate(135deg)
}

.productInfo__tCeN1 .infoTitle__p2nv5 {
	display: block;
	position: relative;
	font-weight: 600;
	font-size: 16px;
	line-height: 18px
}

.productInfo__tCeN1 .infoTitle__p2nv5 .desc__V2ZsN {
	padding-left: 8px;
	font-weight: 400;
	color: #4a65f6
}

.productInfo__tCeN1 .infoTitle__p2nv5 .link__yOb5T {
	position: absolute;
	top: 0;
	right: 0;
	font-weight: 400;
	font-size: 14px;
	line-height: 18px;
	color: #8c8c8c
}

.productInfo__tCeN1 .infoTitle__p2nv5 .link__yOb5T .iconMore__jVu0i {
	display: inline-block;
	overflow: hidden;
	position: relative;
	width: 5px;
	height: 10px;
	margin-left: 4px
}

.productInfo__tCeN1 .infoTitle__p2nv5 .link__yOb5T .iconMore__jVu0i:before
	{
	position: absolute;
	top: 50%;
	left: 50%;
	content: ""
}

.productInfo__tCeN1 .infoTitle__p2nv5 .link__yOb5T .iconMore__jVu0i:before
	{
	width: 5px;
	height: 5px;
	-webkit-transform: translate(-50%, -50%) scale(1, 1) rotate(45deg);
	transform: translate(-50%, -50%) scale(1, 1) rotate(45deg);
	margin-left: -2px;
	border: 1px solid #8c8c8c;
	border-width: 1px 1px 0 0
}

.productInfo__tCeN1 .infoBox__yCTUH {
	margin-top: 15px;
	padding: 24px;
	border-radius: 25px;
	font-size: 15px;
	line-height: 22px;
	background-color: #fff;
	box-shadow: 0 10px 30px 0 rgba(150, 153, 159, .3)
}

.productInfo__tCeN1 .infoBox__yCTUH:after {
	content: "";
	display: block;
	clear: both
}

.productInfo__tCeN1 .productText__Iwhej {
	margin-top: 15px;
	padding-top: 18px;
	border-top: 1px solid #f1f5ff;
	font-size: 15px;
	line-height: 22px
}

.productInfo__tCeN1 .infoEmpty__wYn2s {
	padding: 46px 0 45px;
	text-align: center;
	color: rgba(150, 153, 159, .4)
}

.productInfo__tCeN1 .expertPoint__Vb9u5 {
	line-height: 18px
}

.foldListGroup__zVskA {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 40px 20px;
}

@media only screen and (min-width: 768px) {
	.foldListGroup__zVskA {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.foldListGroup__zVskA {
		padding: 60px 0
	}
}

.foldListGroup__zVskA .foldItem__YVcIm+.foldItem__YVcIm {
	margin-top: 6px
}

.foldListGroup__zVskA .foldItem__YVcIm .SubTitle_titleSectionMore__c98To
	{
	width: 100%;
	padding: 17px 0 7px;
	border-bottom: 2px solid #000;
}

.foldListGroup__zVskA .linkArea__y22hv {
	margin-top: 25px
}

.foldListGroup__zVskA .linkArea__y22hv .link__yOb5T {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	width: 100%;
	height: 67px;
	padding: 0 20px;
	border: 1px solid rgba(126, 150, 255, .15);
	border-radius: 5px;
	background-color: #fff;
	box-sizing: border-box;
	box-shadow: 0 2px 6px 0 rgba(0, 0, 0, .05);
	font-size: 16px;
	font-weight: bold
}

.foldListGroup__zVskA .linkArea__y22hv .linkText__jqcAG {
	-webkit-box-flex: 1;
	-webkit-flex: 1 1 auto;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto
}

.etcInfoList__ETD5b {
	border-top: 1px solid rgba(0, 0, 0, .1);
}

.etcInfoList__ETD5b .title__hxpoI, .etcInfoList__ETD5b .text__Y7rQf {
	display: block;
	padding: 14px 15px;
	font-size: 14px;
	line-height: 20px
}

.etcInfoList__ETD5b .title__hxpoI {
	width: 120px;
	background-color: #f6f7fc;
	box-sizing: border-box;
	word-break: keep-all;
	-webkit-flex-shrink: 0;
	-ms-flex-negative: 0;
	flex-shrink: 0
}

@media screen and (min-width: 1025px) {
	.etcInfoList__ETD5b .title__hxpoI {
		width: 150px
	}
}

.etcInfoList__ETD5b .text__Y7rQf {
	-webkit-box-flex: 1;
	-webkit-flex: 1 1 auto;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	color: #4c4c4c
}

.twoColumnList__ZM9kj {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	-webkit-flex-wrap: wrap;
	-ms-flex-wrap: wrap;
	flex-wrap: wrap
}

@media screen and (min-width: 1200px) {
	.twoColumnList__ZM9kj .etcInfoItem__K2RcM {
		width: 50%
	}
	.twoColumnList__ZM9kj .etcInfoItem__K2RcM:nth-child(2n+1):last-child {
		width: 100%
	}
}

.etcInfoItem__K2RcM {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	border-bottom: 1px solid rgba(0, 0, 0, .1)
}

.productFinance__cZMlN {
	margin-top: 20px
}

.productFinance__cZMlN .textBox__ECG4L {
	padding: 15px;
	margin-top: 12px;
	background-color: #f6f7fc
}

.productFinance__cZMlN .text__Y7rQf {
	font-size: 14px;
	line-height: 20px;
	color: #4c4c4c
}

.productFinance__cZMlN .link__yOb5T {
	display: block;
	margin-top: 2px;
	color: #8c8c8c
}

.productFinance__cZMlN .link__yOb5T .iconArrow__xG3fN {
	display: inline-block;
	overflow: hidden;
	position: relative;
	width: 5px;
	height: 10px;
	margin-left: 4px
}

.productFinance__cZMlN .link__yOb5T .iconArrow__xG3fN:before {
	position: absolute;
	top: 50%;
	left: 50%;
	content: ""
}

.productFinance__cZMlN .link__yOb5T .iconArrow__xG3fN:before {
	width: 5px;
	height: 5px;
	-webkit-transform: translate(-50%, -50%) scale(1, 1) rotate(45deg);
	transform: translate(-50%, -50%) scale(1, 1) rotate(45deg);
	margin-left: -2px;
	border: 1px solid #8c8c8c;
	border-width: 1px 1px 0 0
}

.productCoupon__YUZC9 {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 0 20px 26px;
	background-color: #fafbff
}

@media only screen and (min-width: 768px) {
	.productCoupon__YUZC9 {
		padding-left: 40px;
		padding-right: 40px
	}
}

.TabList_tabArea__ePuxY {
	overflow: hidden;
	position: relative
}

.TabList_tabArea__ePuxY:before {
	position: absolute;
	right: 0;
	bottom: 0;
	left: 0;
	height: 1px;
	background-color: rgba(126, 150, 255, .1);
	content: ""
}

@media screen and (min-width: 768px) {
	.TabList_tabArea__ePuxY:before {
		height: 2px
	}
}

.dividingLine__W3LNZ {
	height: 2px;
	background-color: #edeff9
}

.productVideoPreview__coJUj {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 40px 20px;
	border-bottom: 1px solid rgba(126, 150, 255, .2)
}

@media only screen and (min-width: 768px) {
	.productVideoPreview__coJUj {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productVideoPreview__coJUj {
		padding: 60px 0
	}
}

.productVideoPreview__coJUj .productVideo__F2uzl {
	vertical-align: top;
	margin-top: 11px;
	width: 100%;
	min-height: 180px;
	max-height: 500px;
	background-color: #000
}

@media screen and (min-width: 1025px) {
	.productVideoPreview__coJUj .productVideo__F2uzl {
		max-height: 700px
	}
}

.productDescription__voIpg {
	position: relative;
	box-sizing: border-box;
	margin-top: 40px;
	max-height: 600px;
	overflow: hidden
}

@media screen and (min-width: 1025px) {
	.productDescription__voIpg {
		margin-top: 60px
	}
}

.productDescription__voIpg .SubTitle_SubTitleItem_titleSection__SkVkP {
	padding: 0 20px
}

@media only screen and (min-width: 768px) {
	.productDescription__voIpg .SubTitle_SubTitleItem_titleSection__SkVkP {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productDescription__voIpg .SubTitle_SubTitleItem_titleSection__SkVkP {
		padding: 0
	}
}

.productDescription__voIpg.isExpanded__OXxGk {
	max-height: none
}

.productDescription__voIpg .ExpertButton_buttonArea__T6OOy {
	position: absolute;
	right: 0;
	bottom: 0;
	left: 0;
	padding: 86px 20px 0;
	box-sizing: border-box;
	z-index: 1;
	height: 136px;
	background-image: -webkit-linear-gradient(top, rgba(255, 255, 255, 0),
		#fff 57%);
	background-image: linear-gradient(to bottom, rgba(255, 255, 255, 0),
		#fff 57%)
}

@media only screen and (min-width: 768px) {
	.productDescription__voIpg .ExpertButton_buttonArea__T6OOy {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productDescription__voIpg .ExpertButton_buttonArea__T6OOy {
		padding: 86px 0 0
	}
}

.productDescription__voIpg .ExpertButton_buttonArea__T6OOy .iconCircleArrow__dGBF1
	{
	-webkit-transform: rotate(90deg);
	transform: rotate(90deg);
	margin-left: 3px
}

.productDescription__voIpg .ExpertButton_buttonArea__T6OOy .iconCircleArrow__dGBF1 circle
	{
	stroke: #7e96ff
}

.endContentViewer__lnaUp {
	word-break: break-all;
	word-wrap: break-word;
	padding: 30px 0 30px
}

.endContentViewer__lnaUp .productDetailText__Gnana {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 0 20px;
	font-size: 15px;
	font-weight: 300;
	line-height: 22px
}

@media only screen and (min-width: 768px) {
	.endContentViewer__lnaUp .productDetailText__Gnana {
		padding-left: 40px;
		padding-right: 40px
	}
}

.expertTagSection__jBIIu {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 0 20px 22px
}

@media only screen and (min-width: 768px) {
	.expertTagSection__jBIIu {
		padding-left: 40px;
		padding-right: 40px
	}
}

.expertTagSection__jBIIu .ItemTag_itemTagWrap__VCyQS {
	margin-top: 0
}

.expertTagSection__jBIIu .ItemTag_itemTagWrap__VCyQS::before,
	.expertTagSection__jBIIu .ItemTag_itemTagWrap__VCyQS::after {
	display: none
}

.expertTagSection__jBIIu .ItemTag_itemTag__U0C_A {
	white-space: normal
}

.expertTagSection__jBIIu .ItemTag_tag__x3Hvo {
	height: 34px;
	line-height: 34px;
	border-radius: 2px;
	padding: 0 12px;
	font-size: 14px;
	margin: 0 8px 8px 0
}

.expertTagSection__jBIIu .ItemTag_tag__x3Hvo+.ItemTag_tag__x3Hvo {
	margin-left: 0
}

.expertProfileSection__ZdK0y {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 25px 20px;
	position: relative;
	border-top: 1px solid rgba(126, 150, 255, .2);
	border-bottom: 6px solid #f4f7ff
}

@media only screen and (min-width: 768px) {
	.expertProfileSection__ZdK0y {
		padding-left: 40px;
		padding-right: 40px
	}
}

.expertProfileSection__ZdK0y::after {
	position: absolute;
	right: 0;
	bottom: 0;
	left: 0;
	height: 1px;
	background-color: rgba(126, 150, 255, .2);
	content: ""
}

.productRecommend__eQ3MU {
	overflow: hidden;
	background-color: #f4f7ff
}

.recommendArea__NAUMW .SubTitle_titleSection2__QaooR .SubTitle_titleWrap__HD0r3
	{
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 100%
}

.recommendArea__NAUMW .SubTitle_titleSection2__QaooR .SubTitle_titleArea__dY6SZ
	{
	overflow: hidden;
	-webkit-box-flex: 1;
	-webkit-flex: 1 1 auto;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto
}

.recommendArea__NAUMW .SubTitle_titleSection2__QaooR .SubTitle_title__ULWRc
	{
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	box-sizing: border-box;
	overflow: hidden
}

.recommendArea__NAUMW .SubTitle_titleSection2__QaooR .highlight__auCIE {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: inline-block;
	padding-right: 4px;
	vertical-align: top;
	color: #4a65f6
}

.recommendArea__NAUMW .SubTitle_titleSection2__QaooR .text__Y7rQf {
	-webkit-box-flex: 0;
	-webkit-flex: none;
	-ms-flex: none;
	flex: none;
	display: inline-block;
	vertical-align: top
}

.recommendArea__NAUMW .SubTitle_titleSection2__QaooR .SubTitle_optionArea__zKeUX
	{
	position: static;
	-webkit-box-flex: 0;
	-webkit-flex: none;
	-ms-flex: none;
	flex: none;
	margin-left: 10px
}

.recommendArea__NAUMW:first-child .SubTitle_titleSection2__QaooR {
	padding-top: 40px
}

@media screen and (min-width: 768px) {
	.recommendArea__NAUMW:first-child .SubTitle_titleSection2__QaooR {
		padding-top: 60px
	}
}

@media screen and (max-width: 1024px) {
	.recommendArea__NAUMW .CarouselList_defaultContainer__hvglz .swiper-slide
		{
		width: 228px !important
	}
}

.wrapProductReview__QVr1Z {
	padding-bottom: 100px
}

.innerGrid__Czrt2 .productInfoArea__AF1Ny {
	position: relative;
	margin-bottom: 15px;
	box-shadow: 0 6px 8px 0 rgba(126, 150, 255, .1);
	border: 1px solid rgba(126, 150, 255, .15);
	border-radius: 5px;
	background-color: #fff
}

.innerGrid__Czrt2 .gridBox__u0kfF {
	padding: 4px 20px 24px
}

.innerGrid__Czrt2 .productButtonArea__KKJKe {
	position: relative;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	padding-top: 4px
}

.innerGrid__Czrt2 .productButtonArea__KKJKe .ExpertButton_buttonArea__T6OOy svg
	{
	margin-top: 0
}

.innerGrid__Czrt2 .bookmarkButtonArea__uvlfN {
	-webkit-box-flex: 0;
	-webkit-flex: 0 0 54px;
	-ms-flex: 0 0 54px;
	flex: 0 0 54px;
	margin-right: 8px
}

.innerGrid__Czrt2 .bookmarkButton__H5hgN {
	box-sizing: border-box;
	width: 54px;
	height: 54px;
	border-radius: 8px;
	border: solid 1px rgba(126, 150, 255, .15);
	background-color: #fafbff;
	cursor: pointer
}

.innerGrid__Czrt2 .bookmarkButton__H5hgN[aria-pressed=true] .iconHeart__yvHJp path
	{
	stroke: #ff7070
}

.innerGrid__Czrt2 .bookmarkButton__H5hgN[aria-pressed=false] .iconHeart__yvHJp path
	{
	stroke: rgba(126, 150, 255, .7);
	fill-opacity: 0
}

.innerGrid__Czrt2 .bookmarkBalloon__nBMhb {
	position: absolute;
	bottom: 66px;
	left: 0;
	z-index: 100;
	padding: 10px 36px 12px 14px;
	border-radius: 5px;
	background-color: #252d4c
}

.innerGrid__Czrt2 .bookmarkBalloon__nBMhb::before {
	position: absolute;
	top: 100%;
	left: 22px;
	border-top: 6px solid #252d4c;
	border-left: 5px solid rgba(0, 0, 0, 0);
	border-right: 5px solid rgba(0, 0, 0, 0);
	content: ""
}

.innerGrid__Czrt2 .bookmarkBalloon__nBMhb.isHide__Iobsy {
	-webkit-animation-name: hideAnimation__vcycZ;
	animation-name: hideAnimation__vcycZ;
	-webkit-animation-duration: .5s;
	animation-duration: .5s;
	-webkit-animation-delay: 3s;
	animation-delay: 3s;
	-webkit-animation-fill-mode: forwards;
	animation-fill-mode: forwards
}

.innerGrid__Czrt2 .bookmarkBalloon__nBMhb.isClose__AB8b2 {
	-webkit-animation-name: hideAnimation__vcycZ;
	animation-name: hideAnimation__vcycZ;
	-webkit-animation-duration: .5s;
	animation-duration: .5s;
	-webkit-animation-fill-mode: forwards;
	animation-fill-mode: forwards
}

.innerGrid__Czrt2 .balloonText__Edp8b {
	line-height: 21px;
	font-size: 14px;
	color: #fff
}

.innerGrid__Czrt2 .balloonText__Edp8b strong {
	color: #7e96ff
}

.innerGrid__Czrt2 .closeButton__CvBbH {
	position: absolute;
	top: 9px;
	right: 7px
}

.innerGrid__Czrt2 .closeButton__CvBbH .buttonCancel__Vr661 path {
	fill: #fff
}

@
-webkit-keyframes hideAnimation__vcycZ {from { opacity:1
	
}

to {
	opacity: 0
}

}
@
keyframes hideAnimation__vcycZ {from { opacity:1
	
}

to {
	opacity: 0
}

}
.innerGrid__Czrt2 .ExpertButton_buttonExpert__AVgfw {
	font-size: 16px
}

.innerGrid__Czrt2 .buttonShare__yNuKx {
	position: absolute;
	top: 18px;
	right: 14px;
	padding: 10px
}

.innerGrid__Czrt2 .buttonShare__yNuKx g {
	fill: #000
}

.innerGrid__Czrt2 .buttonShare__yNuKx .naver-splugin {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0
}

.showPc__YPHr7 {
	display: none
}

@media screen and (min-width: 1025px) {
	.showPc__YPHr7 {
		display: block
	}
}

.productPrice__ZKXaJ {
	box-sizing: border-box;
	max-width: 1280px;
	margin: 0 auto;
	padding: 20px;
	border-bottom: 1px solid #eceffe
}

@media only screen and (min-width: 768px) {
	.productPrice__ZKXaJ {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productPrice__ZKXaJ {
		margin: 0 20px;
		padding: 24px 0
	}
}

.productPrice__ZKXaJ .ItemPrice_price__IF4Aa {
	font-size: 16px;
	line-height: 28px
}

@media screen and (min-width: 1025px) {
	.productPrice__ZKXaJ .ItemPrice_price__IF4Aa {
		padding-right: 30px;
		font-size: 19px;
		line-height: 34px
	}
}

.productPrice__ZKXaJ .ItemPrice_percent__Ty34R {
	margin-right: 10px;
	font-size: 24px;
	font-weight: bold
}

@media screen and (min-width: 1025px) {
	.productPrice__ZKXaJ .ItemPrice_percent__Ty34R {
		font-size: 26px
	}
}

.productPrice__ZKXaJ .ItemPrice_priceBox__p_U3i {
	height: 28px;
	margin-right: 15px
}

@media screen and (min-width: 1025px) {
	.productPrice__ZKXaJ .ItemPrice_priceBox__p_U3i {
		height: 34px
	}
}

.productPrice__ZKXaJ .ItemPrice_number__JERga {
	font-size: 24px
}

@media screen and (min-width: 1025px) {
	.productPrice__ZKXaJ .ItemPrice_number__JERga {
		font-size: 28px
	}
}

.productPrice__ZKXaJ .ItemPrice_unit__Vi7zM {
	margin-top: 2px;
	font-weight: bold;
	color: #000
}

.productPrice__ZKXaJ .ItemPrice_beforeDiscount__CAV6h {
	font-size: 15px
}

@media screen and (min-width: 1025px) {
	.productPrice__ZKXaJ .ItemPrice_beforeDiscount__CAV6h {
		font-size: 16px
	}
}

.productPrice__ZKXaJ .countInfo__X_LZj {
	padding-top: 4px
}

.productPrice__ZKXaJ .countLink__q41Pw, .productPrice__ZKXaJ .countBookmark__t0qwy
	{
	display: inline-block;
	margin: 6px 6px 0 0;
	border-radius: 5px;
	vertical-align: top
}

.productPrice__ZKXaJ .countLink__q41Pw {
	background-color: #f4f5fb;
	padding: 4px 8px
}

.productPrice__ZKXaJ .countBookmark__t0qwy {
	padding: 5px 8px;
	background-color: #fff3f3;
	line-height: 18px;
	font-size: 14px;
	font-weight: bold
}

.productPrice__ZKXaJ .countBookmark__t0qwy .iconHeart__qBSZC {
	margin-right: 3px
}

.productPrice__ZKXaJ .countBookmark__t0qwy .iconHeart__qBSZC path {
	stroke: #ff7070
}

.productPrice__ZKXaJ .ItemRating_itemRating__dp0Km {
	display: inline-block;
	padding: 2px 0
}

.productPrice__ZKXaJ .number__IaMyC {
	position: relative;
	padding-left: 15px;
	display: inline-block;
	vertical-align: top;
	font-size: 13px;
	line-height: 20px;
	color: #8c8c8c
}

.productPrice__ZKXaJ .number__IaMyC::before {
	position: absolute;
	top: 4px;
	left: 7px;
	width: 1px;
	height: 12px;
	background-color: rgba(188, 188, 188, .2);
	content: ""
}

.productPrice__ZKXaJ .iconArrow__LD22c {
	display: inline-block;
	overflow: hidden;
	position: relative;
	width: 6px;
	height: 10px;
	margin: 5px 0 0 5px
}

.productPrice__ZKXaJ .iconArrow__LD22c:before {
	position: absolute;
	top: 50%;
	left: 50%;
	content: ""
}

.productPrice__ZKXaJ .iconArrow__LD22c:before {
	width: 5px;
	height: 5px;
	-webkit-transform: translate(-50%, -50%) scale(1.2, 1) rotate(45deg);
	transform: translate(-50%, -50%) scale(1.2, 1) rotate(45deg);
	margin-left: -2px;
	border: 1px solid rgba(74, 101, 246, .5);
	border-width: 1px 1px 0 0
}

.productPrice__ZKXaJ .reservationStatus__emwgH {
	display: inline-block;
	vertical-align: top;
	margin-top: 6px;
	padding: 2px 7px;
	border-radius: 5px;
	border: 1px solid rgba(126, 150, 255, .2);
	color: #7e96ff;
	font-weight: bold;
	line-height: 22px
}

@media screen and (min-width: 1025px) {
	.productCover__WRmje {
		margin-bottom: 40px
	}
}

.productThumbnail__iW8yX {
	overflow: hidden;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-box-align: center;
	-webkit-align-items: center;
	-ms-flex-align: center;
	align-items: center;
	width: 100%;
	min-height: 180px;
	max-height: 306px;
	margin-bottom: -30px
}

@media screen and (min-width: 1025px) {
	.productThumbnail__iW8yX {
		max-height: 436px;
		margin-bottom: 0;
		border-radius: 5px 5px 0 0
	}
}

.productThumbnail__iW8yX .thumbnail__qEW_o {
	-webkit-box-flex: 1;
	-webkit-flex: 1 1 auto;
	-ms-flex: 1 1 auto;
	flex: 1 1 auto;
	background: #eff1ee no-repeat center/cover;
	padding-top: 56.25%
}

.productThumbnail__iW8yX+.productInfo__zm1w7 {
	padding-right: 20px
}

@media screen and (min-width: 768px) {
	.productThumbnail__iW8yX+.productInfo__zm1w7 {
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productThumbnail__iW8yX+.productInfo__zm1w7 {
		padding-right: 0
	}
	.productThumbnail__iW8yX+.productInfo__zm1w7 .inner__Xx9ku,
		.productThumbnail__iW8yX+.productInfo__zm1w7 .inner__Xx9ku .dimmed__T9OEu
		{
		border-radius: 0 0 5px 5px
	}
}

.productSummary__esJvU {
	word-break: break-all;
	word-wrap: break-word;
	position: relative;
	border-bottom: 7px solid #f4f7ff;
	padding: 0 20px 40px
}

.productSummary__esJvU:after {
	position: absolute;
	bottom: 0;
	right: 0;
	left: 0;
	height: 1px;
	background-color: rgba(126, 150, 255, .2);
	content: ""
}

@media only screen and (min-width: 768px) {
	.productSummary__esJvU {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productSummary__esJvU {
		padding-left: 0;
		padding-right: 0
	}
}

.productSummary__esJvU .CurriculumProfile_profile__NHRhe {
	margin-top: 20px
}

.productInfo__zm1w7 .inner__Xx9ku {
	position: relative;
	background: no-repeat center right/contain
}

@media screen and (min-width: 1025px) {
	.productInfo__zm1w7 .inner__Xx9ku {
		border-radius: 5px
	}
}

.productInfo__zm1w7 .inner__Xx9ku .dimmed__T9OEu {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: rgba(0, 0, 0, .2)
}

@media screen and (min-width: 1025px) {
	.productInfo__zm1w7 .inner__Xx9ku .dimmed__T9OEu {
		border-radius: 5px
	}
}

.productInfo__zm1w7 .inner__Xx9ku.typeDefault__ummGR {
	margin-right: 20px
}

@media screen and (min-width: 768px) {
	.productInfo__zm1w7 .inner__Xx9ku.typeDefault__ummGR {
		margin-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productInfo__zm1w7 .inner__Xx9ku.typeDefault__ummGR {
		margin-right: 0
	}
}

.productInfo__zm1w7 .inner__Xx9ku.typeCircle__eRxEN {
	background-image:
		url("https://ssl.pstatic.net/static/kin/section/expert/m/bgCardCircle.png")
}

.productInfo__zm1w7 .inner__Xx9ku.typeSquare__pij0Q {
	background-image:
		url("https://ssl.pstatic.net/static/kin/section/expert/m/bgCardSquare.png")
}

.productInfo__zm1w7 .inner__Xx9ku.typeTriangle__yhfJl {
	background-image:
		url("https://ssl.pstatic.net/static/kin/section/expert/m/bgCardTriangle.png")
}

.productInfo__zm1w7 .ItemBadge_badgeArea__Np64O {
	margin: 0 0 8px -2px
}

@media screen and (min-width: 1025px) {
	.productInfo__zm1w7 .ItemBadge_badgeArea__Np64O {
		margin-top: -34px
	}
}

.productInfo__zm1w7 .box__CPuio {
	padding: 20px;
	position: relative
}

@media only screen and (min-width: 768px) {
	.productInfo__zm1w7 .box__CPuio {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.productInfo__zm1w7 .box__CPuio {
		padding: 24px 20px
	}
}

.productInfo__zm1w7 .SubTitle_SubTitleItem_titleSection__srGiO .SubTitle_SubTitleItem_title__bbSP5
	{
	word-break: break-all;
	word-wrap: break-word
}

@media screen and (min-width: 1025px) {
	.productInfo__zm1w7 .SubTitle_SubTitleItem_titleSection__srGiO .SubTitle_SubTitleItem_title__bbSP5
		{
		line-height: 42px
	}
}

.productInfo__zm1w7 .info__lf90_ {
	margin-top: 8px;
	font-size: 14px;
	line-height: 22px
}

@media screen and (min-width: 1025px) {
	.productInfo__zm1w7 .info__lf90_ {
		font-size: 15px
	}
}

.productInfo__zm1w7 .item__id_Eb {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: inline-block;
	max-width: 100%;
	color: rgba(255, 255, 255, .8);
	vertical-align: top
}

.productInfo__zm1w7 .item__id_Eb+.item__id_Eb {
	position: relative;
	padding-left: 9px;
	margin-left: 6px
}

.productInfo__zm1w7 .item__id_Eb+.item__id_Eb::before {
	position: absolute;
	top: 9px;
	left: 0;
	width: 3px;
	height: 3px;
	border-radius: 50%;
	background-color: rgba(255, 255, 255, .4);
	content: ""
}

.productCurriculum__Q96uO {
	word-break: break-all;
	word-wrap: break-word;
	overflow: hidden;
	background-color: #000
}

.productCurriculum__Q96uO .ItemWithTitle_item__t0og4 {
	border: none;
	background-color: #1d1d1d;
	color: #fff
}

.productCurriculum__Q96uO .ItemWithTitle_itemTitle__PtVhm {
	height: 48px
}

.productCurriculum__Q96uO .ItemWithTitle_item__t0og4:before,
	.productCurriculum__Q96uO .ItemWithTitle_itemImage__sJVlh:before {
	border-color: rgba(255, 255, 255, .1)
}

.productCurriculum__Q96uO .ItemWithTitle_item__t0og4 .ItemWithTitle_itemInfo__Sfltm
	{
	padding-bottom: 15px
}

@media screen and (min-width: 1025px) {
	.productCurriculum__Q96uO .CarouselList_carouselSection__ZwDGV {
		-webkit-box-flex: 1;
		-webkit-flex: 1 1 auto;
		-ms-flex: 1 1 auto;
		flex: 1 1 auto;
		width: 66.6666666667%
	}
}

.productCurriculum__Q96uO .CarouselList_carouselArea__rR_qX {
	padding-bottom: 25px
}

@media screen and (min-width: 1025px) {
	.productCurriculum__Q96uO .CarouselList_carouselArea__rR_qX {
		margin: 0;
		padding: 0
	}
}

@media screen and (max-width: 1024px) {
	.productCurriculum__Q96uO .CarouselList_defaultContainer__EVq44 .swiper-slide
		{
		width: 290px !important
	}
}

@media screen and (min-width: 1025px) {
	.productCurriculum__Q96uO .CarouselList_defaultSection__Izpbn {
		-webkit-box-flex: 0;
		-webkit-flex: none;
		-ms-flex: none;
		flex: none;
		width: 33.33%;
		margin: 0
	}
}

.productCurriculum__Q96uO .CarouselList_defaultSection__Izpbn .swiper-slide
	{
	float: none;
	max-width: 345px;
	margin: 0 auto
}

@media screen and (min-width: 1025px) {
	.productCurriculum__Q96uO .CarouselList_defaultSection__Izpbn .swiper-slide
		{
		max-width: none
	}
}

.productCurriculum__Q96uO .CarouselList_carouselButton__C_OCR {
	right: -32px;
	left: -32px;
	width: auto;
	margin-top: -24px;
	-webkit-transform: none;
	transform: none
}

@media screen and (min-width: 1280px) {
	.productCurriculum__Q96uO .CarouselList_carouselButton__C_OCR {
		left: 50%;
		right: auto;
		width: calc(66.6666666667vw + 24px);
		max-width: 952px;
		-webkit-transform: translateX(-50%);
		transform: translateX(-50%)
	}
}

.inner__NmeNC {
	padding: 40px 0
}

@media screen and (min-width: 1025px) {
	.inner__NmeNC {
		padding: 60px 28px;
		display: -webkit-box;
		display: -webkit-flex;
		display: -ms-flexbox;
		display: flex;
		max-width: 1280px;
		width: 100%;
		margin: 0 auto;
		-webkit-box-align: center;
		-webkit-align-items: center;
		-ms-flex-align: center;
		align-items: center;
		-webkit-box-pack: center;
		-webkit-justify-content: center;
		-ms-flex-pack: center;
		justify-content: center;
		box-sizing: border-box
	}
}

.area__GpBRe {
	padding: 0 20px;
	box-sizing: border-box
}

@media only screen and (min-width: 768px) {
	.area__GpBRe {
		padding-left: 40px;
		padding-right: 40px
	}
}

@media screen and (min-width: 1025px) {
	.area__GpBRe {
		-webkit-box-flex: 0;
		-webkit-flex: none;
		-ms-flex: none;
		flex: none;
		width: 33.33%;
		padding: 0 56px 0 12px
	}
}

.profile__niDTF {
	position: relative;
	z-index: 2
}

.profile__niDTF:after {
	content: "";
	display: block;
	clear: both
}

.thumbnail__AMu3o {
	position: absolute;
	width: 48px;
	height: 48px;
	border-radius: 50%;
	background: #eff1ee no-repeat center/cover;
	top: 0;
	right: 0
}

.thumbnail__AMu3o:after {
	position: absolute;
	top: 0;
	left: 0;
	right: 0;
	bottom: 0;
	border: 1px solid rgba(0, 0, 0, .05);
	border-radius: 50%;
	content: ""
}

@media screen and (min-width: 1025px) {
	.thumbnail__AMu3o {
		position: static
	}
}

.info___s339 {
	padding-right: 68px
}

@media screen and (min-width: 1025px) {
	.info___s339 {
		padding: 20px 0 0
	}
}

.name__eKkNG {
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
	display: block;
	-webkit-flex-shrink: 1;
	-ms-flex-negative: 1;
	flex-shrink: 1
}

.nameArea__u0M1i {
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	width: 100%;
	font-size: 1.3rem;
	line-height: 1.6rem;
	color: rgba(255, 255, 255, .6)
}

.text__QZNM3 {
	display: block;
	-webkit-box-flex: 0;
	-webkit-flex: none;
	-ms-flex: none;
	flex: none
}

.title__bOfas {
	display: block;
	height: 6.4rem;
	margin-top: 5px;
	font-size: 2.4rem;
	line-height: 3.2rem;
	color: #fff
}

@media screen and (min-width: 1025px) {
	.title__bOfas {
		height: auto;
		margin-top: 10px
	}
}

.profile__niDTF+.linkArea__Edkv6 {
	margin-top: 40px
}

.CarouselList_carouselSection__ZwDGV+.linkArea__Edkv6 {
	text-align: center
}

.link__szff6 {
	display: inline-block;
	height: 48px;
	padding: 0 2.4rem;
	border: 2px solid rgba(255, 255, 255, .1);
	border-radius: 48px;
	font-size: 1.4rem;
	font-weight: bold;
	line-height: 44px;
	vertical-align: top;
	color: #fff;
	box-sizing: border-box
}

.iconCircleArrow__EllRz {
	margin: 13px 0 0 8px
}

.iconCircleArrow__EllRz circle {
	fill: #fff;
	opacity: .5
}

.iconCircleArrow__EllRz path {
	fill: #000
}

.editViewer .se-viewer .se-component-content {
	max-width: 700px
}

.editViewer .se-viewer .se-component-content.se-component-content-fit {
	max-width: 700px
}

.editViewer .se-viewer .se-caption {
	max-width: 700px
}

.editViewer .se-viewer .se-video .se-media-meta-info-wrap {
	max-width: 700px
}

.se-viewer .editorDate {
	margin-top: 10px;
	color: #8c8c8c;
	font-size: 15px
}
</style>
<div class="site-wrap">

	<div class="site-mobile-menu site-navbar-target">
		<div class="site-mobile-menu-header">
			<div class="site-mobile-menu-close mt-3">
				<span class="icon-close2 js-menu-toggle"></span>
			</div>
		</div>
		<div class="site-mobile-menu-body"></div>
	</div>
	<!-- .site-mobile-menu -->





	<section class="pb-0 portfolio-single" id="next-section"
		style="padding-top: 100px;">

		<div class="container" style="background-color: white;">
			<div class="row align-items-center mb-5">
				<div class="col-lg-8 mb-4 mb-lg-0">
					<div class="d-flex align-items-center">
						<div class="border p-2 d-inline-block mr-3 rounded">
							<img
								src="<%=request.getContextPath()%>/resources/images/Dobby.png"
								alt="Image" style="max-width: 70px;">
						</div>
						<div>
							<h2>${exprod.exprodName }</h2>
							<div>
								<span class="ml-0 mr-2 mb-2"><span
									class="icon-briefcase mr-2"></span>${expert.expertAddr }
									${expert.expertAddr2 }</span> <span class="m-2"><span
									class="icon-room mr-2"></span>${expert.expertTel } </span> <span
									class="m-2"><span class="icon-clock-o mr-2"></span><span
									class="text-primary">${exprod.exprodTime }</span></span>
							</div>
						</div>
					</div>
				</div>
					<!-- 관심버튼 -->
					<div class="ml-auto h-100">
						<div class="row">
							<security:authorize access="hasRole('ROLE_SEEKER')">
<%-- 								<security:authorize access="hasRole('INCRUITER')"> --%>
								<security:authentication property="principal" var="memberVOWrapper"/>
								<security:authentication property="principal.realMember" var="authMember"/>
<%-- 									<input type="hidden" value="${authMember.memId}"/> --%>
								<div class="col-6" id="likeExprodArea">
									<c:choose>
										<c:when test="${selectLikeExprod gt 0 }">
											<a class="btn btn-block btn-light btn-md" onclick="likeExprod('${authMember.memId}')"><span id="likeExprod" class="icon-heart mr-2 text-danger"></span>관심상품</a>
										</c:when>
										<c:otherwise>
											<a class="btn btn-block btn-light btn-md" onclick="likeExprod('${authMember.memId}')"><span id="likeExprod" class="icon-heart-o mr-2 text-danger"></span>관심상품</a>
										</c:otherwise>
									</c:choose>
								</div>
							</security:authorize>
						</div>
					</div>
				<!-- <div class="col-lg-4">
					<div class="row">
						<div class="col-12">
							<a href="#" class="btn btn-block btn-light btn-md" onclick="likeExprod"><span
								class="icon-heart-o mr-2 text-danger" id="likeExprod"></span>찜하기</a>
						</div>
		<div class="col-6">
                <a href="#" class="btn btn-block btn-primary btn-md">Apply Now</a>
              </div>
					</div>
				</div> -->
			</div>
			<div class="row mb-5 mt-5">
				<div class="col-lg-8">
					<h2 style="border-bottom: 4px solid #000;">상세설명</h2>
					${exprod.exprodDetail }
					<h2 style="border-bottom: 4px solid #000;">판매자 정보</h2>
					<div class="foldInner__Rukpz" style="display: block;">
						<ul class="etcInfoList__ETD5b twoColumnList__ZM9kj">
							<li class="etcInfoItem__K2RcM"><span class="title__hxpoI">이름</span><span
								class="text__Y7rQf">${expert.memName }</span></li>
							<li class="etcInfoItem__K2RcM"><span class="title__hxpoI">메일</span><span
								class="text__Y7rQf">${expert.expertEmail }</span></li>
							<li class="etcInfoItem__K2RcM"><span class="title__hxpoI">고객센터</span><span
								class="text__Y7rQf">${expert.expertTel }</span></li>
							<li class="etcInfoItem__K2RcM"><span class="title__hxpoI">사업장
									주소</span><span class="text__Y7rQf">(우:${expert.expertZip }) ${expert.expertAddr } ${expert.expertAddr2 } </span></li>
						</ul>
					</div>
					<h2 style="border-bottom: 4px solid #000;">상품정보 제공 고시</h2>
					<div class="productFinance__cZMlN">
						<div
							class="titleSection__aC4MJ SubTitleItem_titleSection__zCPQE SubTitle_SubTitleItem_titleSection__SkVkP">
							<span
								class="title__nx4cO SubTitleItem_title__vOrep headline9__Dgibj">아이엔유파이낸셜<br>(결제대금예치업
								등록번호 : 02-0006-00056)
							</span>
						</div>
						<div class="textBox__ECG4L">
							<p class="text__Y7rQf">
								아이엔유파이낸셜(주)은 전자금융거래법에 따라 결제대금 예치업을 운영할 수 있는 전자금융업자로 금융위원회에
								등록되었으며, 본 eXpert는 아이엔유파이낸셜(주)이 제공하는 구매안전서비스를 적용하고 있습니다.<a
									href="${pageContext.request.contextPath}/expert/detail/${expert.memId }" target="_blank"
									rel="noreferrer" class="link__yOb5T">자세히 보기<i
									class="iconArrow__xG3fN"></i></a>
							</p>
						</div>
					</div>
				</div>

				<div class="col-lg-4 ml-auto h-100 jm-sticky-top" style="top: 150px;">
				
					<div class="mb-4">
<%-- 						<h3 class="mb-4 h4 border-bottom">${exprod.exprodName }</h3> --%>
					</div>
					<div class="bg-light p-3 border rounded mb-4">
					<div class="ml-auto h-100">
							<div class="row">
								
							</div>
						</div>
						<ul class="list-unstyled mb-0">
							<li class="mb-2"><strong class="text-black">가격           : </strong>
							${exprod.exprodPrice }</li>
							<li class="mb-2"><strong class="text-black">상품이용방법 : </strong>
							${exprod.exprodWay }</li>
						</ul>
						<div class="jv_cont jv_howto">
							<a class="placeholder" tabindex="-1"></a>
							<h2 class="jv_title">접수기간 및 방법</h2>
							<div class="cont box">
								<div class="status">
								<div class="info_timer" data-remain-time="820560">
									<span class="txt">남은 기간</span>
									<span class="day">9</span>
									<span class="txt_day">일</span>
									<span class="time">11:47:54</span>
								</div>
								<dl class="info_period">
									<dt>시작일</dt>
									<dd>${exprod.exprodStart }</dd>
									<dt class="end">마감일</dt>
									<dd>${exprod.exprodEnd }</dd>
								</dl>
								</div>
							</div>
						</div>
						<div class="col-sm-12 col-md-12 mb-4 col-lg-12">
							<strong class="d-block text-black mb-3">구매</strong>
							<form:form modelAttribute="excart" method="post"
								action="${pageContext.request.contextPath}/expert/pay/${exprod.exprodId }">
								<form:hidden path="excartPrice" value="${exprod.exprodPrice }" />
								<form:button class="btn btn-outline-primary border-width-2"
									type="submit">구매하기</form:button>
							</form:form>
						</div>
					</div>						

					<div class="block__87154 mb-0">

						<blockquote>
							<p>${expert.expertIntroduction }</p>
						</blockquote>
						<div class="block__91147 d-flex align-items-center">
							<figure class="mr-4">
								<img
									src="<%=request.getContextPath()%>/resources/images/Dobby.png"
									alt="Image" class="img-fluid">
							</figure>
							<div>
								<h3>${member.memName }</h3>
								<span class="position">${expert.expertField }</span>
							</div>
						</div>
					</div>

				</div>
			</div>




		</div>
	</section>



	<section class="site-section bg-light">
		<div class="container">
			<div class="row mb-5">
				<div class="col-12 text-center" data-aos="fade">
					<a href="<%=request.getContextPath()%>/expert/review">
					<h2 class="section-title mb-3">후기</h2></a>
				</div>
			</div>
			<div class="row">
			<c:forEach items="${exprod.exreviewList }" var="exreviewList">
				<div class="col-lg-6">
					<div class="block__87154 bg-white rounded">
						<blockquote>
							${exreviewList.exreviewContent }
						</blockquote>
						<div class="block__91147 d-flex align-items-center">
							<figure class="mr-4">
								<img
									src="<%=request.getContextPath()%>/resources/images/아이유1.jfif"
									alt="Image" class="img-fluid" />
							</figure>
							<div>
								<h3>${exreviewList.exreviewWriter }</h3>
								<span class="position">${exreviewList.exreviewDate }</span>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			</div>
		</div>
	</section>
	<section class=" py-3 site-section mb-5">
		<div class="container">
			<div class="row">
				<div class="col-md-4 text-center" >
					<a href="${pageContext.request.contextPath}/expert/prod/${exprod.preExprod}"
						class="btn btn-md btn-outline-primary border-width-2 d-block"
						id="preBtn">&laquo; 이전</a>
				</div>
				<div class="col-md-4 text-center">
					<a href="${pageContext.request.contextPath}/expert/CONSULTING" class="btn btn-md btn-primary border-width-2 d-block">전체</a>
				</div>
				<div class="col-md-4 text-center">
					<a href="${pageContext.request.contextPath}/expert/prod/${exprod.nextExprod}"
						class="btn btn-md btn-outline-primary border-width-2 d-block" id="nextBtn">다음 &raquo;</a>
				</div>
			</div>
		</div>
	</section>

</div>
<script type="text/javascript">
if(`${exprod.preExprod}`==""){
	$("#preBtn").click(function () {return false;});
}
if(`${exprod.nextExprod}`==""){
	$("#nextBtn").click(function () {return false;});
}
let dday = new Date(`${exprod.exprodEnd}`).getTime();
setInterval(function() {
	let today = new Date().getTime();
	let gap = dday - today;
	let day = Math.ceil(gap / (1000 * 60 * 60 * 24));
	let hour = Math.ceil((gap % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
	let min = Math.ceil((gap % (1000 * 60 * 60)) / (1000 * 60));
	let sec = Math.ceil((gap % (1000 * 60)) / 1000);
	$(".day").html(day);
	
	if(hour<10) hour="0"+hour;
	if(min<10) min="0"+min;
	if(sec<10) sec="0"+sec;
	$(".time").html(hour+":"+min+":"+sec);
}, 1000);

function likeExprod(memId){
    console.log("likeExprod",`${exprod.exprodId}`,memId);
    
    let data = {exprodId:`${exprod.exprodId}`,memId:memId};
    $.ajax({
       url : "${pageContext.request.contextPath}/expert/likeExprod",
       method : "post",
       data : JSON.stringify(data),
       dataType : "text",
       contentType: 'application/json',
       success : function(resp) {
          console.log("resp : ",resp);
          if(resp=="delete"){
             $("#likeExprod").removeClass("icon-heart").addClass("icon-heart-o");
          } else if(resp=="insert") {
             $("#likeExprod").removeClass("icon-heart-o").addClass("icon-heart");
          }
       },
       error : function(jqXHR, status, error) {
          console.log(jqXHR);
          console.log(status);
          console.log(error);
       }
    });   
}
</script>

