<%--
* [[개정이력(Modification Information)]]
* 수정일                 수정자      수정내용
* ----------  ---------  -----------------
* 2023. 2. 1.      허근주      최초작성
* Copyright (c) 2023 by DDIT All right reserved
 --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

      
    </section>
    <section class="site-section block__62272" id="next-section">
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">상품분류</h2>
      </div>
      <div class="container">
        <div class="row justify-content-center mb-5" data-aos="fade-up">
          <div id="filters" class="filters text-center button-group col-md-7">
            <a class="btn btn-primary active" href="<%=request.getContextPath() %>/expert/class">분야1</a>
            <button class="btn btn-primary" data-filter=".web">분야2</button>
            <button class="btn btn-primary" data-filter=".design">
              분야3
            </button>
            <button class="btn btn-primary" data-filter=".brand">분야4</button>
          </div>
        </div>

        <div id="posts" class="row no-gutter">
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="<%=request.getContextPath() %>/expert/prod/EXP000104" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>

          <div
            class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4"
          >
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>
        </div>
      </div>
    </section>
    <section class="site-section block__62272" id="next-section">
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">진행중인 이벤트</h2>
      </div>
      <div class="container">

        <div id="posts" class="row no-gutter">
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="<%=request.getContextPath() %>/expert/event" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>

          <div
            class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4"
          >
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>
        </div>
      </div>
    </section>
    <section class="site-section block__62272" id="next-section">
      <div class="col-12 text-center" data-aos="fade">
        <h2 class="section-title mb-3">추천 클래스</h2>
      </div>
      <div class="container">
        <div class="row justify-content-center mb-5" data-aos="fade-up">
          <div id="filters" class="filters text-center button-group col-md-7">
            <button class="btn btn-primary active" data-filter="*">All</button>
            <button class="btn btn-primary" data-filter=".web">Web</button>
            <button class="btn btn-primary" data-filter=".design">
              Design
            </button>
            <button class="btn btn-primary" data-filter=".brand">Brand</button>
          </div>
        </div>

        <div id="posts" class="row no-gutter">
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>
          <div class="item web col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4">
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>

          <div
            class="item brand col-6 col-sm-6 col-md-6 col-lg-4 col-xl-4 mb-4"
          >
            <a href="portfolio-single.html" class="item-wrap">
              <span class="icon-add"></span>
              <img class="img-fluid" src="<%=request.getContextPath() %>/resources/images/우기1.jfif" />
            </a>
          </div>
        </div>
      </div>
    </section>
    <section class="site-section">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center" data-aos="fade">
            <h2 class="section-title mb-3">후기</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">
            <div class="block__87154  rounded">
              <blockquote>
                <p>
                 너무 좋은 상담시간이였습니다.
                </p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4">
                  <img
                    src="<%=request.getContextPath() %>/resources/images/우기1.jfif"
                    alt="Image"
                    class="img-fluid"
                  />
                </figure>
                <div>
                  <h3>아이유</h3>
                  <span class="position">가수</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="block__87154 bg-white rounded">
              <blockquote>
                <p>
                  유익한 시간 정보 감사합니다.
                </p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4">
                  <img
                    src="<%=request.getContextPath() %>/resources/images/우기1.jfif"
                    alt="Image"
                    class="img-fluid"
                  />
                </figure>
                <div>
                  <h3>아이유
                  </h3>
                  <span class="position">가수</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="site-section ">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12 text-center" data-aos="fade">
            <h2 class="section-title mb-3">후기</h2>
          </div>
        </div>
        <div class="row">
          <div class="col-lg-6">
            <div class="block__87154 bg-white rounded">
              <blockquote>
                <p>
                 너무 좋은 상담시간이였습니다.
                </p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4">
                  <img
                    src="<%=request.getContextPath() %>/resources/images/우기1.jfif"
                    alt="Image"
                    class="img-fluid"
                  />
                </figure>
                <div>
                  <h3>아이유</h3>
                  <span class="position">가수</span>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-6">
            <div class="block__87154 bg-white rounded">
              <blockquote>
                <p>
                  유익한 시간 정보 감사합니다.
                </p>
              </blockquote>
              <div class="block__91147 d-flex align-items-center">
                <figure class="mr-4">
                  <img
                    src="<%=request.getContextPath() %>/resources/images/우기1.jfif"
                    alt="Image"
                    class="img-fluid"
                  />
                </figure>
                <div>
                  <h3>아이유
                  </h3>
                  <span class="position">가수</span>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

	<!-- /바디 영역 -->
	<script>
	$('.row no-gutter').slick({
		  infinite: true,
		  slidesToShow: 3,
		  slidesToScroll: 3
		});
	</script>
