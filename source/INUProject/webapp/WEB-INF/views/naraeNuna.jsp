<head>
<style>
.grid-stack {
	background: transparent;
}
.grid-stack-item-content {
	background-color: rgb(255, 255, 255, 0.5);
	border-radius: 16px;
	transition:0.5s;
	box-shadow: 17px 20px 40px rgb(0 0 0 / 21%);
	width:200px;
	
}

.grid-stack-item-content:hover {
	box-shadow: 17px 20px 50px rgb(0 0 0 / 50%);
}

.grid-stack-item[gs-w="1"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="2"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="3"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="4"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="5"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="6"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="7"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="8"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="9"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="10"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="11"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
.grid-stack-item[gs-w="12"]:hover {
	transition:0.5s;
	transform:scale(1.02);
}
</style>
<!-- gridstack -->
<link href="<%=request.getContextPath()%>/resources/index/node_modules/gridstack/dist/gridstack.min.css" rel="stylesheet"/>
<script src="${pageContext.request.contextPath}/resources/index/node_modules/gridstack/dist/gridstack-all.js"></script>
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-element-bundle.min.js"></script>
</head>
<body>
    <div class="grid-stack">
    <!-- ============================================프로필=================================================== -->
    <!-- spring security용 -->
        <div class="grid-stack-item"  gs-x="0" gs-y="0" gs-w="3" gs-h="4">
                <div class="grid-stack-item-content" style="background-image: url(${pageContext.request.contextPath}/resources/images/noImage.png); background-size: cover; background-position: center;">
                
                </div>
            </security:authorize>
        </div>
    <!-- ============================================달력=================================================== -->    
        <div class="grid-stack-item"  gs-x="3" gs-y="0" gs-w="6" gs-h="5">
            <div class="grid-stack-item-content">

            </div>
        </div>
    <!-- ============================================일정=================================================== -->
        <div class="grid-stack-item"  gs-x="9" gs-y="0" gs-w="3" gs-h="4">
            <div class="grid-stack-item-content">

            </div>
        </div>
    <!-- ============================================빠른메뉴=================================================== -->
        <div class="grid-stack-item"  gs-x="0" gs-y="3" gs-w="3" gs-h="1">
            <div class="grid-stack-item-content">

            </div>
        </div>
    <!-- ============================================선형진행도=================================================== -->
        <div class="grid-stack-item"  gs-x="0" gs-y="5" gs-w="6" gs-h="3">
            <div class="grid-stack-item-content">

            </div>
        </div>
    <!-- ============================================찜목록=================================================== -->
        <div class="grid-stack-item"  gs-x="6" gs-y="5" gs-w="3" gs-h="3">
            <div class="grid-stack-item-content" style="background-color: rgb(255, 255, 255, 0.5);">

            </div>
        </div>
    <!-- ============================================알림=================================================== -->
        <div class="grid-stack-item"  gs-x="9" gs-y="4" gs-w="3" gs-h="4">
            <div class="grid-stack-item-content" style="overflow: auto;">

            </div>
        </div>
        
        <!-- ============================================유료상품=================================================== -->
        <div class="grid-stack-item"  gs-x="12" gs-y="12" gs-w="12" gs-h="3">
            <div class="grid-stack-item-content" style="background-color: rgb(255, 255, 255, 0.2);">

            </div>
        </div>
    </div>
<script>
    var grid = GridStack.init();
    grid.margin(25);
</script>    
</body>