<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/common/main.css">
<jsp:include page="./common/common.jsp" />
  <!-- AOS-->
  <script src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
  <script src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <link rel="stylesheet" href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick-theme.css" />
    <!-- AOS-->
  <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
  <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>


<script src="/resources/js/main.js"></script>


<title>펫시스터즈</title>
</head>
<body>

    <div id="main">
    	
    <jsp:include page="./common/header.jsp" />	
    
      <div id="topImg" onclick="location.href='#';">
        <video class="mainVideo" muted autoplay loop>
          <source src="/resources/video/메인상단.mp4" type="video/mp4">
        </video>
          <div onclick="goPet()" class="clickPosition">
          </div>
      </div>
      <div id="contents" class="page_aticle">
        <!-- 탑 버튼 -->
        <div class="top_btn">
          <button id="go-top" alt="맨 위로가기" style="display: none;"></button>
        </div>
        <!-- 탑 버튼 끝 -->

        <!-- 슬라이드 -->
        <div class="wrap">
        <h3 class="reviewText" style="text-align: center;">실제 인스타그램 후기를 확인해보세요!</h3>
          <div class="slider">

            <div class="item">
              <img src="/resources/img/main/중간1.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/중간2.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/중간3.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/중간4.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/중간5.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/중간6.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/중간7.png" alt="">
            </div>
            <div class="item">
              <img src="/resources/img/main/중간8.png" alt="">
            </div>

          </div>
        </div>
        <!-- 슬라이드 -->

      </div>

      <!-- 하단 배너 영역 -->
      <%-- 
      <div id="bottomImg" data-aos="fade-zoom-out">
      </div>
      --%>
      <!-- 하단 배너 끝 -->
      <section id="section2">
        <div class="bottomWrapper">
          <div class="bottomLeft">
            <h1 data-aos="fade-right">
              편안한 하루를<br>
              선물하세요!
            </h1>

            <div class="bottomText2" data-aos="fade-zoom-in" data-aos-easing="ease-in-back" data-aos-delay="200" data-aos-offset="0">
              여행, 출장 늦은퇴근에도 걱정마세요! <br>
              가족같은 펫시스터즈가 내 아이와 <br>
              함께합니다!
            </div>
          </div>
          <div class="bottomRight">
            <div onclick="goPet()" class="bottomCard" data-aos="fade-up-left">
              <img src="/resources/img/main/가격1.png" alt="banner">
            </div>
            <div onclick="goPet()" class="bottomCard" data-aos="fade-down-left">
              <img src="/resources/img/main/가격2.png" alt="banner">
            </div>
          </div>
        </div>
      </section>

      <div id="backgroundImgSection">
      </div>

      <div id="middelBottomImgSection" data-aos="fade-zoom-in">
      </div>

      <div id="mainBottomSection" data-aos="fade-zoom-in">
      	<div onclick="goSup()" class="bottomClick"></div>
      </div>
    </div>
    
    <jsp:include page="./common/footer.jsp" />
  
  <script>
  AOS.init({
      duration: 1200,
    });
  function goPet() {
	  location.href="list.pe";
  }
  function goSup() {
	  location.href="supportInfo.me";
  }
  </script>
</body>
</html>