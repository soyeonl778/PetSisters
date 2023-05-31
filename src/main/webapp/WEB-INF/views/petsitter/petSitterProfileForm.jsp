<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterForm.css">
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterProfileForm.css">
  <jsp:include page="../common/common.jsp" />

  <!-- input 항목 추가 -->
  <!-- <script src="jquery-1.7.1.min.js"></script> -->

  <!-- 파일 첨부 -->
  <script src="/resources/js/petSitterProfileForm.js"></script>

  <title>펫시터 프로필 수정</title>
</head>

<body>

  <!-- input 항목 추가 -->
  <script type="text/javascript">
    $(document).ready(function () {
      $('.btnAdd').click (function () {
                $('.buttons').append (
                    '<input type="text" name="txt"> <input type="button" class="btnRemove" value="삭제"><br>'
                ); // end append
                $('.btnRemove').on('click', function () {
                    $(this).prev().remove (); // remove the textbox
                    $(this).next ().remove (); // remove the <br>
                    $(this).remove (); // remove the button
                });
            }); // end click
    }); // end ready
  </script>

  <!-- 카카오맵 API -->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f876d0e519ec1bc91c1da0c5e2829c7"></script>

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
                <div class="profileForm-area">
                  <div class="title">
                    <h1>펫시터 프로필 수정</h1>
                  </div>
                  <br>
                  <div class="form-group">
                    <form>
                      <div class="formTitle">
                        <h5>제목</h5>
                        <input type="text" id="title" placeholder="제목을 입력하세요" name="title" maxlength="100" required>
                      </div>
                      <br>
                      <div class="introduction">
                        <h5>내용</h5>
                        <textarea rows="15" placeholder="소개글을 입력하세요" style="resize: none;"></textarea>
                      </div>
                      <br>
                      <div>
                        <h5>돌봄 환경</h5>
                        <div class="careList">
                          <div class="buttons">
                            <input type="text" name="txt" placeholder="예) 아파트"> <input type="button" class="btnAdd" value="추가"><br>        
                          </div>
                        </div>
                      </div>
                      <br>
                      <div id="petService">
                        <h5>이용 가능 서비스</h5><br>
                        <div class="petServiceList">
                          <table>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/집 앞 픽업.png">
                                  </div>
                                  <div><p>집 앞 픽업<br>비용은 펫시터와 협의</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/모발 관리.png">
                                  </div>
                                  <div><p>모발 관리<br>눈물 또는 빗질 관리 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/약물 복용.png">
                                  </div>
                                  <div><p>약물 복용<br>경구(입) 약물 복용 가능</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/응급 처치.png">
                                  </div>
                                  <div><p>응급 처치<br>응급 상황 시 병원 이동 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/목욕 가능.png">
                                  </div>
                                  <div><p>목욕 가능<br>비용은 펫시터와 협의</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/매일 산책.png">
                                  </div>
                                  <div><p>매일 산책<br>산책 및 실외 배변 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/실내 놀이.png">
                                  </div>
                                  <div><p>실내 놀이<br>터그 놀이, 노즈워크 등</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/장기 예약.png">
                                  </div>
                                  <div><p>장기 예약<br>14일 이상 돌봄 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/노견 케어.png">
                                  </div>
                                  <div><p>노견 케어<br>8년 이상 노견 돌봄 가능</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox">
                                    <img src="/resources/img/참고 이미지/퍼피 케어.png">
                                  </div>
                                  <div><p>퍼피 케어<br>1년 미만 퍼피 돌봄 가능</p></div>
                                </div>
                              </td>
                            </tr>
                          </table>
                        </div>
                      </div>
                      <br>
                      <div class="fileSection preview">
                        <h5>사진 첨부</h5>
                        <input type="file" name="" id="btnAtt" multiple="multiple">
                        <!-- 사진 미리보기 영역 -->
                        <div id="att_zone" data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
                      </div>
                      <br>
                      <div class="dateInput">
                        <h5>예약 불가능한 날짜 선택</h5>
                        <input type="date">
                      </div>
                      <br><br>
                      <div>
                        <h5>펫시터 위치 선택</h5>
                        <div id="map"></div>
                      </div>

                      <div align="center" class="formBtn">
                        <button type="submit" class="btn btn-primary">등록하기</button>
                        <button type="button" onclick="history.back()" class="btn btn-secondary">뒤로가기</button>
                      </div>
                    </form>
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

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

    <!-- 카카오맵 API -->
    <script>
    var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
            level: 3 // 지도의 확대 레벨
        };  

    // 지도를 생성합니다    
    var map = new kakao.maps.Map(mapContainer, mapOption);

      // 지도를 클릭한 위치에 표출할 마커입니다
      var marker = new kakao.maps.Marker({ 
          // 지도 중심좌표에 마커를 생성합니다 
          position: map.getCenter() 
      }); 
      // 지도에 마커를 표시합니다
      marker.setMap(map);

      // 지도에 클릭 이벤트를 등록합니다
      // 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
      kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
          
          // 클릭한 위도, 경도 정보를 가져옵니다 
          var latlng = mouseEvent.latLng; 
          
          // 마커 위치를 클릭한 위치로 옮깁니다
          marker.setPosition(latlng);
          
      });

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch('서울특별시 강남구 역삼로 169', function(result, status) {

        // 정상적으로 검색이 완료됐으면 
        if (status === kakao.maps.services.Status.OK) {

            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
            });
            infowindow.open(map, marker);

            // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
            map.setCenter(coords);

        }
    });


    </script>

</body>
</html>