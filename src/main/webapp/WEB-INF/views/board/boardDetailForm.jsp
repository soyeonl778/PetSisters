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
      
      <title>커뮤니티 상세페이지 현재- 임보영 임보영</title>
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
                              <h2 class="header-title">상세페이지</h2>
                              <img class="header-img" src="https://petplanet.co/static/images/reviews/like.png"></div>
                          </div>
                        </div>

                          <div class="main-card">
                              <div id="mainWrapper" class="main-card-region">

                                <div class="community-detail-board">
                                  
                                  
                                  
                                  
                                  <div id="carouselExampleControls" class="subWrapper carousel slide" data-bs-ride="carousel">
                                  	
                                  	
                                  	
                                  	<div class="subContainer carousel-inner">
                                  	
	                                  	<div class="imgSection carousel-item active">
	                                  		<img class="mainImg d-block w-100" src="/resources/img/main/첨부파일없음.png">
	                                  	</div>
	                                  	<div class="imgSection carousel-item">
	                                  		<img class="mainImg d-block w-100" src="/resources/img/main/그림이사진1.jpg">
	                                  	</div>
	                                  	<div class="imgSection carousel-item">
	                                  		<img class="mainImg d-block w-100" src="/resources/img/main/그림이사진2.jpg">
	                                  	</div>
	                                  	<div class="imgSection carousel-item">
	                                  		<img class="mainImg d-block w-100" src="/resources/img/main/코송-040.jpg">
	                                  	</div>
	                                  	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
										    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
										    <span class="visually-hidden">Previous</span>
										  </button>
										  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
										    <span class="carousel-control-next-icon" aria-hidden="true"></span>
										    <span class="visually-hidden">Next</span>
										  </button>
	                                  	
	                                  	
	                                  	<div class="topTitle">
	                                  		<div class="topImg">
		                                  		<img src="/resources/img/main/첨부파일없음.png">
		                                  		<div>조승호</div>
	                                  		</div>
	                                  		<div class="topCount">
	                                  			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
												  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
												  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
												</svg>
	                                  			<div>159</div>
	                                  		</div>
	                                  	</div>
                                  	</div>
                                  	
                                  	
                                  	<div class="contentWrapper">
	                                  	<div class="bottomTit">
	                                  		${b.dogName}
	                                  	</div>
	                                  	
	                                  	<div class="bottomDesc">
	                                  		${b.boardTitle}
	                                  	</div>
                                  	
                                  	
	                                  	<div class="petInfo">
	                                  		이 회원님의 반려동물이 궁금하다면?
	                                  	</div>
	                                  	
	                                  	<div class="petInfomation">
	                                  		<img src="/resources/img/main/첨부파일없음.png">
	                                  		<div>
	                                  			<div class="petName">
	                                  				홍시
	                                  			</div>
	                                  			<div class="petBirth">
	                                  				3.5kg / F / 2020-04-12
	                                  			</div>
	                                  		</div>
	                                  	</div>
                                  	
                                  	</div>
                                  	
                                  	<div class="reply">
                                  	
                                  		<div class="replySection">
                                  			<svg class="heart" xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-heart" viewBox="0 0 16 16">
											  <path d="m8 2.748-.717-.737C5.6.281 2.514.878 1.4 3.053c-.523 1.023-.641 2.5.314 4.385.92 1.815 2.834 3.989 6.286 6.357 3.452-2.368 5.365-4.542 6.286-6.357.955-1.886.838-3.362.314-4.385C13.486.878 10.4.28 8.717 2.01L8 2.748zM8 15C-7.333 4.868 3.279-3.04 7.824 1.143c.06.055.119.112.176.171a3.12 3.12 0 0 1 .176-.17C12.72-3.042 23.333 4.867 8 15z"/>
											</svg>
											<div class="like fontDiv">
												좋아요 30
											</div>
                                  			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
											  <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
											</svg>
											<div class="fontDiv">
												댓글 2
											</div>
                                  		</div>
                                  	
                                  	
                                  		<div class="rere">
											댓글                                  		
                                  		</div>
                                  		<div class="replyWrapper">
	                                  		<div class="replys">
	                                  			<img src="/resources/img/main/첨부파일없음.png">
												<div class="replyName">
													<div class="reName">
														뭉이엄마
													</div>
													<div class="replyDesc">
														커여워요
													</div>
												</div>                                  			
	                                  		</div>
	                                  		<div class="replys">
	                                  			<img src="/resources/img/main/첨부파일없음.png">
												<div class="replyName">
													<div class="reName">
														뭉이아빠
													</div>
													<div class="replyDesc">
														커여워요ㅋㅋㅋ
													</div>
												</div>                                  			
	                                  		</div>
	                                  		<div class="replys">
	                                  			<img src="/resources/img/main/첨부파일없음.png">
												<div class="replyName">
													<div class="reName">
														뭉이
													</div>
													<div class="replyDesc">
														ㅋㅋㅋㅋㅋㅋ웃겼어요
													</div>
												</div>                                  			
	                                  		</div>
                                  		</div>
                                  	</div>
                                  	
                                  	
                                  </div>
                                
	                                <div class="btnArea">
	                                	<button class="btn btn-info" onclick="window.history.go(-1)">목록으로</button>
	                                	<c:if test="${ not empty loginUser }">
                                        	<a id="update-icon" class="btn btn-secondary" style="" href="updateForm.bo?bno=${b.boardNo}">수정하기</a>
                                        	<a id="delete-icon" class="btn btn-secondary" style="" href="updateForm.bo?bno=${b.boardNo}">삭제하기</a>
                                        </c:if>
	                                </div>
                                </div>
                                
                                
                                <!-- 여기까지 임보영 -->
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