<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/my_profile.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <!-- 폰트어썸 아이콘 적용 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <jsp:include page="../common/common.jsp" />

  <title>마이페이지_내프로필관리</title>
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
            <jsp:include page="./sideMenubar.jsp" />
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <!--<div style="height: 1000px; background-color: beige;"></div> -->
                <div id="titleWrapper">
                  <h3 class="title_11">내 프로필 정보</h3>
                </div>
                <form id="profileWrapper" action="update.me" method="post" enctype="multipart/form-data">
                  <hr>
                    <div class="file_main">
                      <div>
                      	<label>사진</label>
                      </div>
                      <img id="preview_img" class="profile_img" src="${ loginUser.filePath }" />
                      <div class="file_change">
                        <div class="profile_con">
                        	<label id="file_inputcss" for="file_input" class="img_btn">사진변경</label>
							<input type="file" name="upfile" id="file_input" style="display: none;">
                          <p>등록된 사진은 회원님의 게시물이나 댓글들에 사용됩니다.</p>
                        </div>
                      </div>
                    </div>
                  <hr>
                  <input type="hidden" name="userNo" value="${ loginUser.userNo }" />
                  <label>아이디</label>
                  <input class="default_id" name="userId" value="${ loginUser.userId }" placeholder="${ loginUser.userId }" readonly />
                  <hr>
                  <label>비밀번호</label>
                  <input class="change_pwd" type="password" name="userPwd" value="${ loginUser.userPwd }" placeholder="${ loginUser.userPwd }" />
                  <hr>
                  <label>성함</label>
                  <input class="change_name" name="userName" value="${ loginUser.userName }" placeholder="${ loginUser.userName }" readonly />
                  <hr>
                  <label>닉네임</label>
                  <input class="change_nick" name="userNickname" value="${ loginUser.userNickname }" placeholder="${ loginUser.userNickname }" />
                  <hr>
                  <label>이메일</label>
                  <input class="change_email" name="email" value="${ loginUser.email }" placeholder="${ loginUser.email }" />
                  <hr>
                  <label>휴대전화</label>
                  <input class="change_phone" name="phone" value="${ loginUser.phone }" placeholder="${ loginUser.phone }" />
                  <hr>
                  <div class="kakaoAddress">
	                  <div>
	                  	<label>주소</label>
	                  </div>
	                  <div class="address_search">
		                  <input class="change_address" id="address_input" name="address" value="${ loginUser.address }" placeholder="${ loginUser.address }" />
		                  <i id="address_kakao" class="fas fa-search-location fa-lg" style="color: #858585;"><b>주소검색</b></i>
	                  </div>
                  </div>
                  <br>
                  <div class="btnArea">
	                  <button type="submit" class="update_btn">수정하기</button>
	                  <button type="button" class="delete_btn" data-toggle="modal" data-target="#deleteForm">탈퇴하기</button>
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
  </div>
  
  <!-- 회원탈퇴 버튼 클릭 시 보여질 Modal -->
    <div class="modal fade" id="deleteForm">
        <div class="modal-dialog modal-sm">
            <div class="modal-content">

                <!-- Modal Header -->
                <div class="modal-header">
                    <h4 class="modal-title">회원탈퇴</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <form action="delete.me" method="post">
                    <!-- Modal body -->
                    <div class="modal-body">
                        <div align="center">
				                            탈퇴 후 복구가 불가능합니다. <br>
				                            정말로 탈퇴 하시겠습니까? <br>
                        </div>
                        <br>
                            <label for="userPwd" class="mr-sm-2">Password : </label>
                            <input type="password" class="form-control mb-2 mr-sm-2" placeholder="Enter Password" id="userPwd" name="userPwd"> <br>
                            <input type="hidden" name="userId" value="${ loginUser.userId }">
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer" align="center">
                        <button type="submit" class="btn btn-danger">탈퇴하기</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
    
    <script>
	 // 주소 검색용
	    $('#address_kakao').click(function() {
	      
	      new daum.Postcode({
	      oncomplete: function(data) {
	        document.getElementById("address_input").value = data.address; // 주소 넣기
	            // document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
	      }
	  	}).open();
	      
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
    
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

</body>
</html>