<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/petList.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <!-- 폰트어썸 아이콘 적용 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <jsp:include page="../common/common.jsp" />

  <title>마이페이지_펫시터찜관리</title>
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
                  <li class="on">
                    <a href="myProfile.me">내 프로필</a>
                  </li>
                  <li>
                    <a href="petList.me?userNo=${ loginUser.userNo }">반려동물 프로필</a>
                  </li>
                  <li>
                    <a href="petsiterLike.me">펫시터 찜</a>
                  </li>
                  <li>
                    <a href="myBoard.me">내 게시글 및 댓글</a>
                  </li>
                  <li>
                    <a href="reservationList">예약 조회</a>
                  </li>
                  <li>
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
                	<div>
                		<h3 class="title_11">반려동물 리스트</h3>
                	</div>
                  	<div>
                  		<button type="button" class="btn_enroll" onclick="location.href='petEnrollForm.me';">펫 등록하기</button>
                  	</div>
                </div>
                <div id="main_content">
                  <hr>
                  <div id="contentWrapper">
					<c:forEach var="d" items="${list}">
                      <div class="content" onclick="location.href='petProfile.me?dno=${ d.dogNo }'">
                      	<div class="pet_no">
                      	  <input type="hidden" name="pet_no" value="${d.dogNo}" />
                      	</div>
                        <div class="pet_img">
                          <img id="petImg" class="p_img" src="${ d.filePath }">
                        </div>
                        <div class="pet_infoArea">
                          
                          <div>
                            <div class="pet_name">${ d.dogName }</div>
                            <div class="pet_info">${ d.dogWeight }kg / ${ d.dogGender } / ${ d.dogBirthday }</div>
                          </div>
                          
                          <div class="chevron-right">
                            <i class="fas fa-chevron-right fa-lg" style="color: #8c8c8c;"></i>
                          </div>
                        </div>
                      </div>
                    </c:forEach>
                  </div>
                </div>
                
                <!-- 페이징처리부분 -->
                <div id="pagingArea">
                  <nav aria-label="Page navigation example">
                    <ul id="pagiUl" class="pagination paginationUlTag">
                    	<c:choose>
                		<c:when test="${ pi.currentPage eq 1 }">
		                    <li class="arrowTag disabled"><a href="#">&lsaquo;</a></li>
                		</c:when>
                		<c:otherwise>
         				    <li class="arrowTag"><a href="petList.me?cPage=${ pi.currentPage - 1 }">&lsaquo;</a></li>
                		</c:otherwise>
                	</c:choose>
                    
                    <c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
                    	<li class="page-item"><a class="page-link" href="petList.me?cPage=${ p }">${ p }</a></li>
                    </c:forEach>
                    
                    <c:choose>
                    	<c:when test="${ pi.currentPage eq pi.maxPage }">
		                    <li class="arrowTag disabled"><a href="#">&rsaquo;</a></li>
                    	</c:when>
                    	<c:otherwise>
                    		<li class="arrowTag"><a href="petList.me?cPage=${ pi.currentPage + 1 }">&rsaquo;</a></li>
                    	</c:otherwise>
                    </c:choose>
                    </ul>
                  </nav>
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