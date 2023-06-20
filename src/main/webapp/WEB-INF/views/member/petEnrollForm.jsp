<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/petEnrollForm.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />

  <title>마이페이지_펫등록하기</title>
</head>
<body>
  <!-- 헤더 영역 시작-->
    <jsp:include page="../common/header.jsp" />	 
  <!-- 헤더 영역 끝-->

  <div id="Container-Wrapper">
    <!-- 페이지 영역 시작 -->
    <div id="container">
      <div id="main">
        <div id="content">
          <div class="page_aticle aticle_type2">
            <!-- 사이드 메뉴바 -->
            <div id="snb" class="snb_my" style="position: absolute;">
				      <img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
				      <h2 class="tit_snb">My Page</h2>
				      <div class="inner_sub">
				        <ul class="list_menu">
				          <li class="myProfile.me">
				            <a href="myProfile.me">내 프로필</a>
				          </li>
				          <li class="petList.me on">
				            <a href="petList.me">반려동물 프로필</a>
				          </li>
				          <li class="petsiterLike.me">
				            <a href="petsiterLike.me">펫시터 찜</a>
				          </li>
				          <li class="myBoard.me">
				            <a href="myBoard.me">내 게시글</a>
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

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <!--<div style="height: 1000px; background-color: beige;"></div> -->
                <div id="titleWrapper">
                  <h3 class="title_11">펫 정보 등록하기</h3>
                </div>
                <form action="petInsert.me" method="post" id="petEnrollForm">
                	<input type="hidden" name="userNo" value="${ loginUser.userNo }">
                    <div class="sub2Wrapper">
                      <div class="sub2">
                        <div class="enrollWrapper">
                          <p>
                            <label for="dogName">● 이름 </label><br>
                            <input type="text" id="dogName" name="dogName" maxlength="15" placeholder="반려견 이름을 입력해주세요." style="width:240px" required>
                          </p>
                          <p class="input_btn checkbox">
                            <div class="genderMain">
                              <label for="dogGender">● 성별</label><br>
                            </div>
                            <div class="radio_gender">
                              <input type="radio" id="Male" value="M" name="dogGender"> <b>남</b>
                              <input type="radio" id="Female" value="F" name="dogGender"> <b>여</b> <br>
                            </div>
                          </p>
                          <p>
                            <label for="dogBreed">● 견종 </label><br>
                            <input type="text" name="dogBreed" id="dogBreed" maxlength="15" placeholder="ex)골든리트리버" style="width:230px" required>
                          </p>
                          <p>
                            <label for="dogBirthday">● 생일 </label><br>
                            <input type="text" name="dogBirthday" id="dogBirthday" maxlength="15" placeholder="ex)2023-06-06" style="width:300px" required><br>
                          </p>
                          <p>
                            <label for="dogWeight">● 몸무게 </label><br>
                            <input type="text" name="dogWeight" id="dogWeight" maxlength="15" placeholder="ex)4" style="width:80px" onkeyup="passConfirm()" required>  kg
                          </p>
                          <p class="input_btn checkbox">
                            <div class="nMain">
                              <label>● 중성화여부 </label><br>
                            </div>
                            <div class="radio_n">
                              <input type="radio" name="neutralizationStatus" id="neutralizationStatus" value="Y"> <b>Yes</b>
                              <input type="radio" name="neutralizationStatus" id="neutralizationStatus" value="N"> <b>No</b> <br>
                            </div>
                          </p>
                          <div class="note_main">
                          <div class="note1">
                            <label>● 돌봄시 참고사항</label>
                        </div>
                          <div class="noteArea">
                          <textarea name="dogNote" id="dogNote" class="dog_note" cols="50" rows="5" placeholder="ex)우리 댕댕이는 생식만 먹여요. 큰 소리에 예민한 편이에요."></textarea><br>
                          <div class="count"><span>0</span>/100</div>
                          </div>
                        </div>
                        
                        <br>
                        </div>
                        <div class="btnWrapper">
                          <button type="reset" class="btn_reset">재입력</button>
                          <button type="submit" class="btn_submit">등록하기</button>
                        </div>
                      </div>
                    </div>
                  </form>
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>
    </div>
    
    <!-- textarea 글자수 제한 -->
    <script>
	    $('.noteArea textarea').keyup(function(){
	    	  var content = $(this).val();
	    	  $('.noteArea .count span').html(content.length);
	    	  if (content.length > 100){
	    	    alert("최대 100자까지 입력 가능합니다.");
	    	    $(this).val(content.substring(0, 100));
	    	    $('.text_box .count span').html(100);
	    	  }
	    	});
    </script>
    
  </div>
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

</body>
</html>