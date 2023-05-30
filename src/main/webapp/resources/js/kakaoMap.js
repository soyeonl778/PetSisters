$(document).ready(function () {
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  mapOption = {
    center: new kakao.maps.LatLng(37.53420144526709, 126.8973809043428), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
  };

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('경기도 광명시 오리로801', function (result, status) {

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
      content: '<div style="width:150px;text-align:center;padding:6px 0;">조승호 펫시터님</div>'
    });
    infowindow.open(map, marker);

    // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
    map.setCenter(coords);
  }
})
});    