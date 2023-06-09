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
  <link rel="stylesheet" href="/resources/css/board/community.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>커뮤니티 메인페이지</title>
  <!--폰트어썸-->
  <script src="https://kit.fontawesome.com/d3eb8276e5.js" crossorigin="anonymous"></script>


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
              <div id="boyoung_page" class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <!-- <div style="height: 1000px; background-color: beige;"></div> -->
                
                <div class="container">
                  <!-- 검색폼 끝-->
                  <div class="popular-posts-section">
                    <h3 class="front-page" id="popular-title">
                      "인기 커뮤니티 TOP5"
                    </h3>
                    <div class="popular-post-subsection">
                      
                      <div class="row row-cols-1 row-cols-md-4 g-4">
                          <!-- 그림 4개 정렬 시작 -->
                        <div class="col">
                          <div class="card">
                            <img src="/resources/upFiles/dog_profiles/개1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text" style="height: 96px">This is a longer card with supporting text below as a natural lead-in to additional content.This is a longer card with supporting text below as a natural lead-in to additional content.This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                            </div>
                          </div>
                        </div>
                        <div class="col">
                          <div class="card">
                            <img src="/resources/upFiles/dog_profiles/개4.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                          </div>
                        </div>
                        <div class="col">
                          <div class="card">
                            <img src="/resources/upFiles/dog_profiles/트포-96974.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content.</p>
                            </div>
                          </div>
                        </div>
                        <div class="col">
                          <div class="card">
                            <img src="/resources/upFiles/dog_profiles/퍼지펫-06258.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                              <h5 class="card-title">Card title</h5>
                              <p class="card-text">This is a longer card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                            </div>
                          </div>
                        </div>
                      <!-- 그림 4개 정렬 끝 -->
                      </div>


                    </div>
                  </div>
                  </div> 

                  <div id="talk_free_room">
                    <!--반려견정보-->
                    <div class="dog-free-board">
                      <div class="popular-posts-section">
                        <h3 class="front-page" id="popular-title">
                          "내 강아지 자랑"
                        </h3>
                        <div class="popular-post-subsection">
                          <div class="popular-post-meta">
                              <a href="list.bo">
                                <span class="see-more">
                                  키워드로 검색<i class="fa-solid fa-chevron-right"></i>
                                </span>
                              </a>
                          </div>
                          <div class="popular-posts">
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/06/09153801/dog-156805_1280-390x220.png" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 입마개, 언제 사용해야 할까요?</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/05/09153839/shutterstock_412786489-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 마운팅 하는 이유 및 교정 방법</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/06/09153657/playing-puppies-790638_1280-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 분리불안 증상 및 치료</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/06/09153826/dog-1148863_960_720-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">무는 강아지 교육, 때리는 건 절대 안돼!</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/07/09153401/animal-control-service-chain-close-up-1350588-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">물건을 물어뜯는 강아지, 휴지가 또 사라졌어요</a></span>
                            </div>
                          </div>
                        </div>
                        <div class="popular-post-subsection">
                          <div class="popular-post-meta">
                              <a href="list.bo">
                                <span class="see-more">
                                  키워드로 검색<i class="fa-solid fa-chevron-right"></i>
                                </span>
                              </a>
                          </div>
                          <div class="popular-posts">
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2022/12/14185410/AdobeStock_527915020-390x220.jpeg" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 입마개, 언제 사용해야 할까요?</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2018/06/09160422/vegetables-790022_960_720-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 마운팅 하는 이유 및 교정 방법</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2022/12/28152616/AdobeStock_137194823-390x220.jpeg" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 분리불안 증상 및 치료</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/07/09153450/watermelon-166842_1920-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">무는 강아지 교육, 때리는 건 절대 안돼!</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/10/09152706/close-up-honey-pouring-33260-220x150.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">물건을 물어뜯는 강아지, 휴지가 또 사라졌어요</a></span>
                            </div>
                          </div>
                        </div>
                        <div class="popular-post-subsection">
                          <div class="popular-post-meta">
                              <a href="list.bo">
                                <span class="see-more">
                                  키워드로 검색<i class="fa-solid fa-chevron-right"></i>
                                </span>
                              </a>
                          </div>
                          <div class="popular-posts">
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/06/09153801/dog-156805_1280-390x220.png" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 입마개, 언제 사용해야 할까요?</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/05/09153839/shutterstock_412786489-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 마운팅 하는 이유 및 교정 방법</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2021/06/28163200/pexels-anna-shvets-4588019-scaled-e1624865931805-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">강아지 분리불안 증상 및 치료</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/06/09153826/dog-1148863_960_720-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">무는 강아지 교육, 때리는 건 절대 안돼!</a></span>
                            </div>
                            <div class="popular-post-grid">
                                <span class="post-thumbnail"><a href=""><img src="https://images.mypetlife.co.kr/content/uploads/2019/07/09153401/animal-control-service-chain-close-up-1350588-390x220.jpg" alt=""></a></span>
                                <span class="post-title"><a href="">물건을 물어뜯는 강아지, 휴지가 또 사라졌어요</a></span>
                            </div>
                          </div>
                        </div>
                      



                      </div>  

                    </div>
                </div>

                </div>
                
                
                
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>

    </div>
  
  <!-- Footer 영역 시작 -->
  <jsp:include page="../common/footer.jsp" />
  <!-- Footer 영역 끝 -->
    
</body>
</htm>