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
                      "인기 커뮤니티 TOP4"
                    </h3>
                    <div class="popular-post-subsection">
                      
                      <div class="row row-cols-1 row-cols-md-4 g-4">
                          <!-- 그림 4개 정렬 시작 -->
                        <c:forEach var="b" items="${ list }" > 
                          
	                        <div class="col">
	                          <div class="card" onclick="goPage(${b.boardNo})">
		                          <c:if test="${ not empty b.changeName }">
		                            <div class="boardMain-top-img"><img src="${b.atFilePath }${b.changeName}" class="card-img-top" alt="..."></div>
		                          </c:if>  
		                          <c:if test="${ empty b.changeName }">
		                          	 <div class="boardMain-top-img"><img src="/resources/img/main/첨부파일없음.png" class="card-img-top" alt="..."></div>
		                          </c:if>
		                          <div class="card-body">
			                          <h5 class="card-title">${ b.boardTitle }</h5>
			                          <p class="card-text" style="height: 96px">${ b.boardContent }</p>
		                          </div>
	                          </div>
	                        </div>
	                        
                         </c:forEach>
   
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
                            <a href="mypetlist.bo">
                              <span class="see-more">
                               	 바로가기<i class="fa-solid fa-chevron-right"></i>
                              </span>
                            </a>
                        </div>
                        
                        <div class="row row-cols-1 row-cols-md-5 g-4">
                        	<c:forEach var="b" items="${list1}" begin="0" end="14" varStatus="loop">
                        		<div class="col">
                        			
								    <div class="card" onclick="goPage(${b.boardNo})">
								      <c:if test="${ not empty b.changeName }">
			                            <div class="boardMain-img"><img src="${b.atFilePath }${b.changeName}" class="card-img-top" alt="..."></div>
			                          </c:if>  
			                          <c:if test="${ empty b.changeName }">
			                         	 <div class="boardMain-img"><img src="/resources/img/main/첨부파일없음.png" class="card-img-top" alt="..."></div>
			                          </c:if>
								      <div class="card-body">
								        <h5 class="card-title">${ b.boardTitle }</h5>
								        <p class="card-text">${ b.boardContent }</p>
								      </div>
								    </div>
								    
						  		</div>
                        	</c:forEach>
						</div>
                           
                         	
                         	
                         	
                         	
                         	
                         	
                         	
                           
                          
                         
                      </div>  
                        
                           
                           
                              
                      </div>
                    </div> 
                  <!--반려견정보--> 
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
  
  <script>
  function goPage(bno){
		    location.href = "detail.bo?bno=" + bno;
  }
  </script>
    
</body>
</html>