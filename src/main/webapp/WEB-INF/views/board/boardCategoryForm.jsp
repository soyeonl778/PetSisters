<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    					
    					<c:if test="${ not empty loginUser }">
    					<div class="writeBoarder">
    						<a href="enrollForm.bo">
    							+ 글작성
    						</a>
    					</div>
    					</c:if>
    
                        <div>
                          <div class="card-llist-parent">
                            <div id="review-list-desktop" class="my-masonry-grid">
                              
                              <!-- 페이지네이션 반복 6개씩 -->
                                <c:forEach var="b" items="${ list }">
                                  <div class="community-card">
                                    <div class="community-card-img-a">
                                        <img class="community-card-img" src="${ b.dogImg }" alt="test">
                                    </div>
            
                                    <div class="community-card-title">
                                        <p class="community-card-writer">
						                    ${ b.dogName }
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
                                    
                                    <p class="community-card-content">
                                    	${ b.boardContent }             
                                    </p>
            
                                    <a href="detail.bo?bno=${ b.boardNo }" class="community-card-button-a">  
                                      <p class="community-card-button">내용 더 보기</p>
                                    </a>
            
                                    
                                    <div class="community-card-see-petsister-a">
                                      <p class="community-card-see-petsister">이 커뮤니티의 강아지가 궁금하다면?</p>
                                    </div>
                                    
                                    <a class="petsister-a">
                                      <div class="petsister">
                                          <img class="petsister-img" src="/resources/upFiles/dog_profiles/로이.jpg" alt="그림이사진">
                                          <div class="petsister-img-left">
                                              <p style="margin-top: 0; margin-bottom: 0; font-size: 15px; color:rgb(56, 60, 71);">박◯연 펫시터*인천 부평구 부개동</p>
                                              <p style="margin-bottom: 0; margin-top: 9px; font-size: 13px; color: rgb(56, 60, 72);">밤송이네 아늑한 힐링공간</p>
                                          </div>
                                      </div>
                                    </a>
                                  </div>
                                  
                                   
                                   
                              </c:forEach>
                            </div>
                          </div>
                        </div>
                      </section>
    
                      
                      <!--페이지네이션 시작-->
                      <div id="pagingArea">
               		  	<ul class="pagination">
		                	<c:choose>
		                		<c:when test="${ pi.currentPage eq 1 }">
		                    		<li class="page-item disabled"><a class="page-link" href="#">Previous</a></li>
		                		</c:when>
		                		<c:otherwise>
				                    <li class="page-item"><a class="page-link" href="list.bo?cPage=${ pi.currentPage - 1 }">Previous</a></li>
		                		</c:otherwise>
		                	</c:choose>
		                    
		                    
		                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
		                    	<li class="page-item"><a class="page-link" href="list.bo?cPage=${ p }">${ p }</a></li>
		                    </c:forEach>
		                    
		                    <c:choose>
		                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
		                    		<li class="page-item disabled"><a class="page-link" href="#">Next</a></li>
		                    	</c:when>
		                    	<c:otherwise>
		                    		<li class="page-item"><a class="page-link" href="list.bo?cPage=${ pi.currentPage + 1 }">Next</a></li>
		                    	</c:otherwise>
		                    </c:choose>
               		 	</ul>
            		 </div>
                      <!--페이지네이션 끝-->





                      <!--페이지네이션 시작-->
                      <!--
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
                      -->
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