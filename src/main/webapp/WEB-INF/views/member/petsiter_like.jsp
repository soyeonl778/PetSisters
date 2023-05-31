<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/petsiter_like.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
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
              <img src="/resources/img/사이드바이미지.png" alt="sideBarImg">
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
                <!--<div style="height: 1000px; background-color: beige;"></div> -->
                <div id="titleWrapper">
                  <h3 class="title_11">펫시터 찜♥</h3>
                </div>
                <div id="main_content">
                  <hr>
                  <div id="contentWrapper">
                    <div class="content1">
                      <div class="siter_img">
                        <img src="/resources/img/시터1.png">
                        <i class="fas fa-heart" style="color: #e70000;"></i>
                      </div>
                      <div class="siter_info">
                        <label>김조셉 시터님</label> <br>
                        <h7>서울시 구로구 신도림동</h7> <br>
                        <h3>더 사랑하고 아끼고 <br> 책임감 있게~</h3>
                      </div>
                    </div>
                    <div class="content1">
                      <div class="siter_img">
                        <img src="/resources/img/시터2.png">
                        <i class="fas fa-heart" style="color: rgb(231, 0, 0);"></i>
                      </div>
                      <div class="siter_info">
                        <label>김명화 시터님</label> <br>
                        <h7>서울시 관악구 신림동</h7> <br>
                        <h3>멍멍이 엄마 마음으로 <br> 케어해드립니다.</h3>
                      </div>
                    </div>
                    <div class="content1">
                      <div class="siter_img">
                        <img src="/resources/img/시터3.png">
                        <i class="fas fa-heart" style="color: #e70000;"></i>
                      </div>
                      <div class="siter_info">
                        <label>김춘식 시터님</label> <br>
                        <h7>서울시 용산구 이태원동</h7> <br>
                        <h3>세심한 부분까지 <br> 아이들을 돌봐드리겠습니다^^</h3>
                      </div>
                    </div>
                  </div>
                </div>
                <!-- 페이징처리부분 -->
                <div id="pagingArea">
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