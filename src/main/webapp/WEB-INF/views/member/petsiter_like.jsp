<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/petsiter_like.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />

  <title>마이페이지_펫시터찜관리</title>
  <!-- 폰트어썸 아이콘 적용 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
				          <li class="myProfile.me">
				            <a href="myProfile.me">내 프로필</a>
				          </li>
				          <li class="petList.me">
				            <a href="petList.me">반려동물 프로필</a>
				          </li>
				          <li class="petsiterLike.me on">
				            <a href="petsiterLike.me">펫시터 찜</a>
				          </li>
				          <li class="myBoard.me">
				            <a href="myBoard.me">내 게시글 및 댓글</a>
				          </li>
				          <li class="reservationList">
				            <a href="reservationList">예약 조회</a>
				          </li>
				          <li class="journalList">
				            <a href="journalList">돌봄 일지</a>
				          </li>
				        </ul>
				      </div>
				    </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <!--<div style="height: 1000px; background-color: beige;"></div> -->
                <div id="titleWrapper">
                  <h3 class="title_11">펫시터 찜♥</h3>
                </div>
                <div id="main_content">
                  <hr>
                  <div id="contentWrapper">

                    <c:forEach var="l" items="${ list }">
                      <input type="hidden" name="">
                      <div class="content1">
                        <div class="siter_img">
                          <img src="${l.paFilePath}">
                          <i class="fas fa-heart" style="color: #e70000;"></i>
                        </div>
                        <div class="siter_infoSection">
                          <div class="siter_infoArea">
                            <div class="siter_info">
                              <label label>${l.userName} 시터님</label>
                            </div>
                            <div class="siter_info">
                              <h7>${l.address}</h7>
                            </div>
                            <div class="siter_info">
                              <h6 id="siter_title">${l.petSitterTitle}</h6>
                            </div>
                            <div class="siter_info">
                              <p class="petSitterContent">${l.petSitterContent}</p>
                            </div>
                          </div>
                        </div>
                      </div>
                    </c:forEach>

                    <!--
                    <div class="content1">
                      <div class="siter_img">
                        <img src="/resources/upFiles/member_profiles/1.png">
                        <i class="fas fa-heart" style="color: #e70000;"></i>
                      </div>
                      <div class="siter_infoArea">
                        <div class="siter_info">
                          <label label>김조셉 시터님</label>
                        </div>
                        <div class="siter_info">
                          <h7>서울시 구로구 신도림동</h7>
                        </div>
                        <div class="siter_info">
                          <h3>더 사랑하고 아끼고 <br> 책임감 있게~</h3>
                        </div>
                      </div>
                    </div>
                    <div class="content1">
                      <div class="siter_img">
                        <img src="/resources/upFiles/member_profiles/1.png">
                        <i class="fas fa-heart" style="color: #e70000;"></i>
                      </div>
                      <div class="siter_infoArea">
                        <div class="siter_info">
                          <label label>김조셉 시터님</label>
                        </div>
                        <div class="siter_info">
                          <h7>서울시 구로구 신도림동</h7>
                        </div>
                        <div class="siter_info">
                          <h3>더 사랑하고 아끼고 <br> 책임감 있게~</h3>
                        </div>
                      </div>
                    </div>
                    <div class="content1">
                      <div class="siter_img">
                        <img src="/resources/upFiles/member_profiles/1.png">
                        <i class="fas fa-heart" style="color: #e70000;"></i>
                      </div>
                      <div class="siter_infoArea">
                        <div class="siter_info">
                          <label label>김조셉 시터님</label>
                        </div>
                        <div class="siter_info">
                          <h7>서울시 구로구 신도림동</h7>
                        </div>
                        <div class="siter_info">
                          <h3>더 사랑하고 아끼고 <br> 책임감 있게~</h3>
                        </div>
                      </div>
                    </div>
                    -->
                    
                  </div>
                </div>
                <!-- 페이지네이션-->
								<div id="pagination2">
									<nav aria-label="Page navigation example">
										<c:if test="${ pi.listCount != 0 }">
										<ul id="pagiUl" class="pagination paginationUlTag">

											<c:choose>
												<c:when test="${ pi.currentPage eq 1 }">
													<li class="arrowTag disabled"><a href="">&lsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a href="petsiterLike.me?cPage=${ pi.currentPage - 1 }">&lsaquo;</a></li>
												</c:otherwise>
											</c:choose>

											<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
												<li class="page-item active"><a class="page-link" href="petsiterLike.me?cPage=${ p }">${ p }</a></li>
											</c:forEach>

											<c:choose>
												<c:when test="${ pi.currentPage eq pi.maxPage }">
													<li class="arrowTag disabled"><a href="javascript:void(0)">&rsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a href="petsiterLike.me?cPage=${pi.currentPage + 1}">&rsaquo;</a></li>
												</c:otherwise>
											</c:choose>
										</ul>
									</c:if>
									</nav>
								</div>
								<!-- 페이지네이션-->
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