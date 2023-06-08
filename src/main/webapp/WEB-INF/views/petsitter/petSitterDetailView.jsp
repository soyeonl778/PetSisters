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
                      <div>
                        <div class="petServiceList">
                          <h5>이용 가능 서비스</h5>
                          <div id="petServiceList">

                            <div class="petService" id="집앞픽업" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/집 앞 픽업.png">
                                </div>
                                <div><p>집 앞 픽업<br>비용은 펫시터와 협의</p></div>
                              </div>
                            </div>

                            <div class="petService" id="모발관리" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/모발 관리.png">
                                </div>
                                <div><p>모발 관리<br>눈물 또는 빗질 관리 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="약물복용" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/약물 복용.png">
                                </div>
                                <div><p>약물 복용<br>경구(입) 약물 복용 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="응급처치" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/응급 처치.png">
                                </div>
                                <div><p>응급 처치<br>응급 상황 시 병원 이동 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="목욕가능" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/목욕 가능.png">
                                </div>
                                <div><p>목욕 가능<br>비용은 펫시터와 협의</p></div>
                              </div>
                            </div>

                            <div class="petService" id="매일산책" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/매일 산책.png">
                                </div>
                                <div><p>매일 산책<br>산책 및 실외 배변 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="실내놀이" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/실내 놀이.png">
                                </div>
                                <div><p>실내 놀이<br>터그 놀이, 노즈워크 등</p></div>
                              </div>
                            </div>

                            <div class="petService" id="장기예약" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/장기 예약.png">
                                </div>
                                <div><p>장기 예약<br>14일 이상 돌봄 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="노견케어" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/노견 케어.png">
                                </div>
                                <div><p>노견 케어<br>8년 이상 노견 돌봄 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="퍼피케어" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/퍼피 케어.png">
                                </div>
                                <div><p>퍼피 케어<br>1년 미만 퍼피 돌봄 가능</p></div>
                              </div>
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
                                <p>${ p.userName }님</p>
                                <p>2023년 06월 05일</p>
                              </div>
                              <button class="btn btn-secondary">답글 작성</button>
                            </div>
                            <p>${ p.revContent }</p>
                            <div class="comment">
                              <img src="/resources/img/main/그림이사진1.jpg">
                              <div class="speech-bubble">
                                <div>
                                  <div>
                                    <p>펫시터님 답글</p>
                                  </div>
                                  <div class="commentBtn">
                                    <button type="button" class="btn btn-secondary">수정</button><button type="button" class="btn btn-secondary">삭제</button>
                                  </div>
                                </div>
                                <div>
                                  <textarea>보호자님이 밝고 친절하셨는데 그런 분의 사랑을 가득 받고 자란 뽀꾸도 사랑스럽기 그지 없었어요!! 아이가 똑똑하고 온순하며, 예민한데도 티내지 않는 모습이 정말 인상적이네요~~♡ 함께하는 내내 너무 착하고 예뻐서 뭐라도 하나 더 해주고 싶었던 아이였어요! 곧 돌아오는 따님과 뽀꾸가 함께하는 행복한 날들 보내세요~~</textarea>
                                </div>
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
                        <form action="#" method="get" id="reserveForm">
                          <input type="hidden" name="userNo" value="${ loginUser.userNo }">
                          <input type="hidden" name="pno" value="${ p.petSitterNo }">
                          
                          <div class="card-body">
                            <h5 class="card-title">언제 펫시터가 필요하신가요?</h5>
                            <div class="dateInput">
                              <input type="date" class="form-control" id="startDate" name="startDate" data-placeholder="체크인 날짜" min="2023-01-01">&nbsp;&nbsp;
                              <input type="date" class="form-control" id="endDate" name="endDate" data-placeholder="체크아웃 날짜" min="2023-01-01">
                            </div>
                            <hr>
                            <h5 class="card-title">맡기시는 반려동물</h5>
                            <div class="petCount">
                              <input class="Btn" type="button" onclick='count("minus")' value="-" />&nbsp;&nbsp;<div id="petCount">1</div>&nbsp;마리&nbsp;&nbsp;<input class="Btn" type="button" onclick='count("plus")' value="+" />
                            </div>
                            <hr>
                            <h5 class="petMsg">요청사항</h5>
                            <textarea name="content" placeholder="요청사항을 입력해주세요"></textarea>
                            <hr>
                            <h5>이용요금</h5>
                            <p class="card-text">
                              <div class="day">
                                <div id="payDscpt" name="payDscpt"><div id="day"></div>박 돌봄</div> <div id="petCharge"></div>&nbsp;원
                              </div>
                            </p>
                            <input type="hidden" id="price" value="55000">
                            <div class="d-grid gap-2 mx-auto" id="reserveBtn">
                              <button type="submit" class="btn btn-secondary">예약 요청</button>
                            </div>
                          </div>
                        </form>
                      </div>

                        <script>

                          // 수량을 표시할 element
                          const resultElement = document.getElementById("petCount");

                          // 현재 화면에 표시된 값
                          let num = resultElement.innerText;

                          // 총 가격 변경 시키기
                          // 가격 정보
                          const price = document.querySelector("#price").value;

                          // 계산된 일수
                          var resultDay = document.querySelector("#day").innerText;

                          // 수량
                          const countNum = document.querySelector("#petCount").innerText;

                          // 부가세
                          const vat = document.querySelector("#vat").innerText;

                          // 총 가격
                          const total = document.querySelector('#total').innerText;

                          // 0으로 초기화
                          let result = 0;

                          function count(type) {

                            // 더하기 / 빼기
                            if (type === 'plus') {
                                num = parseInt(num) + 1;
                                result += price * (Number(countNum) + 1);
                                
                            } else if (type === 'minus') {
                              if (num <= 1) {
                                num = parseInt(num) - 0;
                              } else {
                                num = parseInt(num) - 1;
                                result = Number(result) - price;
                              }
                            }

                            // 수량 출력
                            resultElement.innerText = num;
                          }

                          $(document).ready(function() {

                            $('#day').text(0);

                            // startDate와 endDate 입력 요소의 값이 변경될 때마다 날짜 차이를 계산하는 함수를 실행합니다.
                            $('#startDate, #endDate').on('change', function() {

                              // 시작일, 종료일
                              var startDate = Date.parse($('#startDate').val());
                              var endDate = Date.parse($('#endDate').val());

                              if (startDate && endDate) {
                                calculateDateDifference();
                              }

                              function calculateDateDifference() {
  
                                // 날짜 차이를 계산합니다. 결과는 밀리초로 반환되므로 일 단위로 변환합니다.
                                var dateDifference = Math.ceil((endDate - startDate) / (1000 * 60 * 60 * 24));
  
                                // 결과를 #day 요소에 출력합니다.
                                $('#day').text(dateDifference + 1);


                                // #payDscpt 요소의 값을 가져옵니다.
                                var payDscptValue = $('#payDscpt').text();
                                addHiddenInput('payDscpt', payDscptValue);
                                result *= Number(payDscptValue)
                                calculateTotalPrice();
                              }

                              function addHiddenInput(name, value) {
                                var input = $('<input>').attr({
                                  type: 'hidden',
                                  name: name,
                                  value: value
                                });
                                $('#reserveForm').append(input);

                                console.log(input);
                              }

                              function calculateTotalPrice() {
                                // 총 가격 출력
                                document.querySelector('#total').innerText = result;
                              }
                            });
                          });



                        </script>

                      <br>
                      <div class="card">
                        <div class="card-body">
                          <h5 class="card-title">예약 가능 날짜</h5>
                          <div class="container">
                            <input type="date">
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




