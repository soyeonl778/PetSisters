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
<link rel="stylesheet" href="/resources/css/reservation/reservationDetail.css">
<script src="/resources/js/kakaoMap.js"></script>
<title>예약 상세페이지</title>
</head>
<body>
<jsp:include page="../common/header.jsp" />	

  <div id="Container-Wrapper">
    <!-- 페이지 영역 시작 -->
    <div id="container">
      <div id="main">
        <div id="content">
          <div class="page_aticle aticle_type2 specialClass">

            <div class="titSection">

              <h2>
                예약 상세 내역
              </h2>

              <div class="titProfile">
                <img class="titProfileImg" src="/resources/img/트포-96974.jpg" alt="profile">
              </div>

              <div class="titPetsiter">
                <h3>조승호 시터님</h3>
              </div>

              <button>채팅 문의</button>
            </div>

            <h2 class="payList">결제정보</h2>
            <div class="middleSection">
              <div class="leftSection">
                <div class="leftTit">
                  <div class="lineMan blueTag">돌봄 시작일</div>
                  <div class="blueTag">돌봄 종료일</div>
                  <div class="blueTag">예약일</div>
                  <div>예약 번호</div>
                  <div>아이 정보</div>
                  <div>원하는 활동</div>
                  <div>특이사항</div>
                </div>

                <div class="rightTit">
                  <div class="lineMan">2023-05-19</div>
                  <div>2023-05-23</div>
                  <div>2023-05-15</div>
                  <div>6118</div>
                  <div>
                    <img class="petImg" src="/resources/img/로이-4052.jpg" alt="roy">
                    <span>여아 3세 쪼꼬미(셰퍼드)</span>
                  </div>
                  <div>실내놀이, 터그놀이</div>
                  <div class="textArea">하루 두번 쉬 소독, 외로움 만히 탐, 배고픔을 못견딤, 운동은 하루 3번 이상, 자주 짖음, 사람 뭄</div>
                </div>

                <div class="mapClass">
                  <div class="carePlace">돌봄 장소</div>
                  <div>경기도 광명시 하안동 오리로801

                  </div>
                </div>
                <div id="mapContain">
                  <p style="margin-top:-12px">
                    <em class="link">
                      <a href="javascript:void(0);" style="text-decoration: none; color: white; cursor: default;">
                        혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
                      </a>
                    </em>
                  </p>
                  <div id="map" style="width:100%;height:350px;"></div>
                </div>

              </div>

              <div class="rightWrapper">
                <div class="rigthSection">
                  <div class="leftTitRight">
                    <div class="lineMan">결제 금액</div>
                    <div>결제방법</div>
                    <div>결제 일시</div>
                    <div>상태</div>
                  </div>

                  <div class="rightTitright">
                    <div class="lineMan">
                      <span>300,000</span>
                      <span>원</span>
                    </div>
                    <div>카카오페이</div>
                    <div>2023-05-15</div>
                    <div>결제완료</div>
                  </div>
                </div>
              </div>
            </div>

            
            <div class="danger">
              <div class="danTit">잠깐! 주의해주세요!</div>
              <ul class="textZone">
                <li>* 정재훈을 조심하세요</li>
                <li>* 세경씨 그렇게 안봤는데</li>
                <li>* 무서운 사람이였네</li>
                <li>* 호박고구마!!</li>
              </ul>
            </div>


          </div>
        </div>
      </div>
    </div>

  </div>

<jsp:include page="../common/footer.jsp" />
</body>
</html>