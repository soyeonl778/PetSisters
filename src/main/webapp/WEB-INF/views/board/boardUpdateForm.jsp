<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/board/boardMain.css">
  <jsp:include page="../common/common.jsp" />
  <link rel="stylesheet" href="/resources/css/board/boardUpdateForm.css">
  
  <!--폰트어썸-->
  <script src="https://kit.fontawesome.com/d3eb8276e5.js" crossorigin="anonymous"></script>
  <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> -->


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
                          <h2 class="header-title">커뮤니티 수정페이지</h2>
                      </div>
                    </div>

                    <div>
                      <div class="main-card">
                          <div class="main-card-region">
                            
                            <!--게시글 메인페이지 시작-->
                            <div class="community-detail-board">
                              

                              <div class="good-icon">
                                <div class="good-icon-under">좋음</div>
                                <i class="fa-sharp fa-solid fa-circle-info" style="color: #c1c7d1;"></i>
                                <p class="quick-community">빠른 커뮤니티 작성됨</p>
                
                              </div>
                              
                              <p class="text-review">텍스트리뷰</p>
                              <a class="petsister-a">
                                <div class="petsister">
                                    <textarea class="petsister-input" type="text" placeholder="커뮤니티를 등록해주세요"></textarea>
                                </div>
                              </a>

                              <p class="photo-img">
                                포토리뷰
                              </p>

                              <div class="file-upload-form">
                                <div class="file-upload-top">
                                  <i class="fa-solid fa-square-plus fa-9x" style="color: #e6e6eb;" ></i>
                                </div>

                                <!-- <label for="file">
                                    <div class="btn-upload">파일 업로드하기</div>
                                </label>
                                <input type="file" name="file" id="file"> -->
                                
                                <form action="" method="post" enctype="multipart/form-data">
                                    <input type="file" name="profile" id="review-img">
                                    <input type="submit">
                                </form>
                              </div>
                              
                              <div class="community-card-petsister-a ">
                                <p class="community-card-petsister">키워드를 입력하세요</p>
                              </div>
                              
                              <div class="petsister-a">
                                <div class="petsister">
                                    <textarea class="petsister-input" type="text" placeholder="키워드를 등록해주세요"></textarea>
                                        <!-- <input class="petsister-input" type="text" placeholder="키워드를 등록해주세요"> -->
                                </div>
                              </div>
                            
                            </div>

                            
                            <!--게시글 메인페이지 끝-->
                          </div>
                          <!--수정버튼/삭제버튼-->
                          <div class="btn-delete-update">
                              <a class="main-card-bottom-button" id="update-btn" href="">
                                수정하기
                              </a>
                              <a class="main-card-bottom-button" href="">
                                삭제하기
                              </a>
                          </div>
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
  <jsp:include page="../common/footer.jsp" />
  <!-- Footer 영역 끝 -->
    
</body>
</html>