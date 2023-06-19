<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/common/form.css">
<link rel="stylesheet" href="/resources/css/reservation/reservationDetail.css">
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
                <img class="titProfileImg" src="${ rev.userFile }" alt="profile">
              </div>

              <div class="titPetsiter">
                <h3>${ rev.userName } 시터님</h3>
              </div>

              <button onclick="location.href='chatForm.ch'">채팅 문의</button>
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
                  <div>특이사항</div>
                </div>

                <div class="rightTit">
                  <div class="lineMan">${ rev.startDate }</div>
                  <div>${ rev.endDate }</div>
                  <div>${ rev.registerDate.substring(0, 10) }</div>
                  <div>${ rev.resNo }</div>
                  <div>
                    <img class="petImg" src="${ rev.dfilePath }" alt="roy">
                    <c:if test="${ rev.dogGender eq 'F' }">
                    <span>${ rev.dogName }(${ rev.dogBreed }) 여아</span>
                    </c:if>
                    <c:if test="${ rev.dogGender eq 'M' }">
                    <span>${ rev.dogName }(${ rev.dogBreed }) 남아</span>
                    </c:if>
                    
                  </div>
                  <div class="textArea">${ rev.content }</div>
                </div>

                <div class="mapClass">
                  <div class="carePlace">돌봄 장소</div>
                  <div class="petsitterAddress">${ rev.address }

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
                      <span><fmt:formatNumber value="${ pay.payPrice }" pattern="#,###,###"/></span>
                      <span>원</span>
                    </div>
                    <div>카카오페이</div>
                    <div>${ pay.payDate }</div>
                    <div>결제완료</div>
                  </div>
                </div>
              </div>
            </div>

            
            <div class="danger">
              <div class="danTit">잠깐! 주의해주세요!</div>
              <ul class="textZone">
                <li>* 하네스(가슴줄)을 보유하고 있지 않은 경우 안전상의 문제로 실내돌봄으로 대체될 수 있습니다.</li>
                <li>* 산책을 희망하는 경우 꼭 고객센터 또는 채팅상담을 통해 문의해주세요!</li>
                <li>* 방문시간은 요청한 시간대 내에 방문하며 기본 돌봄 시간은 24시간 입니다.</li>
                <li>* 개물림 사고 혹은 사람에게 위해를 가한적이 있다면 꼭 사전에 고지해주셔야 합니다.</li>
              </ul>
            </div>


          </div>
          <div class="backBtn">
			<button type="button" class="btn btn-secondary" onclick="history.back()">뒤로가기</button>
			</div>
        </div>
      </div>
    </div>

  </div>

<jsp:include page="../common/footer.jsp" />
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=2a6a9b34b7a3cf7a7b68ec7c64c444a3&libraries=services"></script>
<script>
$(document).ready(function () {
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	  mapOption = {
	    center: new kakao.maps.LatLng(37.53420144526709, 126.8973809043428), // 지도의 중심좌표
	    level: 3 // 지도의 확대 레벨
	  };

	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption);


	  var address = "${rev.address}"; 
	  var geocoder = new kakao.maps.services.Geocoder();

	  geocoder.addressSearch(address, function (result, status) {
	    if (status === kakao.maps.services.Status.OK) {
	      var latitude = result[0].y;
	      var longitude = result[0].x;

	      var container = document.getElementById('map');
	      var options = {
	        center: new kakao.maps.LatLng(latitude, longitude),
	        level: 6
	      };

	      var map = new kakao.maps.Map(container, options);

	      var circle = new kakao.maps.Circle({
	        center: new kakao.maps.LatLng(latitude, longitude),  // 원의 중심 좌표
	        radius: 500,  // 원의 반지름 (단위: m)
	        strokeWeight: 2,  // 선의 두께 (단위: px)
	        strokeColor: '#0888D0',  // 선의 색상
	        strokeOpacity: 0.8,  // 선의 불투명도 (0~1 사이의 값)
	        strokeStyle: 'solid',  // 선의 스타일 ('solid', 'shortdash', 'shortdot', 'shortdashdot', 'longdash', 'longdot', 'longdashdot')
	        fillColor: '#B9EAFF',  // 채우기 색상
	        fillOpacity: 0.2  // 채우기 불투명도 (0~1 사이의 값)
	      });

	      circle.setMap(map);
	    }
	  });
	});    

</script>
</body>
</html>