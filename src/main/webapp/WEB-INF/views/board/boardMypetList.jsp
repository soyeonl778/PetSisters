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
            <!-- 사이드 메뉴바 -->
            <div id="snb" class="snb_my" style="position: absolute;">
              <img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
              <h2 class="tit_snb">My Page</h2>
              <div class="inner_sub">
                <ul class="list_menu">
                  <li class="on"><a href="freeList.bo">자유게시판</a></li>
                  <li><a href="mypetList.bo">강아지 자랑</a></li>
                </ul>
              </div>
            </div>
            <!-- 사이드 메뉴바 끝 -->
            
			
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
                      "내 강아지 자랑"
                    </h3>
                    <div class="popular-post-subsection">
                      
                        <!-- test 
                        <div class="row row-cols-1 row-cols-md-5 g-4">
                            <c:forEach var="b" items="${list}" begin="0" end="14" varStatus="loop">
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
                                          -->
                      <div class="row row-cols-1 row-cols-md-5 g-4">
                        <c:forEach var="b" items="${list}" begin="0" end="7">
                          <div class="col">
                            <div class="card" onclick="goPage(${b.boardNo})">
                              <c:if test="${ not empty b.changeName }">
                                <div class="mypetForm-img"><img src="${b.atFilePath}" class="card-img-top"></div>
                              </c:if>
                              <c:if test="${ empty b.changeName }">
                                <div class="mypetForm-img"><img src="/resources/img/main/첨부파일없음.png" class="card-img-top"></div>
                              </c:if>
                              <div class="card-body">
                                <h5 class="card-title">${ b.boardTitle }</h5>
                                <p class="card-text" style="height: 96px">${ b.boardContent }</p>
                              </div>
                            </div>
                          </div>
                        </c:forEach>
                      </div>
                    </div>
                  </div>
                    <!-- 카드 4개 영역 끝 -->
                </div>
                    <!-- 카드4개영역 끝 -->
								<!-- 페이지네이션-->
								<div id="pagination">
									<nav aria-label="Page navigation example">
										<c:if test="${ pi.listCount != 0 }">
										<ul id="pagiUl" class="pagination paginationUlTag">

											<c:choose>
												<c:when test="${ pi.currentPage eq 1 }">
													<li class="arrowTag disabled"><a href="">&lsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a href="mypetList.bo?cPage=${ pi.currentPage - 1 }">&lsaquo;</a></li>
												</c:otherwise>
											</c:choose>

											<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
												<li class="page-item active"><a class="page-link" href="mypetList.bo?cPage=${ p }">${ p }</a></li>
											</c:forEach>

											<c:choose>
												<c:when test="${ pi.currentPage eq pi.maxPage }">
													<li class="arrowTag disabled"><a href="javascript:void(0)">&rsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a href="mypetList.bo?cPage=${pi.currentPage + 1}">&rsaquo;</a></li>
												</c:otherwise>
											</c:choose>

										</ul>
									</c:if>
									</nav>
								</div>
								<!-- 페이지네이션-->
              </div>
            </div> 
          </div>
                
                
                
        <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
        </div>
      </div>
    <!-- 본문 영역 끝-->
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