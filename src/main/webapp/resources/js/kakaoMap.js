$(document).ready(function () {
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
  mapOption = {
    center: new kakao.maps.LatLng(37.53420144526709, 126.8973809043428), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
  };

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption);


  var address = "경기도 광명시 하안동 오리로801 202동 2601호"; 
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


