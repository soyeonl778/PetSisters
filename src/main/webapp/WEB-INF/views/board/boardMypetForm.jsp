<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- header css -->
  <link rel="stylesheet"
	href="/resources/css/reservation/careJournalList.css">
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
                  
                  <!-- 카드 4개 영역 -->
                    
                  <div class="popular-posts-section">
                    <h3 class="front-page" id="popular-title">
                      "인기 커뮤니티 TOP5"
                    </h3>
                    <div class="popular-post-subsection">
                      
                      <div class="row row-cols-1 row-cols-md-4 g-4">
                         
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
                      
                      </div>


                    </div>
                  
                  </div>
                  
                  <!-- 카드 4개 영역 끝 -->
                  
                  
                    </div>
                    <!-- 카드4개영역 끝 -->
                  
                  
                  
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
</html>