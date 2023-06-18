<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!-- 사이드 메뉴바 -->
    <div id="snb" class="snb_my" style="position: absolute;">
      <img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
      <h2 class="tit_snb">My Page</h2>
      <div class="inner_sub">
        <ul class="list_menu">
          <li class="myProfile.me">
            <a href="myProfile.me">내 프로필</a>
          </li>
          <li class="petList.me">
            <a href="petList.me">반려동물 프로필</a>
          </li>
          <li class="petsiterLike.me">
            <a href="petsiterLike.me">펫시터 찜</a>
          </li>
          <li class="myBoard.me">
            <a href="myBoard.me">내 게시글 및 댓글</a>
          </li>
          <li class="reservationList">
            <a href="reservationList">예약 조회</a>
          </li>
          <li class="journalList">
            <a href="journalList">돌봄 일지</a>
          </li>
        </ul>
      </div>
    </div>
    <!-- 사이드 메뉴바 끝 -->

<script>
	window.onload = function() {
	    var currentUrl = window.location.href;
	    var lastSlashIndex = currentUrl.lastIndexOf('/');
	    var pageName = currentUrl.substring(lastSlashIndex + 1);
	    sessionStorage.setItem('currentPage', pageName);
	    
	    
	    var menuItems = document.querySelectorAll('.list_menu li');
	    for (var i = 0; i < menuItems.length; i++) {
	      var menuItem = menuItems[i];
	      if (menuItem.classList.contains(pageName)) {
	        menuItem.classList.add('on');
	        break; 
	      }
	    }
	  }
	  function goPage(e) {
		    location.href = "http://localhost:8282/" + e;
	  }
</script>