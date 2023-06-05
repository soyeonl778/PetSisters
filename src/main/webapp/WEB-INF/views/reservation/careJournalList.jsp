<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/careJournalList.css">
<title>돌봄일지 목록</title>
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
                  <li>
                    <a href="myProfile.me">내 프로필</a>
                  </li>
                  <li>
                    <a href="petProfile.me">반려동물 프로필</a>
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
                  <li class="on">
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
                <div>
                  <form id="journalForm" action="" method="post" enctype="multipart/form-data">

                    <div class="topTitWrap">
                      <div class="titDescs">돌봄일지 목록</div>
                      <div class="selectbox">
                        <select id="ex_select">
                          <option selected>최신순</option>
                          <option>오래된 순</option>
                        </select>
                      </div>
                    </div>

                    <!-- 카드 영역-->
                    <div class="row row-cols-1 row-cols-md-2 g-4">
                      <div class="col">
                        <div class="card" onclick="location.href='#'">
                          <img src="/resources/img/main/그림이사진1.jpg" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">5월 23일 &gt;</h5>
                            <p class="card-text">조승호 펫시터</p>
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card" onclick="location.href='#'">
                          <img src="/resources/img/main/그림이사진2.jpg" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">5월 20일 - 5월 21일 &gt;</h5>
                            <p class="card-text">정재훈 펫시터</p>
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card" onclick="location.href='#'">
                          <img src="/resources/img/main/로이-4052.jpg" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">5월 3일 - 5월 10일 &gt;</h5>
                            <p class="card-text">이소연 펫시터</p>
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card" onclick="location.href='#'">
                          <img src="/resources/img/main/트포-97312.jpg" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">5월 3일 &gt;</h5>
                            <p class="card-text">김다은 펫시터</p>
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card" onclick="location.href='#'">
                          <img src="/resources/img/main/로이-4052.jpg" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">5월 2일 &gt;</h5>
                            <p class="card-text">임보영 펫시터</p>
                          </div>
                        </div>
                      </div>
                      <div class="col">
                        <div class="card" onclick="location.href='#'">
                          <img src="/resources/img/main/트포-97312.jpg" class="card-img-top" alt="...">
                          <div class="card-body">
                            <h5 class="card-title">5월 1일 &gt;</h5>
                            <p class="card-text">이주흔 펫시터</p>
                          </div>
                        </div>
                      </div>
                    </div>
                    <!-- 카드 영역-->
                  </form>
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

                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
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