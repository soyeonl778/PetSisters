<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <!-- header css -->
      <jsp:include page="../common/common.jsp" />
      <link rel="stylesheet" href="/resources/css/board/boardDetailFormSub.css">
      <link rel="stylesheet" href="/resources/css/board/boardDetailForm.css">
      
      <title>커뮤니티 상세페이지 현재</title>
      <!-- 슬라이더 CDN-->
      <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
      <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

      
    </head>
    
    <body>
        <!-- 헤더 영역 시작-->
        <jsp:include page="../common/header.jsp" /> 
        <!-- 헤더 영역 끝-->
    
      <div id="Container-Wrapper">
        <!-- 페이지 영역 시작 -->
        <div id="container">
          <div id="main">
            <div id="content">
              <div class="page_aticle aticle_type2">
                <!-- 본문 영역-->
                <div id="viewOrderList" class="page_section section_orderlist">
                  <div class="page_section section_destination">
                    <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                    <div style="height: 100%;">
                      
                      <section class="content-section">
                        <div class="content-header">
                          <div class="content-header-sub">
                            <div class="content-header-sub-a">
                              <img class="header-img" src="https://petplanet.co/static/images/reviews/like.png"></div>
                              <h2 class="header-title">밀키보호자님 커뮤니티</h2>
                          </div>
                        </div>
    
                        <div>
                          <div class="main-card">
                              <div class="main-card-region">
                                <a class="arrow-left" href="">
                                  <img class="arrow-left-img" src="https://petplanet.co/static/images/common/arrow.png">
                                </a>
                                <!--게시글 메인페이지 시작-->
                                <div class="community-detail-board">
                                  <!--안됨-->
                                  <div class="board-img">
                                    <div class="slick-slider slick-initialized">
                                      <button type="button" data-role="none" class="slick-arrow slick-prev" style="display:block;">
                                        <!-- Previous -->
                                      </button>
                                      <div class="slick-list">
                                        <div class="slick-trace">
                                          <div data-index="-1" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true"><img src="/resources/img/강아지발판.jpg" alt=""></div>
                                          <div data-index="0" tabindex="-1" class="slick-slide slick-actice slick-current" aria-hidden="false"><img src="/resources/img/갈색포매라니안.jpg" alt=""></div>
                                          <div data-index="1" tabindex="-1" class="slick-slide" aria-hidden="true"><img src="/resources/img/그림이사진5.jpg" alt=""></div>
                                          <div data-index="2" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true"><img src="/resources/img/강아지2.png" alt=""></div>
                                          <div data-index="3" tabindex="-1" class="slick-slide slick-cloned" aria-hidden="true"><img src="/resources/img/갈색포매라니안.jpg" alt=""></div>
                                        </div>
                                      </div>
                                      <button type="button" data-role="none" class="slick-arrow slick-next" style="display:block;">
                                      </button>
                                    </div>
                                    <!--동그라미미니버튼-->
                                    <div class="dot-slide-img">
                                      <div class="dot-1"><img src="https://petplanet.co/static/images/common/dot_active.png" alt=""></div>
                                      <div class="dot-2"><img src="https://petplanet.co/static/images/common/dot.png" alt=""></div>
                                    </div>
                                  </div>
                                  <!--안됨-->
    
                                  <div class="board-writer-a">
                                    <div class="board-writer-top">
                                      <p class="board-writer">또야 보호자님</p>
                                      <div class="board-star-area">
                                        <img src="https://petplanet.co/static/images/common/star_1.png">
                                        <img src="https://petplanet.co/static/images/common/star_1.png">
                                        <img src="https://petplanet.co/static/images/common/star_1.png">
                                        <img src="https://petplanet.co/static/images/common/star_1.png">
                                        <img src="https://petplanet.co/static/images/common/star_1.png">
                                      </div>
                                    </div>
                                    <h1 class="board-writer-bottom">
                                      인천 부평구 부개동 펫시터님과 함께했어요
                                    </h1>
                                  </div>
                                  
                                  <p class="board-content">
                                    저희가 펫시터분께는 처음이라 또야가 잘적을할까 걱정을 많이했거든요ㅠㅠ 근데 박◯연 펫시터님께서 하루일지를 시간날때마다 
                                    작성해주시고 사진 영상 보내주시고 가끔 채팅을 통해서 저희와 소통하면서 주의할점도 여쭈어봐주시고 덕분에 또야가 처음으로 
                                    흥미를 가진 장난감 종류에 대해서도 알아서 행복합니다 :) 또야를 보호소에서 데리고온지 이제 1년이지만 여지껏 삑삑이, 
                                    터그 전혀 관심이 없었는데 펫시터님께서 강아지용 뼈다귀 장난감으로 흥미를 찾아주셨네요ㅎㅎㅎ 그리고 너무너무너무너무 
                                    친절하시고 밤송이 현관 두드리면 왈왈짖지만 막상 마주치면 쭈구리되서 귀여워요ㅠ 밤송아 또야랑 잘지내줘서 고마워🤍
                                    다음에 또 이용할게요!!!!!!!!!! 무조건ㅎㅎ 강추입니다 열허븐
                                  </p>
    
                                  <p class="shop-1">
                                    <a href="">#펫시터</a>
                                    <a href="">#가정집 펫시터</a>
                                    <a href="">#인천 부평구 부개동 펫시터 이용 후기</a>
                                  </p>
                                  
                                  <p class="shop-2">
                                    #애견호텔 #강아지 유치원 #웰시믹스 
                                  </p>
                                  
                                  <div class="community-card-petsister-a ">
                                    <p class="community-card-petsister">이 후기의 펫시터가 궁금하다면?</p>
                                  </div>
                                  
                                  <a class="petsister-a">
                                    <div class="petsister">
                                        <img class="petsister-img" src="../resources/img/그림이사진1.jpg" alt="그림이사진">
                                        <div class="petsister-img-left">
                                            <p style="margin-top: 0; margin-bottom: 0; font-size: 15px; color:rgb(56, 60, 71);">박◯연 펫시터*인천 부평구 부개동</p>
                                            <p style="margin-bottom: 0; margin-top: 9px; font-size: 13px; color: rgb(56, 60, 72);">밤송이네 아늑한 힐링공간</p>
                                        </div>
                                    </div>
                                  </a>
                                
                                </div>
    
                                <a class="arrow-right" href="javascript:void(0)">
                                  <img class="arrow-right-img" src="https://petplanet.co/static/images/common/arrow.png" alt="">
                                </a>
                                <!--게시글 메인페이지 끝-->
                              </div>
                              <!--전체후기보기-버튼-->
                              <a class="main-card-bottom-button" href="">
                                <span class="plus-icon">+</span>
                                <p class="all-community"> 전체 후기 보기</p>
                              </a>
                          </div>
                        </div>
                      </section>
                    
                    
                    
                    
                    
                    </div>
                    <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                  </div>
                </div>
                <!-- 본문 영역 끝-->
              </div>
            </div>
          </div>
    
        </div>
      </div>
      <!-- Footer 영역 시작 -->
      <jsp include page="../common/footer.jsp" />
      <!-- Footer 영역 끝 -->
       
    </body>
    </htm>