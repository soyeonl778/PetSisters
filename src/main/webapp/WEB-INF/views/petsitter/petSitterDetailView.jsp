<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterForm.css">
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterDetailView.css">
  <jsp:include page="../common/common.jsp" />

  <!-- 폰트어썸 아이콘 적용 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  
  <!-- 캘린더 -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <!-- 슬라이더 -->
  <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script> 
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />

  <script>
    $( document ).ready( function() {
      
      $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'
      });

      $('.slider-nav').slick({
        slidesToShow: 3,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        centerMode: true,
        focusOnSelect: true
      });

      var psService = "<c:out value='${p.petSitterService}'/>"; // 값을 JavaScript 변수에 할당
		  var psServiceArr = psService.split(","); // 쉼표(,)로 분할하여 배열로 변환

      for(var i = 0; i < psServiceArr.length; i++) {

        var psServiceId = $("div[id='"+ psServiceArr[i] +"']").attr('id');

        const div = document.getElementById(psServiceId);
        div.style.display = 'grid';
	    }
      
    });
  </script>

    <!-- 카카오맵 API -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f876d0e519ec1bc91c1da0c5e2829c7"></script>
  
  <title>펫시터 상세페이지</title>
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
                  <div id="content-area">
                    <div id="content1">
                      <div class="viewslider_wrap">
                        <section class="slide-box">
                        <ul class="slider-for">
                          <li><img src="/resources/img/petsitter/20220402_115732.jpg"></li>
                          <li><img src="/resources/img/petsitter/20220917_142141.jpg"></li>
                          <li><img src="/resources/img/petsitter/20221029_233632.jpg"></li>
                          <li><img src="/resources/img/petsitter/20220930_121227.jpg"></li>
                          <li><img src="/resources/img/petsitter/20221014_132826.jpg"></li>
                          <li><img src="/resources/img/petsitter/자격증.jpg"></li>
                          <!--
                          <li><img src="/resources/img/펫시터 상세페이지 img/20220917_142141.jpg"></li>
                          <li><img src="/resources/img/펫시터 상세페이지 img/20221029_233632.jpg"></li>
                          <li><img src="/resources/img/펫시터 상세페이지 img/20220930_121227.jpg"></li>
                          <li><img src="/resources/img/펫시터 상세페이지 img/20221014_132826.jpg"></li>
                          <li><img src="/resources/img/펫시터 상세페이지 img/[13][꾸미기]6.jpg"></li>
                          -->
                        </ul>
                        <ul class="slider-nav">
                          <li><img src="/resources/img/petsitter/20220402_115732.jpg"></li>
                          <li><img src="/resources/img/petsitter/20220917_142141.jpg"></li>
                          <li><img src="/resources/img/petsitter/20221029_233632.jpg"></li>
                          <li><img src="/resources/img/petsitter/20220930_121227.jpg"></li>
                          <li><img src="/resources/img/petsitter/20221014_132826.jpg"></li>
                          <li><img src="/resources/img/petsitter/자격증.jpg"></li>
                        </ul>
                        </section>
                        <!-- <div class="slider-nav">
                          <a data-slide-index="0" href=""><img src="/resources/img/펫시터 상세페이지 img/20220402_115732.jpg"></a>
                          <a data-slide-index="1" href=""><img src="/resources/img/펫시터 상세페이지 img/20220917_142141.jpg"></a>
                          <a data-slide-index="2" href=""><img src="/resources/img/펫시터 상세페이지 img/20221029_233632.jpg"></a>
                          <a data-slide-index="3" href=""><img src="/resources/img/펫시터 상세페이지 img/20220930_121227.jpg"></a>
                          <a data-slide-index="4" href=""><img src="/resources/img/펫시터 상세페이지 img/20221014_132826.jpg"></a>
                          <a data-slide-index="5" href=""><img src="/resources/img/펫시터 상세페이지 img/[13][꾸미기]6.jpg"></a>
                        </div> -->
                      </div>
                      <div class="profileBox">
                        <div class="profileImg">
                          <img src="/resources/img/main/그림이사진1.jpg">
                        </div>
                        <div class="profile">
                          <h5>${ p.petSitterTitle }</h5>
                          <h5>${ p.userName }</h5><span class="tnm">${ p.address }</span>
                        </div>
                      </div>
                      <div class="hashtag">
                        <ul>
                          <c:choose>
                            <c:when test="${ not empty p.careList }">
                              <c:forEach var="item" items="${ p.careList }">
                                <li><c:out value="${ item }"/></li>
                              </c:forEach>
                            </c:when>
                          </c:choose> 
                        </ul>
                      </div>
                      <br>
                      <div class="introduction">
                        <h3>${ p.userName } 펫시터님을 소개합니다</h3>
                        <p>
                          ${ p.petSitterContent }
                        </p>
                        <br>
                      </div>
                      <div id="petCard">
                        <div class="card">
                          <div class="card-body">
                            <h5 class="card-title">함께 사는 반려동물</h5>
                            <img src="/resources/img/main/로이-4052.jpg">
                            <p class="card-text">로이 소형/남/5살</p>
                          </div>
                        </div>
                      </div>
                      <br>
                      <div class="petService">
                        <div class="petServiceList">
                          <h5>이용 가능 서비스</h5>
                          <div id="petServiceList">

                            <div class="petService" id="집앞픽업" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/집 앞 픽업.png">
                              </div>
                              <div><p>집 앞 픽업<br>비용은 펫시터와 협의</p></div>
                            </div>

                            <div class="petService" id="모발관리" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/모발 관리.png">
                              </div>
                              <div><p>모발 관리<br>눈물 또는 빗질 관리 가능</p></div>
                            </div>

                            <div class="petService" id="약물복용" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/약물 복용.png">
                              </div>
                              <div><p>약물 복용<br>경구(입) 약물 복용 가능</p></div>
                            </div>

                            <div class="petService" id="응급처치" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/응급 처치.png">
                              </div>
                              <div><p>응급 처치<br>응급 상황 시 병원 이동 가능</p></div>
                            </div>

                            <div class="petService" id="목욕가능" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/목욕 가능.png">
                              </div>
                              <div><p>목욕 가능<br>비용은 펫시터와 협의</p></div>
                            </div>

                            <div class="petService" id="매일산책" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/매일 산책.png">
                              </div>
                              <div><p>매일 산책<br>산책 및 실외 배변 가능</p></div>
                            </div>

                            <div class="petService" id="실내놀이" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/실내 놀이.png">
                              </div>
                              <div><p>실내 놀이<br>터그 놀이, 노즈워크 등</p></div>
                            </div>

                            <div class="petService" id="장기예약" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/장기 예약.png">
                              </div>
                              <div><p>장기 예약<br>14일 이상 돌봄 가능</p></div>
                            </div>

                            <div class="petService" id="노견케어" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/노견 케어.png">
                              </div>
                              <div><p>노견 케어<br>8년 이상 노견 돌봄 가능</p></div>
                            </div>

                            <div class="petService" id="퍼피케어" style="display: none;">
                              <div>
                                <img src="/resources/img/petsitter/퍼피 케어.png">
                              </div>
                              <div><p>퍼피 케어<br>1년 미만 퍼피 돌봄 가능</p></div>
                            </div>

                          </div>
                        </div>
                      </div>
                      <br>
                      <div class="reviewList">
                        <div>
                          <h5>펫시터 후기 10개</h5>
                        </div>
                        <hr>
                        <div class="review">
                          <form>
                            <div class="userReview">
                              <div>
                                <img src="/resources/img/main/그림이사진1.jpg">
                              </div>
                              <div>
                                <p>김★은님</p>
                                <p>2023년 06월 05일</p>
                              </div>
                              <button class="btn btn-secondary">답글 작성</button>
                            </div>
                            <p>모든 일에는 전문가가 있는 법! 능숙하게 아이를 다루시고 세심하게 관찰해 알려주시는 모습을 보면서 여행 내내 맘이 편안했습니다 알려주신 팁도 고려해서 잘 키울게요 감사합니다!!</p>
                            <div class="comment">
                              <img src="/resources/img/main/그림이사진1.jpg">
                              <div class="speech-bubble">
                                <div>
                                  <p>펫시터님 답글
                                    <button type="button" class="btn btn-secondary">삭제</button><button type="button" class="btn btn-secondary">수정</button>
                                  </p>
                                </div>
                                <p>보호자님이 밝고 친절하셨는데 그런 분의 사랑을 가득 받고 자란 뽀꾸도 사랑스럽기 그지 없었어요!! 아이가 똑똑하고 온순하며, 예민한데도 티내지 않는 모습이 정말 인상적이네요~~♡ 함께하는 내내 너무 착하고 예뻐서 뭐라도 하나 더 해주고 싶었던 아이였어요! 곧 돌아오는 따님과 뽀꾸가 함께하는 행복한 날들 보내세요~~</p>
                              </div>
                            </div>
                          </form>
                        </div>
                      </div>
                    </div>
                    <div id="content2">
                      <div class="updateFormBtn">
                        <a href="updateForm.pe?pno=${ p.petSitterNo }" class="btn btn-secondary">프로필 수정</a>
                      </div>
                      <div class="card">
                        <div class="card-body">
                          <h5 class="card-title">언제 펫시터가 필요하신가요?</h5>
                          <div class="dateInput">
                            <input type="date" class="form-control" id="startDate" name="startDate" data-placeholder="체크인 날짜" min="2023-01-01" max="2023-12-31">
                            <input type="date" class="form-control" id="endDate" name="endDate" data-placeholder="체크아웃 날짜" min="2023-01-01" max="2023-12-31">
                          </div>
                          <hr>
                          <h5 class="card-title">맡기시는 반려동물</h5>
                          <button type="button" class="btn">-</button>0<button type="button" class="btn">+</button>
                          <hr>
                          <h5 class="card-title">요청사항</h5>
                          <textarea placeholder="요청사항을 입력해주세요"></textarea>
                          <hr>
                          <h5 class="card-title">이용요금</h5>
                          <p class="card-text">
                            1박 55,000원 <br>
                            초과금액 0원
                          </p>
                          <p class="card-text">총 합계 55,000원</p>
                          <div class="d-grid gap-2 mx-auto" id="reservationBtn">
                            <a href="#" class="btn btn-secondary">예약 요청</a>
                          </div>
                        </div>
                      </div>
                      <br>
                      <div class="card">
                        <div class="card-body">
                          <h5 class="card-title">예약 가능 날짜</h5>
                          <div class="container">
                            <input type="date" id="datepicker">
                          </div>
                        </div>
                      </div>
                      <br>
                      <div class="card">
                        <div class="card-body">
                          <h5 class="card-title">펫시터님 위치</h5>
                          <p class="card-text">강남구 도곡동</p>
                        </div>
                        <div id="map"></div>
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

	<jsp:include page="../common/footer.jsp" />

    <!-- 캘린더
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <script>

      $(document).ready(function () {
        $("#tete1").flatpickr({
          inline: true
        });
        });

    </script> -->

    <script>
      // 카카오맵 API
      $(document).ready(function() {
        var container = document.getElementById('map'); // 지도를 표시할 div
        var options = {
          center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
          level: 6 // 지도의 확대 레벨
        };
    
        var map = new kakao.maps.Map(container, options); // 지도 생성
  
        // 지도에 표시할 원을 생성합니다
        var circle = new kakao.maps.Circle({
            center : new kakao.maps.LatLng(33.450701, 126.570667),  // 원의 중심좌표 입니다 
            radius: 500, // 미터 단위의 원의 반지름입니다 
            strokeWeight: 5, // 선의 두께입니다 
            strokeColor: '#75B8FA', // 선의 색깔입니다
            strokeOpacity: 1, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
            strokeStyle: 'dashed', // 선의 스타일 입니다
            fillColor: '#CFE7FF', // 채우기 색깔입니다
            fillOpacity: 0.7  // 채우기 불투명도 입니다
        }); 
  
        // 지도에 원을 표시합니다 
        circle.setMap(map);


        $(document).ready(function() {
          $('.slider-nav .slick-list .slick-track li').css('margin', '0 3px');
        });
      })
    </script>

</body>
</html>