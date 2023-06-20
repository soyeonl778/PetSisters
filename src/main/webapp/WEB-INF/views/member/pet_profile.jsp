<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <!--제이쿼리-->    
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/pet_profile.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />
  
  <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>

  <title>마이페이지_펫프로필관리</title>
  <style>
    .ajs-footer {
      height: 100px!important;
    }
  </style>
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
                  <h3 class="title_11">펫 프로필 상세정보</h3>
                </div>
                <form id="profileWrapper" action="petUpdate.me" method="post" enctype="multipart/form-data">
                  <hr>
                    <div class="file_main">
                      <div>
                      <label>사진</label>
                      </div>
                      <img id="preview_img" class="profile_img" src="${ d.filePath }" />
                      <div class="file_change">
                        <input type="hidden" name="filePath" value="${ d.filePath }">
                        <div class="profile_con">
                         	<label id="file_inputcss" for="file_input" class="img_btn">사진변경</label>
							<input type="file" name="upfile" id="file_input" style="display: none;">
                          <p style="margin-right: 25px;">등록된 사진은 반려견의 프로필입니다.</p>
                        </div>
                      </div>
                    </div>
                  <hr>
                  <input type="hidden" name="dogNo" value="${ d.dogNo }" />
                  <label>이름</label>
                  <input class="pet_name" name="dogName" value="${ d.dogName }" placeholder="반려견 이름을 입력해주세요." />
                  <hr>
                  <div class="gender_wrap">
	                  <div class="genderMain">
	                  	<label>성별</label>
	                  </div>
	                  <div class="radio_gender">
		                  <input type="radio" id="Male" value="M" name="dogGender"> <b>남</b>
			              <input type="radio" id="Female" value="F" name="dogGender"> <b>여</b>
	                  </div>
                  </div>
                  <hr>
                  <label>견종</label>
                  <input class="pet_type" name="dogBreed" value="${ d.dogBreed }" placeholder="ex)골든리트리버" />
                  <hr>
                  <label>생일</label>
                  <input class="pet_birth" name="dogBirthday" value="${ d.dogBirthday }" placeholder="ex)2023-06-06" />
                  <hr>
                  <label>몸무게</label>
                  <input class="pet_kg" name="dogWeight" value="${ d.dogWeight }" placeholder="ex)15" /> kg
                  <hr>
                  <div class="gender_wrap">
                  	<div class="genderMain">
                  		<label>중성화</label>
                  	</div>
                  	<div class="radio_gender">
	                  <input type="radio" name="neutralizationStatus" id="Yes" value="Y"> <b>Yes</b>
	                  <input type="radio" name="neutralizationStatus" id="No" value="N"> <b>No</b>
                  	</div>
                  </div>
                  <hr>
                  <div class="note_main">
	                  <div class="note1">
		                  <label>돌봄시 <br>참고사항</label>
		              </div>
	                  <div class="noteArea">
			              <textarea class="dog_note" cols="50" rows="5" name="dogNote" placeholder="${ d.dogNote }">${ d.dogNote }</textarea><br>
			              <div class="count"><span>0</span>/100</div>
	                  </div>
                  </div>
                  <div class="btnArea">
                  	<button type="submit" class="update_btn">수정하기</button>
                  	<button type="button" class="delete_btn" onclick="location.href='petDelete.me?dogNo=${d.dogNo}'">등록해지</button>
                  </div>
                  <br>
                </form>
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>
    </div>
    
    <script>
       $(function() {
                    		
		  if("${ d.dogGender }" != "")
		              			
		   $("input[value=${ d.dogGender }]").attr("checked", true);
                    		
         });
    </script>
    
    <script>
       $(function() {
                    		
		 if("${ d.neutralizationStatus }" != "")
		              			
		  $("input[value=${ d.neutralizationStatus }]").attr("checked", true);
                    		
      });
     </script>
    
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
	    
	    // 파일 미리보기
	    const fileInput = document.getElementById('file_input');
	    const previewImg = document.getElementById('preview_img');

	    fileInput.addEventListener('change', function() {
	      const file = fileInput.files[0];
	      const reader = new FileReader();

	      reader.onload = function(e) {
	        previewImg.src = e.target.result;
	      }

	      if (file) {
	        reader.readAsDataURL(file);
	      }
	    });
    </script>
    
  </div>
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

</body>
</html>