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
      
      } );
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
                          <h5>상주견 없어서 견주님 아이들만 집중돌봄 합니다. 펫시팅 경력 많습니다.</h5>
                          <h5>이현진</h5><span class="tnm">부산 남구 문현동</span>
                        </div>
                      </div>
                      <div class="hashtag">
                        <ul>
                          <li>2인 가구</li>
                          <li>아파트</li>
                          <li>반려동물 있음</li>
                        </ul>
                      </div>
                      <br>
                      <div class="introduction">
                        <h3>이현진 펫시터님을 소개합니다</h3>
                        <p>
                          반갑습니다~~♡ 저는 대학생 큰딸과 네살 반 된 늦둥이 말티츄 아들 하나를 키우고 있는 50대 주부입니다. 우리 이쁜 막둥이는 입양기관이나 유기견센터에서 데려온 아이가 아니라 구순 넘은 친척 어르신이 신생아를 분양받으셨다가 건강 악화로 못 키우시게 돼서 생후 4개월쯤 선물처럼 운명처럼 저에게 찾아온 이이입니다. 솜뭉치만 한 녀석이 집안을 온통 동동 뛰어다녀 동구라 이름 지었고요^^ 키우던 할머니 네서 낯선 곳으로 와 보호자가 바뀌어서 그런지 거실 한가운데 등 돌아 앉아만 있고, 산책하러 나가도 꽁무니를 빼거나 뒤로만 숨는 버릇이 있어 천천히 시간을 두고 꾸준히 조심스레 노력한 결과, 지금은 호기심 많고 활달하며 산책을 제일 좋아하는 꼬리 잘 치는 동네 인기 견이 되었습니다. 짖음과 입질이 전혀 없고, 저녁에 잠들면 아침에 인기척이 있을 때까지 먼저 일어나는 법 없이 꿀잠도 잘 자며, 여행을 많이 다녀 차도 잘 타고 낯선 곳에서의 적응도 거뜬하지요. 꾸준히 4kg의 몸무게를 유지하고, 실내 배변을 전혀 하지 않아 보호자인 저를 근면 성실한 사람으로 만들어준 용한 재주가 있답니다. 동구의 양육 초기에는 한두 번 동물병원에 미용을 보내보기도 했고, 애견 호텔에 맡긴 적도 있었는데 다녀와서는 며칠씩 가족들을 데면데면해 하고 예민해져 도저히 생명에 대한 책임감으로 다시는 그런 시설을 이용하기 싫어 할 수 없이 그때부터 자가 미용과 기본관리를 매달 제가 직접 하게 되었습니다. 매주 1회 목욕과 매월 1회(한겨울 3개월 제외) 전신미용 및 심장사상충이나 구충제 투약과 항문낭 짜기까지 직접 한 지 4년째지요. 한식 조리사 자격증이 있는 제가 직접 사료를 제외한 모든 간식도 만들어 먹이고 있습니다. 저는 아이와 놀이하거나 산책 시 밝은 목소리로 격려와 응원을 끊임없이 해주는 경향이 있습니다. 아이들은 그것을 참 좋아하거든요. 누구보다 뛰어난 관찰력으로 댁의 소중한 가족이 맡겨졌을 때 빠른 상황판단과 대처로 세심한 보살핌을 약속드립니다.😉 이러한 실무적인 경험이 제게 펫시터 활동에 용기를 주었고 남의 손에 맡긴다는 게 애견과 보호자에게 얼마나 중요한 일인지를 잘 알기에 나와 같은 애견 가정을 돕고 때로는 저도 도움받는 길을 찾고자 도전하게 되었습니다. 저희 집은 지하철역 바로 앞 초역세권으로 재건축 한 신축아파트이며 집 앞 상가에 우리 동구가 어릴 때부터 다니고 있는 24시간 동물병원이 있으며, 도보 5분 거리에 매봉산 둘레길이 있고, 10분 거리에 양재천 산책로가 있어 쾌적한 산책에는 아쉬움이 전혀 없습니다. 꼭 소중한 인연으로 여러분을 만나고 싶습니다. 긴 글 읽어주셔서 감사합니다~🥰
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
                          <table>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/집 앞 픽업.png">
                                  </div>
                                  <div><p>집 앞 픽업<br>비용은 펫시터와 협의</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/모발 관리.png">
                                  </div>
                                  <div><p>모발 관리<br>눈물 또는 빗질 관리 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/약물 복용.png">
                                  </div>
                                  <div><p>약물 복용<br>경구(입) 약물 복용 가능</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/응급 처치.png">
                                  </div>
                                  <div><p>응급 처치<br>응급 상황 시 병원 이동 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/목욕 가능.png">
                                  </div>
                                  <div><p>목욕 가능<br>비용은 펫시터와 협의</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/매일 산책.png">
                                  </div>
                                  <div><p>매일 산책<br>산책 및 실외 배변 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/실내 놀이.png">
                                  </div>
                                  <div><p>실내 놀이<br>터그 놀이, 노즈워크 등</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/장기 예약.png">
                                  </div>
                                  <div><p>장기 예약<br>14일 이상 돌봄 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/노견 케어.png">
                                  </div>
                                  <div><p>노견 케어<br>8년 이상 노견 돌봄 가능</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <img src="/resources/img/petsitter/퍼피 케어.png">
                                  </div>
                                  <div><p>퍼피 케어<br>1년 미만 퍼피 돌봄 가능</p></div>
                                </div>
                              </td>
                            </tr>
                          </table>
                        </div>
                      </div>
                      <br>
                      <div class="reviewList">
                        <div>
                          <h5>펫시터 후기 10개</h5>
                        </div>
                        <hr>
                        <div class="review">
                          <div>
                            <p>고객명</p>
                            <p>작성일</p>
                          </div>
                          <p>모든 일에는 전문가가 있는 법! 능숙하게 아이를 다루시고 세심하게 관찰해 알려주시는 모습을 보면서 여행 내내 맘이 편안했습니다 알려주신 팁도 고려해서 잘 키울게요 감사합니다!!</p>
                          <div></div>
                          <div>
                            <img src="/resources/img/main/그림이사진1.jpg">
                            <div class="speech-bubble">
                              <div>
                                <p>펫시터님 답글</p>
                              </div>
                              <p>보호자님이 밝고 친절하셨는데 그런 분의 사랑을 가득 받고 자란 뽀꾸도 사랑스럽기 그지 없었어요!! 아이가 똑똑하고 온순하며, 예민한데도 티내지 않는 모습이 정말 인상적이네요~~♡ 함께하는 내내 너무 착하고 예뻐서 뭐라도 하나 더 해주고 싶었던 아이였어요! 곧 돌아오는 따님과 뽀꾸가 함께하는 행복한 날들 보내세요~~</p>
                            </div>
                          </div>
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