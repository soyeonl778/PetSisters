<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/careJournalDetail.css">
<title>돌봄일지 상세보기</title>
</head>
<body>
<jsp:include page="../common/header.jsp" />	
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
                <div>
                  <div class="contentContainer accordion accordion-flush" id="accordionPanelsStayOpenExample">
                  
                  <!-- 여긴 for 문 말고 받아온 값만 쓸 것 -->
                  
                    <div class="whoCareArea">
                      <div class="whoCare">
                        <span class="itsme">조승호</span>
                        <span>펫시터님의</span>
                      </div>
                      <div class="careJournal">돌봄 일지</div>
                    </div>
                    
                    
                    
                    <!-- 카드 하나 영역-->
                    
                    <div class="accordion-item">
                    <div class="contentDate accordion-header" id="panelsStayOpen-headingOne">
                    <button id="accoBtn" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true" aria-controls="panelsStayOpen-collapseOne">
                    5월 4일
                    </button>
                    </div>
                    
                    <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-headingOne">
                    <div class="contentMain accordion-body">
                      <div class="contentHour">오후 7시 14분</div>
                      <div class="imgSections">
                        <img src="/resources/img/main/트포-96974.jpg" alt="">
                        <img src="/resources/img/main/트포-96974.jpg" alt="">
                        <img src="/resources/img/main/트포-96974.jpg" alt="">
                      </div>
                      <div class="contentDesc">옷을 위하여서 미인을 구하기 위하여서 그리하였는가? 아니다 그들은 커다란 이상 곧 만천하의 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한
                        봄바람이다</div>
                    </div>
                    
                    <div class="contentMain">
                      <div class="contentHour">오전 11시 14분</div>
                      <div class="imgSections">
                        <img src="/resources/img/main/코송-040.jpg" alt="">
                      </div>
                      <div class="contentDesc">옷을 위하여서 미인을 구하기 위하여서 그리하였는가? 아니다 그들은 커다란 이상 곧 만천하의 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한
                        봄바람이다</div>
                    </div>


                    
                    </div>
                    </div>
                    
                    
                    <!-- 카드 하나 영역-->
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    

                    <div class="contentDate">5월 2일</div>
                    <div class="contentMain">
                      <div class="contentHour">오후 7시 14분</div>
                      <div class="imgSections">
                        <img src="/resources/img/main/트포-96974.jpg" alt="">
                      </div>
                      <div class="contentDesc">옷을 위하여서 미인을 구하기 위하여서 그리하였는가? 아니다 그들은 커다란 이상 곧 만천하의 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한
                        봄바람이다</div>
                    </div>
                    <div class="contentMain">
                      <div class="contentHour">오전 11시 14분</div>
                      <div class="imgSections">
                        <img src="/resources/img/main/코송-040.jpg" alt="">
                      </div>
                      <div class="contentDesc">옷을 위하여서 미인을 구하기 위하여서 그리하였는가? 아니다 그들은 커다란 이상 곧 만천하의 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로 인도하겠다는 커다란 이상을 품었기 때문이다 그러므로 그들은 길지 있을 뿐이다 그들에게 생명을 불어 넣는 것은 따뜻한 봄바람이다 풀밭에 속잎나고 가지에 싹이 트고 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서 불러 내는 것이 따뜻한
                        봄바람이다</div>
                    </div>
                  </div>
                </div>
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
              <!-- 페이지네이션-->
              <div id="pagination">
                <nav aria-label="Page navigation example">
                  <ul id="pagiUl" class="pagination paginationUlTag">
                    <li class="arrowTag">
                      <a href="">&lsaquo;</a>
                    </li>
                    <li class="page-item active">
                      <a class="page-link" href="#">1</a>
                    </li>
                    <li class="page-item">
                      <a class="page-link" href="#">2</a>
                    </li>
                    <li class="page-item">
                      <a class="page-link" href="#">3</a>
                    </li>
                    <li class="arrowTag">
                      <a href="">&rsaquo;</a>
                    </li>
                  </ul>
                </nav>
              </div>
              <!-- 페이지네이션-->
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>
    </div>
  </div>
  <jsp:include page="../common/footer.jsp" />
</body>
</html>