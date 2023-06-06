<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <!-- header css -->
      <link rel="stylesheet" href="/resources/css/common/form.css">
      <jsp:include page="../common/common.jsp" />
      <link rel="stylesheet" href="/resources/css/board/boardCategoryForm.css">
    
      <title>카테고리페이지</title>
      <!--폰트어썸-->
      <script src="https://kit.fontawesome.com/d3eb8276e5.js" crossorigin="anonymous"></script>
    </head>
    
    <body>

        <jsp:include page="../common/header.jsp" />

        <!-- 헤더 영역 시작-->
        <nav class="navbar navbar-expand-lg bg-light fixed-top">
          <div class="container-fluid">
            <a class="navbar-brand" href="/mian/main.html"><img class="headerLogo" src="/resources/img/main/헤더로고.png" alt="headerLogo"></a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="#">커뮤니티</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">채팅상담</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">펫시터찾기</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">이용후기</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">로그인</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link petsiter" href="#">펫시터지원</a>
                </li>
              </ul>
            </div>
          </div>
        </nav>
        <!-- 헤더 영역 끝-->
    
      <div id="Container-Wrapper">
        <!-- 페이지 영역 시작 -->
        <div id="container">
          <div id="main">
            <div id="content">
              <div class="page_aticle aticle_type2">
                <!-- 사이드 메뉴바 -->
                <div id="snb" class="snb_my" style="position: absolute;">
                  <img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
                  <h2 class="tit_snb">My Page</h2>
                  <div class="inner_sub">
                    <ul class="list_menu">
                      <li class="on">
                        <a href="#">내 프로필</a>
                      </li>
                      <li>
                        <a href="#">반려동물 프로필</a>
                      </li>
                      <li>
                        <a href="#">펫시터 찜</a>
                      </li>
                      <li>
                        <a href="#">내 게시글 및 댓글</a>
                      </li>
                      <li>
                        <a href="#">예약 조회</a>
                      </li>
                      <li>
                        <a href="#">내 후기</a>
                      </li>
                      <li>
                        <a href="#">돌봄 일지</a>
                      </li>
                    </ul>
                  </div>
                </div>
                <!-- 사이드 메뉴바 끝 -->
    
                <!-- 본문 영역-->
                <div id="viewOrderList" class="page_section section_orderlist">
                  <div class="page_section section_destination">
                    <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                    <div class="section-top" style="display: flex; align-items: center; justify-content: center;">
                      
                      
                      
                      <section class="content-section">
                        
                        <div class="page-top-line">
                          <div class="search-section">
                            <div class="dog-icon-area">
                              <h4>반려견 정보</h4>
                              <i class="fa-solid fa-paw" id="dog-foot-icon"></i>
                            </div>
                            
                            <div class="search-form-section">
                              <form role="search" method="get" id="searchform" class="search-form" action="">
                                <input type="text" class="search-field" id="s" placeholder="키워드를 입력해주세요">
                                <button onclick="doClick();" type="submit" id="searchSubmit" class="search-submit"><img src="">
                                  <i class="fa-solid fa-magnifying-glass"></i>
                                </button>
                              </form>
                            </div>
                          </div>
                          <!-- 검색폼 끝-->
        
                          <!--카테고리별로 버튼생성 시작-->
                          <div class="category-btns">
                              <h1>원하시는 조건을 선택하세요</h1>
                              <div class="btn-category">
                                <button type="button" class="btn btn-outline-primary">강아지 케어 관련</button>
                                <button type="button" class="btn btn-outline-secondary">음식 & 기호식품</button>
                                <button type="button" class="btn btn-outline-success">미용 & 코디</button>
                                <button type="button" class="btn btn-outline-danger">기타사항</button>
                              </div>
                          </div>
                          <!--카테고리별로 버튼생성 끝-->
                        </div>
    
                        <div class="style-line"></div>
                        
                        <!-- 검색폼 시작 -->
                        <div class="content-header">
                          <div class="content-header-title-a">
                            <img class="content-header-title-img" src="https://petplanet.co/static/images/reviews/like.png">
                            <h1 class="content-header-title">펫시스터 인기커뮤니티</h1>
                          </div>
                        </div>
    
                        <div>
                          <div class="card-llist-parent">
                            <div id="review-list-desktop" class="my-masonry-grid">
                              <div class="my-masonry-grid_column">
                                <div class="community-card">
                                  <div class="community-card-img-a">
                                      <img class="community-card-img" src="/resources/img/board/짱귀욤비숑.jpg" alt="test">
                                  </div>
          
                                  <div class="community-card-title">
                                      <p class="community-card-writer">
                                        포도
                                        보호자님
                                      </p>
                                      <div class="community-card-star">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      </div>
                                  </div>
                                  
                                  <p class="community-card-content">포도 펫시팅은 처음이었어요. 그동안 부득이하게 외박해야할때 강아지 있는 지인 집, 
                                    강아지 없는 지인 집 두 번 정도 맡겨보았는데 데리러 갈때마다 눈이 충혈되어 있거나 헥헥거린다거나 집에와서 많이 피
                                    곤해하고 기운이 하나도 없이 하루종일 몰아잤거든요. 항상 조금 불안했던 모습을 보여서 이번에도 
                                    걱정을 조금 했었는데 웬일이에요..; 민망할 정도로 포도가 너무 편하게 잘 지냈던거 있죠! 집에와서도 온 몸이 완전 
                                    말랑거리구 눈도 초롱초롱~ 그냥 계속 집에 있던 것처럼 놀고 까불어요~ ㅎㅎㅎ 되게 규칙적인 생활하구 쉴때는 쉬고 놀때는
                                    놀고 편하게 지내다 왔다는게 얼굴에 묻어있어요. 데리러갔을때 펫시터님 들어가시고도 문을 계속 쳐다보더라구요? 
                                    ㅎㅎㅎㅎ 그래서 저희는 포도 속마음이 ‘아 나 왜 데리러왔어 여기 살고 싶은데‘ 하고 있다고 엘레베이터 타고 내려오면서 
                                    한참 웃었어요! ㅎㅎ 저도 15살 된 노견 둘 소풍 보내고 아주 오랫동안 반려인으로 살고 있는데, 표정보면 우리는 딱 알잖아요. 
                                    얘가 어땟는지ㅎㅎ 포도는 분명히 너무 즐거웠대요. 목소리도 차분~하시고 집 환경도 쾌적하고 강아지를 정말 편안하게 케어 
                                    해주시는 것 같아서 다음에 또 부탁드리고 싶어요:-) 포도는 지금 원래 집에서 보냈던 일상처럼 집에 와서 피곤한 기색없이 
                                    잘 놀고 있어요! :-) 디스크가 있어서 걱정했는데 네 다리 아주 튼튼하게 허리도 말랑말랑해요! ㅎㅎ 담번에도 일있을때 
                                    일정만 맞다면 펫시터님께 꼭 맡기구 싶네요! 1박 2일 동안 일지 세심하게 보내주시고 포도 편안하게 잘 케어해주셔서 넘 감사해요. :-)
                                  </p>
          
                                  <a class="community-card-button-a">
                                    <p class="community-card-button">내용 더 보기</p>
                                  </a>
          
                                  
                                  <div class="community-card-see-petsister-a">
                                    <p class="community-card-see-petsister">이 후기의 펫시터가 궁금하다면?</p>
                                  </div>
                                  
                                  <a class="petsister-a">
                                    <div class="petsister">
                                        <img class="petsister-img" src="../resources/img/board/그림이사진1.jpg" alt="그림이사진">
                                        <div class="petsister-img-left">
                                            <p style="margin-top: 0; margin-bottom: 0; font-size: 15px; color:rgb(56, 60, 71);">박◯연 펫시터*인천 부평구 부개동</p>
                                            <p style="margin-bottom: 0; margin-top: 9px; font-size: 13px; color: rgb(56, 60, 72);">밤송이네 아늑한 힐링공간</p>
                                        </div>
                                    </div>
                                  </a>
                              </div>
                              <div class="community-card">
                                <div class="community-card-img-a">
                                    <img class="community-card-img" src="/resources/img/board/갈색포매라니안.jpg" alt="test">
                                </div>
        
                                <div class="community-card-title">
                                    <p class="community-card-writer">
                                      포도
                                      보호자님
                                    </p>
                                    <div class="community-card-star">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    </div>
                                </div>
                                
                                <p class="community-card-content">포도 펫시팅은 처음이었어요. 그동안 부득이하게 외박해야할때 강아지 있는 지인 집, 
                                  강아지 없는 지인 집 두 번 정도 맡겨보았는데 데리러 갈때마다 눈이 충혈되어 있거나 헥헥거린다거나 집에와서 많이 피
                                  곤해하고 기운이 하나도 없이 하루종일 몰아잤거든요. 항상 조금 불안했던 모습을 보여서 이번에도 
                                  걱정을 조금 했었는데 웬일이에요..; 민망할 정도로 포도가 너무 편하게 잘 지냈던거 있죠! 집에와서도 온 몸이 완전 
                                  말랑거리구 눈도 초롱초롱~ 그냥 계속 집에 있던 것처럼 놀고 까불어요~ ㅎㅎㅎ 되게 규칙적인 생활하구 쉴때는 쉬고 놀때는
                                  놀고 편하게 지내다 왔다는게 얼굴에 묻어있어요. 데리러갔을때 펫시터님 들어가시고도 문을 계속 쳐다보더라구요? 
                                  ㅎㅎㅎㅎ 그래서 저희는 포도 속마음이 ‘아 나 왜 데리러왔어 여기 살고 싶은데‘ 하고 있다고 엘레베이터 타고 내려오면서 
                                  한참 웃었어요! ㅎㅎ 저도 15살 된 노견 둘 소풍 보내고 아주 오랫동안 반려인으로 살고 있는데, 표정보면 우리는 딱 알잖아요. 
                                  얘가 어땟는지ㅎㅎ 포도는 분명히 너무 즐거웠대요. 목소리도 차분~하시고 집 환경도 쾌적하고 강아지를 정말 편안하게 케어 
                                  해주시는 것 같아서 다음에 또 부탁드리고 싶어요:-) 포도는 지금 원래 집에서 보냈던 일상처럼 집에 와서 피곤한 기색없이 
                                  잘 놀고 있어요! :-) 디스크가 있어서 걱정했는데 네 다리 아주 튼튼하게 허리도 말랑말랑해요! ㅎㅎ 담번에도 일있을때 
                                  일정만 맞다면 펫시터님께 꼭 맡기구 싶네요! 1박 2일 동안 일지 세심하게 보내주시고 포도 편안하게 잘 케어해주셔서 넘 감사해요. :-)
                                </p>
        
                                <a class="community-card-button-a">
                                  <p class="community-card-button">내용 더 보기</p>
                                </a>
        
                                
                                <div class="community-card-see-petsister-a">
                                  <p class="community-card-see-petsister">이 후기의 펫시터가 궁금하다면?</p>
                                </div>
                                
                                <a class="petsister-a">
                                  <div class="petsister">
                                      <img class="petsister-img" src="../resources/img/board/그림이사진1.jpg" alt="그림이사진">
                                      <div class="petsister-img-left">
                                          <p style="margin-top: 0; margin-bottom: 0; font-size: 15px; color:rgb(56, 60, 71);">박◯연 펫시터*인천 부평구 부개동</p>
                                          <p style="margin-bottom: 0; margin-top: 9px; font-size: 13px; color: rgb(56, 60, 72);">밤송이네 아늑한 힐링공간</p>
                                      </div>
                                  </div>
                                </a>
                            </div>
                            <div class="community-card">
                              <div class="community-card-img-a">
                                  <img class="community-card-img" src="/resources/img/board/비숑두마리.jpg" alt="test">
                              </div>
      
                              <div class="community-card-title">
                                  <p class="community-card-writer">
                                    포도
                                    보호자님
                                  </p>
                                  <div class="community-card-star">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                  </div>
                              </div>
                              
                              <p class="community-card-content">포도 펫시팅은 처음이었어요. 그동안 부득이하게 외박해야할때 강아지 있는 지인 집, 
                                강아지 없는 지인 집 두 번 정도 맡겨보았는데 데리러 갈때마다 눈이 충혈되어 있거나 헥헥거린다거나 집에와서 많이 피
                                곤해하고 기운이 하나도 없이 하루종일 몰아잤거든요. 항상 조금 불안했던 모습을 보여서 이번에도 
                                걱정을 조금 했었는데 웬일이에요..; 민망할 정도로 포도가 너무 편하게 잘 지냈던거 있죠! 집에와서도 온 몸이 완전 
                                말랑거리구 눈도 초롱초롱~ 그냥 계속 집에 있던 것처럼 놀고 까불어요~ ㅎㅎㅎ 되게 규칙적인 생활하구 쉴때는 쉬고 놀때는
                                놀고 편하게 지내다 왔다는게 얼굴에 묻어있어요. 데리러갔을때 펫시터님 들어가시고도 문을 계속 쳐다보더라구요? 
                                ㅎㅎㅎㅎ 그래서 저희는 포도 속마음이 ‘아 나 왜 데리러왔어 여기 살고 싶은데‘ 하고 있다고 엘레베이터 타고 내려오면서 
                                한참 웃었어요! ㅎㅎ 저도 15살 된 노견 둘 소풍 보내고 아주 오랫동안 반려인으로 살고 있는데, 표정보면 우리는 딱 알잖아요. 
                                얘가 어땟는지ㅎㅎ 포도는 분명히 너무 즐거웠대요. 목소리도 차분~하시고 집 환경도 쾌적하고 강아지를 정말 편안하게 케어 
                                해주시는 것 같아서 다음에 또 부탁드리고 싶어요:-) 포도는 지금 원래 집에서 보냈던 일상처럼 집에 와서 피곤한 기색없이 
                                잘 놀고 있어요! :-) 디스크가 있어서 걱정했는데 네 다리 아주 튼튼하게 허리도 말랑말랑해요! ㅎㅎ 담번에도 일있을때 
                                일정만 맞다면 펫시터님께 꼭 맡기구 싶네요! 1박 2일 동안 일지 세심하게 보내주시고 포도 편안하게 잘 케어해주셔서 넘 감사해요. :-)
                              </p>
      
                              <a class="community-card-button-a">
                                <p class="community-card-button">내용 더 보기</p>
                              </a>
      
                              
                              <div class="community-card-see-petsister-a">
                                <p class="community-card-see-petsister">이 후기의 펫시터가 궁금하다면?</p>
                              </div>
                              
                              <a class="petsister-a">
                                <div class="petsister">
                                    <img class="petsister-img" src="../resources/img/board/그림이사진1.jpg" alt="그림이사진">
                                    <div class="petsister-img-left">
                                        <p style="margin-top: 0; margin-bottom: 0; font-size: 15px; color:rgb(56, 60, 71);">박◯연 펫시터*인천 부평구 부개동</p>
                                        <p style="margin-bottom: 0; margin-top: 9px; font-size: 13px; color: rgb(56, 60, 72);">밤송이네 아늑한 힐링공간</p>
                                    </div>
                                </div>
                              </a>
                          </div>
                              </div>
                              <div class="my-masonry-grid_column">
                                <div class="community-card">
                                  <div class="community-card-img-a">
                                      <img class="community-card-img" src="/resources/img/board/짱귀욤비숑.jpg" alt="test">
                                  </div>
          
                                  <div class="community-card-title">
                                      <p class="community-card-writer">
                                        포도
                                        보호자님
                                      </p>
                                      <div class="community-card-star">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                        <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      </div>
                                  </div>
                                  
                                  <p class="community-card-content">포도 펫시팅은 처음이었어요. 그동안 부득이하게 외박해야할때 강아지 있는 지인 집, 
                                    강아지 없는 지인 집 두 번 정도 맡겨보았는데 데리러 갈때마다 눈이 충혈되어 있거나 헥헥거린다거나 집에와서 많이 피
                                    곤해하고 기운이 하나도 없이 하루종일 몰아잤거든요. 항상 조금 불안했던 모습을 보여서 이번에도 
                                    걱정을 조금 했었는데 웬일이에요..; 민망할 정도로 포도가 너무 편하게 잘 지냈던거 있죠! 집에와서도 온 몸이 완전 
                                    말랑거리구 눈도 초롱초롱~ 그냥 계속 집에 있던 것처럼 놀고 까불어요~ ㅎㅎㅎ 되게 규칙적인 생활하구 쉴때는 쉬고 놀때는
                                    놀고 편하게 지내다 왔다는게 얼굴에 묻어있어요. 데리러갔을때 펫시터님 들어가시고도 문을 계속 쳐다보더라구요? 
                                    ㅎㅎㅎㅎ 그래서 저희는 포도 속마음이 ‘아 나 왜 데리러왔어 여기 살고 싶은데‘ 하고 있다고 엘레베이터 타고 내려오면서 
                                    한참 웃었어요! ㅎㅎ 저도 15살 된 노견 둘 소풍 보내고 아주 오랫동안 반려인으로 살고 있는데, 표정보면 우리는 딱 알잖아요. 
                                    얘가 어땟는지ㅎㅎ 포도는 분명히 너무 즐거웠대요. 목소리도 차분~하시고 집 환경도 쾌적하고 강아지를 정말 편안하게 케어 
                                    해주시는 것 같아서 다음에 또 부탁드리고 싶어요:-) 포도는 지금 원래 집에서 보냈던 일상처럼 집에 와서 피곤한 기색없이 
                                    잘 놀고 있어요! :-) 디스크가 있어서 걱정했는데 네 다리 아주 튼튼하게 허리도 말랑말랑해요! ㅎㅎ 담번에도 일있을때 
                                    일정만 맞다면 펫시터님께 꼭 맡기구 싶네요! 1박 2일 동안 일지 세심하게 보내주시고 포도 편안하게 잘 케어해주셔서 넘 감사해요. :-)
                                  </p>
          
                                  <a class="community-card-button-a">
                                    <p class="community-card-button">내용 더 보기</p>
                                  </a>
          
                                  
                                  <div class="community-card-see-petsister-a">
                                    <p class="community-card-see-petsister">이 후기의 펫시터가 궁금하다면?</p>
                                  </div>
                                  
                                  <a class="petsister-a">
                                    <div class="petsister">
                                        <img class="petsister-img" src="../resources/img/board/그림이사진1.jpg" alt="그림이사진">
                                        <div class="petsister-img-left">
                                            <p style="margin-top: 0; margin-bottom: 0; font-size: 15px; color:rgb(56, 60, 71);">박◯연 펫시터*인천 부평구 부개동</p>
                                            <p style="margin-bottom: 0; margin-top: 9px; font-size: 13px; color: rgb(56, 60, 72);">밤송이네 아늑한 힐링공간</p>
                                        </div>
                                    </div>
                                  </a>
                              </div>
                              <div class="community-card">
                                <div class="community-card-img-a">
                                    <img class="community-card-img" src="/resources/img/board/갈색포매라니안.jpg" alt="test">
                                </div>
        
                                <div class="community-card-title">
                                    <p class="community-card-writer">
                                      포도
                                      보호자님
                                    </p>
                                    <div class="community-card-star">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                      <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    </div>
                                </div>
                                
                                <p class="community-card-content">포도 펫시팅은 처음이었어요. 그동안 부득이하게 외박해야할때 강아지 있는 지인 집, 
                                  강아지 없는 지인 집 두 번 정도 맡겨보았는데 데리러 갈때마다 눈이 충혈되어 있거나 헥헥거린다거나 집에와서 많이 피
                                  곤해하고 기운이 하나도 없이 하루종일 몰아잤거든요. 항상 조금 불안했던 모습을 보여서 이번에도 
                                  걱정을 조금 했었는데 웬일이에요..; 민망할 정도로 포도가 너무 편하게 잘 지냈던거 있죠! 집에와서도 온 몸이 완전 
                                  말랑거리구 눈도 초롱초롱~ 그냥 계속 집에 있던 것처럼 놀고 까불어요~ ㅎㅎㅎ 되게 규칙적인 생활하구 쉴때는 쉬고 놀때는
                                  놀고 편하게 지내다 왔다는게 얼굴에 묻어있어요. 데리러갔을때 펫시터님 들어가시고도 문을 계속 쳐다보더라구요? 
                                  ㅎㅎㅎㅎ 그래서 저희는 포도 속마음이 ‘아 나 왜 데리러왔어 여기 살고 싶은데‘ 하고 있다고 엘레베이터 타고 내려오면서 
                                  한참 웃었어요! ㅎㅎ 저도 15살 된 노견 둘 소풍 보내고 아주 오랫동안 반려인으로 살고 있는데, 표정보면 우리는 딱 알잖아요. 
                                  얘가 어땟는지ㅎㅎ 포도는 분명히 너무 즐거웠대요. 목소리도 차분~하시고 집 환경도 쾌적하고 강아지를 정말 편안하게 케어 
                                  해주시는 것 같아서 다음에 또 부탁드리고 싶어요:-) 포도는 지금 원래 집에서 보냈던 일상처럼 집에 와서 피곤한 기색없이 
                                  잘 놀고 있어요! :-) 디스크가 있어서 걱정했는데 네 다리 아주 튼튼하게 허리도 말랑말랑해요! ㅎㅎ 담번에도 일있을때 
                                  일정만 맞다면 펫시터님께 꼭 맡기구 싶네요! 1박 2일 동안 일지 세심하게 보내주시고 포도 편안하게 잘 케어해주셔서 넘 감사해요. :-)
                                </p>
        
                                <a class="community-card-button-a">
                                  <p class="community-card-button">내용 더 보기</p>
                                </a>
        
                                
                                <div class="community-card-see-petsister-a">
                                  <p class="community-card-see-petsister">이 후기의 펫시터가 궁금하다면?</p>
                                </div>
                                
                                <a class="petsister-a">
                                  <div class="petsister">
                                      <img class="petsister-img" src="../resources/img/board/그림이사진1.jpg" alt="그림이사진">
                                      <div class="petsister-img-left">
                                          <p style="margin-top: 0; margin-bottom: 0; font-size: 15px; color:rgb(56, 60, 71);">박◯연 펫시터*인천 부평구 부개동</p>
                                          <p style="margin-bottom: 0; margin-top: 9px; font-size: 13px; color: rgb(56, 60, 72);">밤송이네 아늑한 힐링공간</p>
                                      </div>
                                  </div>
                                </a>
                            </div>
                            <div class="community-card">
                              <div class="community-card-img-a">
                                  <img class="community-card-img" src="/resources/img/board/강아지발판.jpg" alt="test">
                              </div>
      
                              <div class="community-card-title">
                                  <p class="community-card-writer">
                                    포도
                                    보호자님
                                  </p>
                                  <div class="community-card-star">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                    <img width="9" height="9" src="https://petplanet.co/static/images/common/star_1.png" alt="">
                                  </div>
                              </div>
                              
                              <p class="community-card-content">포도 펫시팅은 처음이었어요. 그동안 부득이하게 외박해야할때 강아지 있는 지인 집, 
                                강아지 없는 지인 집 두 번 정도 맡겨보았는데 데리러 갈때마다 눈이 충혈되어 있거나 헥헥거린다거나 집에와서 많이 피
                                곤해하고 기운이 하나도 없이 하루종일 몰아잤거든요. 항상 조금 불안했던 모습을 보여서 이번에도 
                                걱정을 조금 했었는데 웬일이에요..; 민망할 정도로 포도가 너무 편하게 잘 지냈던거 있죠! 집에와서도 온 몸이 완전 
                                말랑거리구 눈도 초롱초롱~ 그냥 계속 집에 있던 것처럼 놀고 까불어요~ ㅎㅎㅎ 되게 규칙적인 생활하구 쉴때는 쉬고 놀때는
                                놀고 편하게 지내다 왔다는게 얼굴에 묻어있어요. 데리러갔을때 펫시터님 들어가시고도 문을 계속 쳐다보더라구요? 
                                ㅎㅎㅎㅎ 그래서 저희는 포도 속마음이 ‘아 나 왜 데리러왔어 여기 살고 싶은데‘ 하고 있다고 엘레베이터 타고 내려오면서 
                                한참 웃었어요! ㅎㅎ 저도 15살 된 노견 둘 소풍 보내고 아주 오랫동안 반려인으로 살고 있는데, 표정보면 우리는 딱 알잖아요. 
                                얘가 어땟는지ㅎㅎ 포도는 분명히 너무 즐거웠대요. 목소리도 차분~하시고 집 환경도 쾌적하고 강아지를 정말 편안하게 케어 
                                해주시는 것 같아서 다음에 또 부탁드리고 싶어요:-) 포도는 지금 원래 집에서 보냈던 일상처럼 집에 와서 피곤한 기색없이 
                                잘 놀고 있어요! :-) 디스크가 있어서 걱정했는데 네 다리 아주 튼튼하게 허리도 말랑말랑해요! ㅎㅎ 담번에도 일있을때 
                                일정만 맞다면 펫시터님께 꼭 맡기구 싶네요! 1박 2일 동안 일지 세심하게 보내주시고 포도 편안하게 잘 케어해주셔서 넘 감사해요. :-)
                              </p>
      
                              <a class="community-card-button-a">
                                <p class="community-card-button">내용 더 보기</p>
                              </a>
      
                              
                              <div class="community-card-see-petsister-a">
                                <p class="community-card-see-petsister">이 후기의 펫시터가 궁금하다면?</p>
                              </div>
                              
                              <a class="petsister-a">
                                <div class="petsister">
                                    <img class="petsister-img" src="../resources/img/board/그림이사진1.jpg" alt="그림이사진">
                                    <div class="petsister-img-left">
                                        <p style="margin-top: 0; margin-bottom: 0; font-size: 15px; color:rgb(56, 60, 71);">박◯연 펫시터*인천 부평구 부개동</p>
                                        <p style="margin-bottom: 0; margin-top: 9px; font-size: 13px; color: rgb(56, 60, 72);">밤송이네 아늑한 힐링공간</p>
                                    </div>
                                </div>
                              </a>
                          </div>
                              </div>
                            </div>
                          </div>
                        </div>
                      </section>
    
                      
                      <!--페이지네이션 시작-->
                      <nav class="page-nation" aria-label="...">
                        <ul class="pagination">
                          <li class="page-item disabled">
                            <span class="page-link">Previous</span>
                          </li>
                          <li class="page-item"><a class="page-link" href="#">1</a></li>
                          <li class="page-item active" aria-current="page">
                            <span class="page-link">2</span>
                          </li>
                          <li class="page-item"><a class="page-link" href="#">3</a></li>
                          <li class="page-item">
                            <a class="page-link" href="#">Next</a>
                          </li>
                        </ul>
                      </nav>
                      <!--페이지네이션 끝-->
                      
                      
                      
                      
                      
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
      <jsp:include page="../common/footer.jsp" />  
      <!-- Footer 영역 끝 -->

        <script>
          // function doClick() {
            
          //   document.getElementById("searchform").style.borderColor = "blue"; // 인풋태그
          //   document.getElementById("searchSubmit").style.backgroundColor = "red"; // 버튼태그
    
    
          // }
    
          window.onload = function() {
            const btnEl = document.getElementById("searchSubmit");
            const inputEl = document.getElementById("searchform");
            
            btnEl.addEventListener('mouseover', function() {
              btnEl.style.backgroundColor = "#B9EAFF"; //#B9EAFF //#b5d8ec
              inputEl.style.borderColor = "#B9EAFF";
            });
    
            btnEl.addEventListener('mouseout', function() {
              btnEl.style.backgroundColor = "#0888D0";
              inputEl.style.borderColor = "#0888D0";
            });
    
          }
          
    
          
        
        </script>
    </body>
    </html>