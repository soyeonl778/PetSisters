<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/reservationListPetsiter.css">
  <!-- dateRangePicker-->
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

  <!-- js -->
  <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
    <!-- 폰트어썸 -->
  <script src="https://kit.fontawesome.com/bbeda4c5cf.js" crossorigin="anonymous"></script>
  
<script src="/resources/js/reservationListPetsiter.js"></script>
<title>내 예약 목록 조회</title>
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
              <img src="/resources/img/사이드바이미지.png" alt="sideBarImg">
              <h2 class="tit_snb">My Page</h2>
              <div class="inner_sub">
                <ul class="list_menu">
                  <li>
                    <a href="#">펫시터 프로필 관리</a>
                  </li>
                  <li class="on">
                    <a href="#">정산 조회</a>
                  </li>
                  <li>
                    <a href="#">내 예약 관리</a>
                  </li>
                  <li>
                    <a href="#">돌봄 일지 관리</a>
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
                  <div class="contentWrap">

                    <div class="titleWrap">
                      <h1 class="titTag">내 예약 목록</h1>
                    </div>

                    <form action="" method="">
                      <div class="payWrapper">
                        <div class="dateSection">
                          조회 기간 선택 : <input id="datepicker1" type="text" name="">
                        </div>
                        <div class="searchTag">
                          <input type="text" name="" placeholder="고객명으로 검색" required>
                          <button id="search_icon" type="button"><i class="fa-solid fa-magnifying-glass" style="color: #0888D0"></i></button>
                        </div>
                      </div>
                    </form>
                    <div class="tableContainer">
                      <table class="table table-hover">
                        <thead>
                          <tr>
                            <th scope="col"></th>
                            <th scope="col">예약번호</th>
                            <th scope="col">예약상태</th>
                            <th scope="col">예약자</th>
                            <th scope="col">체크인/아웃</th>
                            <th scope="col" style="text-align: center;">예약일</th>
                            <th scope="col" style="text-align: center;">금액</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td class="uniqeNo">21584</td>
                            <td class="specialTd">예약완료</td>
                            <td>조승호</td>
                            <td class="spcDate">2023-05-01 2023-05-10</td>
                            <td width="150" class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td class="uniqeNo">23483</td>
                            <td class="specialTd">예약종료</td>
                            <td>정재훈</td>
                            <td class="spcDate" width="120">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td class="uniqeNo">45384</td>
                            <td class="specialTd">예약종료</td>
                            <td>임보영</td>
                            <td class="spcDate">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">4</th>
                            <td class="uniqeNo">43123</td>
                            <td class="specialTd">예약종료</td>
                            <td>이소연</td>
                            <td class="spcDate">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">5</th>
                            <td class="uniqeNo">12384</td>
                            <td class="specialTd">예약완료</td>
                            <td>김다은</td>
                            <td class="spcDate">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">6</th>
                            <td class="uniqeNo">23185</td>
                            <td class="specialTd">예약종료</td>
                            <td>이주흔</td>
                            <td class="spcDate" width="120">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">7</th>
                            <td class="uniqeNo">94354</td>
                            <td class="specialTd">예약종료</td>
                            <td>조승호</td>
                            <td class="spcDate">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">8</th>
                            <td class="uniqeNo">21384</td>
                            <td class="specialTd">예약종료</td>
                            <td>조승호</td>
                            <td class="spcDate">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">9</th>
                            <td class="uniqeNo">34358</td>
                            <td class="specialTd">예약종료</td>
                            <td>조승호</td>
                            <td class="spcDate">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                          <tr>
                            <th scope="row">10</th>
                            <td class="uniqeNo">88433</td>
                            <td class="specialTd">예약종료</td>
                            <td>조승호</td>
                            <td class="spcDate">2023-05-01 2023-05-10</td>
                            <td class="reserDate">2023-04-28</td>
                            <td class="reserMonye">350,000원</td>
                          </tr>
                        </tbody>
                      </table>
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