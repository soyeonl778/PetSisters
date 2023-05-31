<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/settlementInquiry.css">
  <!-- dateRangePicker-->
  <!-- css -->
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
  
  <!-- js -->
  <script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
  
  <script src="/resources/js/settlementInquiry.js"></script>
<title>정산 조회</title>
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

                  <div class="payContainer">

                    <h1 class="payTitTag">정산 조회</h1>

                    <div class="payWrapper">
                      <div class="dateSection">
                        기간 조회 <input id="datepicker1" type="text" name="">
                      </div>
                      <button class="dateBtn">조회</button>
                    </div>


                    <div class="monthWrapper">
                      <h2 class="monthTitle">5월</h2>
                      <div class="monthInfo">
                        <div class="monthDate monthThing">5월 12일 ~ 5월 19일</div>
                        <div class="monthPay monthThing">444,000원</div>
                      </div>
                      <div class="monthInfo">
                        <div class="monthDate monthThing">5월 12일 ~ 5월 19일</div>
                        <div class="monthPay monthThing">444,000원</div>
                      </div>

                      <h2 class="monthTitle">4월</h2>
                      <div class="monthInfo">
                        <div class="monthDate monthThing">4월 12일 ~ 4월 19일</div>
                        <div class="monthPay monthThing">444,000원</div>
                      </div>
                      <div class="monthInfo">
                        <div class="monthDate monthThing">5월 12일 ~ 5월 19일</div>
                        <div class="monthPay monthThing">444,000원</div>
                      </div>

                      <h2 class="monthTitle">3월</h2>
                      <div class="monthInfo">
                        <div class="monthDate monthThing">3월 12일 ~ 3월 19일</div>
                        <div class="monthPay monthThing">444,000원</div>
                      </div>
                      <div class="monthInfo">
                        <div class="monthDate monthThing">5월 12일 ~ 5월 19일</div>
                        <div class="monthPay monthThing">444,000원</div>
                      </div>

                    </div>
                    <div class="allMoney">
                      <div class="moneyGood">
                        <h3>이번주 정산금: </h3>
                        <div class="goodMoney">385.000원</div>
                      </div>
                      <div class="moneyGood">
                        <h3>총 누적 정산금: </h3>
                        <div class="goodMoney">876,595,000원</div>
                      </div>
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
  </div>

<jsp:include page="../common/footer.jsp" />
</body>
</html>