<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/common/form.css">
<link rel="stylesheet" href="/resources/css/reservation/reservationList.css">
<title>예약조회 목록</title>
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
                  <li class="on">
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
                <div id="bodyContentHead">
                  <h2 class="firstTit">예약 조회</h2>
                </div>
                <div class="mainBodyWrapper">
                  <div class="cardDate">2023-05-21 ~ 2023-05-23</div>
                  <div class="cardSection">

                      <div class="cardContainer" onclick="location.href='#'">
                        <div class="cardImage">
                          <img src="/resources/img/main/코송-040.jpg" alt="coshong" class="cardMainImg">
                        </div>
                        <div class="cardTextContainer">
                          <div class="cardTitDesc">
                            <h4>서울 서대문구 홍은동</h4>
                            <p class="proPet">* 프로펫시터</p>
                          </div>
                          <h3 class="cardTitContent">정성스럽게 돌봐드립니다.</h3>
                          <div class="borderLine"></div>
                          <p class="cardHash">빌라 * 산책로 있어요 * 3인가구 * 반려동물 없어요</p>
                          <div class="linkRe">
                            <a href="" class="reviewLink">후기 214개</a>
                          </div>
                        </div>
                      </div>


                    <div class="cardBtn">
                      <a class="cardDetail" href="">상세 조회</a>
                      <a class="cardReview" href="review">후기 작성</a>
                      <a class="cardDelete" href="">삭제</a>
                    </div>
                  </div>
                </div>

                <div class="mainBodyWrapper">
                  <div class="cardDate">2023-05-21 ~ 2023-05-23</div>
                  <div class="cardSection">
                    <div class="cardContainer">
                      <div class="cardImage">
                        <img src="/resources/img/main/코송-040.jpg" alt="coshong" class="cardMainImg">
                      </div>
                      <div class="cardTextContainer">
                        <div class="cardTitDesc">
                          <h4>서울 서대문구 홍은동</h4>
                          <p class="proPet">* 프로펫시터</p>
                        </div>
                        <h3 class="cardTitContent">정성스럽게 돌봐드립니다.</h3>
                        <div class="borderLine"></div>
                        <p class="cardHash">빌라 * 산책로 있어요 * 3인가구 * 반려동물 없어요</p>
                        <div class="linkRe">
                          <a href="" class="reviewLink">후기 214개</a>
                        </div>
                      </div>
                    </div>
                    <div class="cardBtn">
                      <a class="cardDetail" href="">상세 조회</a>
                      <a class="cardReview" href="">후기 작성</a>
                      <a class="cardDelete" href="">삭제</a>
                    </div>
                  </div>
                </div>
                <div class="mainBodyWrapper">
                  <div class="cardDate">2023-05-21 ~ 2023-05-23</div>
                  <div class="cardSection">
                    <div class="cardContainer">
                      <div class="cardImage">
                        <img src="/resources/img/main/코송-040.jpg" alt="coshong" class="cardMainImg">
                      </div>
                      <div class="cardTextContainer">
                        <div class="cardTitDesc">
                          <h4>서울 서대문구 홍은동</h4>
                          <p class="proPet">* 프로펫시터</p>
                        </div>
                        <h3 class="cardTitContent">정성스럽게 돌봐드립니다.</h3>
                        <div class="borderLine"></div>
                        <p class="cardHash">빌라 * 산책로 있어요 * 3인가구 * 반려동물 없어요</p>
                        <div class="linkRe">
                          <a href="" class="reviewLink">후기 214개</a>
                        </div>
                      </div>
                    </div>
                    <div class="cardBtn">
                      <a class="cardDetail" href="">상세 조회</a>
                      <a class="cardReview" href="">후기 작성</a>
                      <a class="cardDelete" href="">삭제</a>
                    </div>
                  </div>
                </div>
                <div class="mainBodyWrapper">
                  <div class="cardDate">2023-05-21 ~ 2023-05-23</div>
                  <div class="cardSection">
                    <div class="cardContainer">
                      <div class="cardImage">
                        <img src="/resources/img/main/코송-040.jpg" alt="coshong" class="cardMainImg">
                      </div>
                      <div class="cardTextContainer">
                        <div class="cardTitDesc">
                          <h4>서울 서대문구 홍은동</h4>
                          <p class="proPet">* 프로펫시터</p>
                        </div>
                        <h3 class="cardTitContent">정성스럽게 돌봐드립니다.</h3>
                        <div class="borderLine"></div>
                        <p class="cardHash">빌라 * 산책로 있어요 * 3인가구 * 반려동물 없어요</p>
                        <div class="linkRe">
                          <a href="" class="reviewLink">후기 214개</a>
                        </div>
                      </div>
                    </div>
                    <div class="cardBtn">
                      <a class="cardDetail" href="">상세 조회</a>
                      <a class="cardReview" href="">후기 작성</a>
                      <a class="cardDelete" href="">삭제</a>
                    </div>
                  </div>
                </div>
                <div class="mainBodyWrapper">
                  <div class="cardDate">2023-05-21 ~ 2023-05-23</div>
                  <div class="cardSection">
                    <div class="cardContainer">
                      <div class="cardImage">
                        <img src="/resources/img/main/코송-040.jpg" alt="coshong" class="cardMainImg">
                      </div>
                      <div class="cardTextContainer">
                        <div class="cardTitDesc">
                          <h4>서울 서대문구 홍은동</h4>
                          <p class="proPet">* 프로펫시터</p>
                        </div>
                        <h3 class="cardTitContent">정성스럽게 돌봐드립니다.</h3>
                        <div class="borderLine"></div>
                        <p class="cardHash">빌라 * 산책로 있어요 * 3인가구 * 반려동물 없어요</p>
                        <div class="linkRe">
                          <a href="" class="reviewLink">후기 214개</a>
                        </div>
                      </div>
                    </div>
                    <div class="cardBtn">
                      <a class="cardDetail" href="">상세 조회</a>
                      <a class="cardReview" href="">후기 작성</a>
                      <a class="cardDelete" href="">삭제</a>
                    </div>
                  </div>
                </div>
                <div class="mainBodyWrapper">
                  <div class="cardDate">2023-05-21 ~ 2023-05-23</div>
                  <div class="cardSection">
                    <div class="cardContainer">
                      <div class="cardImage">
                        <img src="/resources/img/main/코송-040.jpg" alt="coshong" class="cardMainImg">
                      </div>
                      <div class="cardTextContainer">
                        <div class="cardTitDesc">
                          <h4>서울 서대문구 홍은동</h4>
                          <p class="proPet">* 프로펫시터</p>
                        </div>
                        <h3 class="cardTitContent">정성스럽게 돌봐드립니다.</h3>
                        <div class="borderLine"></div>
                        <p class="cardHash">빌라 * 산책로 있어요 * 3인가구 * 반려동물 없어요</p>
                        <div class="linkRe">
                          <a href="" class="reviewLink">후기 214개</a>
                        </div>
                      </div>
                    </div>
                    <div class="cardBtn">
                      <a class="cardDetail" href="">상세 조회</a>
                      <a class="cardReview" href="">후기 작성</a>
                      <a class="cardDelete" href="">삭제</a>
                    </div>
                  </div>
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