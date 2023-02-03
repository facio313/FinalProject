<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* ${date}      윤호연      최초작성
* Copyright (c) ${year} by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/custom-bs.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/icomoon/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/fonts/line-icons/style.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/animate.min.css">
    
    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<%=request.getContextPath() %>/resources/css/style.css">    
</head>

<body>
	<section
      style="padding-top: 100px;"
      id="home-section"
    >
      <div class="container">
        <div class="row align-items-center justify-content-center">
          <div class="col-md-12">
            <form method="post" class="search-jobs-form">
              <div class="row mb-5">
                
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <div class="dropdown bootstrap-select" style="width: 100%">
                    <select
                      class="selectpicker"
                      data-style="btn-white btn-lg"
                      data-width="100%"
                      data-live-search="true"
                      title="분야"
                      tabindex="-98"
                    >
                      <option class="bs-title-option" value=""></option>
                      <option>Anywhere</option>
                      <option>San Francisco</option>
                      <option>Palo Alto</option>
                      <option>New York</option>
                      <option>Manhattan</option>
                      <option>Ontario</option>
                      <option>Toronto</option>
                      <option>Kansas</option>
                      <option>Mountain View</option></select
                    >
                    <div
                      class="dropdown-menu"
                      role="combobox"
                      x-placement="bottom-start"
                      style="
                        max-height: 678.766px;
                        overflow: hidden;
                        min-height: 171px;
                        position: absolute;
                        will-change: transform;
                        top: 0px;
                        left: 0px;
                        transform: translate3d(0px, 50px, 0px);
                      "
                    >
                      <div class="bs-searchbox">
                        <input
                          type="text"
                          class="form-control"
                          autocomplete="off"
                          role="textbox"
                          aria-label="Search"
                        />
                      </div>
                      <div
                        class="inner show"
                        role="listbox"
                        aria-expanded="false"
                        tabindex="-1"
                        style="
                          max-height: 614.766px;
                          overflow-y: auto;
                          min-height: 107px;
                        "
                      >
                        <ul class="dropdown-menu inner show">
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">Anywhere</span></a
                            >
                          </li>
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">San Francisco</span></a
                            >
                          </li>
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">Palo Alto</span></a
                            >
                          </li>
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">New York</span></a
                            >
                          </li>
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">Manhattan</span></a
                            >
                          </li>
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">Ontario</span></a
                            >
                          </li>
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">Toronto</span></a
                            >
                          </li>
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">Kansas</span></a
                            >
                          </li>
                          <li>
                            <a
                              role="option"
                              class="dropdown-item"
                              aria-disabled="false"
                              tabindex="0"
                              aria-selected="false"
                              ><span class="text">Mountain View</span></a
                            >
                          </li>
                        </ul>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <div class="dropdown bootstrap-select" style="width: 100%">
                    <select
                      class="selectpicker"
                      data-style="btn-white btn-lg"
                      data-width="100%"
                      data-live-search="true"
                      title="직업"
                      tabindex="-98"
                    >
                      <option class="bs-title-option" value=""></option>
                      <option>Part Time</option>
                      <option>Full Time</option></select
                    >
                    <div
                      class="dropdown-menu"
                      role="combobox"
                      x-placement="bottom-start"
                      style="
                        max-height: 678.766px;
                        overflow: hidden;
                        min-height: 46px;
                        position: absolute;
                        will-change: transform;
                        top: 0px;
                        left: 0px;
                        transform: translate3d(0px, 50px, 0px);
                      "
                    >
                      <div class="bs-searchbox">
                        <input
                          type="text"
                          class="form-control"
                          autocomplete="off"
                          role="textbox"
                          aria-label="Search"
                        />
                      </div>
                      <div
                        class="inner show"
                        role="listbox"
                        aria-expanded="false"
                        tabindex="-1"
                        style="
                          max-height: 614.766px;
                          overflow-y: auto;
                          min-height: 0px;
                        "
                      >
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <input
                    type="text"
                    class="form-control form-control-lg"
                    placeholder="상품명"
                  />
                </div>
                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-4 mb-lg-0">
                  <button
                    type="submit"
                    class="btn btn-primary btn-lg btn-block text-white btn-search"
                  >
                    <span class="icon-search icon mr-2"></span>검색
                  </button>
                </div>
              </div>
              
            </form>
          </div>
        </div>
      </div>


        <section class="site-section">
            <div class="container">
              <div class="row">
                <div class="col-lg-6">
                  <div class="block__87154 bg-white rounded">
                    <blockquote>
                      <p>&ldquo;df&rdquo;</p>
                    </blockquote>
                    <div class="block__91147 d-flex align-items-center">
                      <figure class="mr-5"><img src="resources/images/person_1.jpg" alt="Image" class="img-fluid"></figure>
                      <div>
                        <h3>Elisabeth Smith</h3>
                        <span class="position">Creative Director</span>
                        <button>상세보기</button>
                      </div>
                    </div>
                  </div>
                </div>
      
                <div class="col-lg-6">
                  <div class="block__87154 bg-white rounded">
                    <blockquote>
                      <p>&ldquo;df&rdquo;</p>
                    </blockquote>
                    <div class="block__91147 d-flex align-items-center">
                      <figure class="mr-5"><img src="resources/images/person_2.jpg" alt="Image" class="img-fluid"></figure>
                      <div>
                        <h3>Chris Peter</h3>
                        <span class="position">Web Designer</span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="block__87154 bg-white rounded">
                    <blockquote>
                      <p>&ldquo;df&rdquo;</p>
                    </blockquote>
                    <div class="block__91147 d-flex align-items-center">
                      <figure class="mr-5"><img src="resources/images/person_2.jpg" alt="Image" class="img-fluid"></figure>
                      <div>
                        <h3>Chris Peter</h3>
                        <span class="position">Web Designer</span>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-lg-6">
                  <div class="block__87154 bg-white rounded">
                    <blockquote>
                      <p>&ldquo;df&rdquo;</p>
                    </blockquote>
                    <div class="block__91147 d-flex align-items-center">
                      <figure class="mr-5"><img src="resources/images/person_2.jpg" alt="Image" class="img-fluid"></figure>
                      <div>
                        <h3>Chris Peter</h3>
                        <span class="position">Web Designer</span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </section>
          
    
     <!-- SCRIPTS -->
    <script src="<%=request.getContextPath() %>/resources/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap.bundle.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/isotope.pkgd.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/stickyfill.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.fancybox.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.easing.1.3.js"></script>
    
    <script src="<%=request.getContextPath() %>/resources/js/jquery.waypoints.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/jquery.animateNumber.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/owl.carousel.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/quill.min.js"></script>
    
    <script src="<%=request.getContextPath() %>/resources/js/bootstrap-select.min.js"></script>
    <script src="<%=request.getContextPath() %>/resources/js/daumPostcode.js"></script>
    
    <script src="<%=request.getContextPath() %>/resources/js/custom.js"></script>
</body>
</html>