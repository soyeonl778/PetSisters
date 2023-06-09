<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/my_profile.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
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
            <div id="snb" class="snb_my" style="position: absolute;">
              <img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
              <h2 class="tit_snb">My Page</h2>
              <div class="inner_sub">
                <ul class="list_menu">
                  <li class="on">
                    <a href="myProfile.me">내 프로필</a>
                  </li>
                  <li>
                    <a href="petProfile.me">반려동물 프로필</a>
                  </li>
                  <li>
                    <a href="petsiterLike.me">펫시터 찜</a>
                  </li>
                  <li>
                    <a href="myBoard.me">내 게시글 및 댓글</a>
                  </li>
                  <li>
                    <a href="reservationList">예약 조회</a>
                  </li>
                  <li>
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
                  <h3 class="title_11">내 프로필 정보</h3>
                </div>
                <form id="profileWrapper" action="update.me" method="get">
                  <hr>
                    <div class="file_main">
                      <label>사진</label>
                      <div class="file_change">
                        <img class="profile_img" src="/resources/upFiles/member_profiles/user01.png" />
                        <div class="profile_con">
                          <p>등록된 사진은 회원님의 게시물이나 댓글들에 사용됩니다.</p>
                        </div>
                      </div>
                    </div>
                  <hr>
                  <label>아이디</label>
                  <input class="default_id" id="userId" placeholder="${ loginUser.userId }" readonly />
                  <hr>
                  <label>비밀번호</label>
                  <input class="change_pwd" id="userPwd" placeholder="${ loginUser.userPwd }" />
                  <hr>
                  <label>닉네임</label>
                  <input class="change_nick" id="userNickname" placeholder="${ loginUser.userNickname }" />
                  <hr>
                  <label>이메일</label>
                  <input class="change_email" id="email" placeholder="${ loginUser.email }" />
                  <hr>
                  <label>휴대전화</label>
                  <input class="change_phone" id="phone" placeholder="${ loginUser.phone }" />
                  <hr>
                  <label>주소</label>
                  <input class="change_address" id="address" placeholder="${ loginUser.address }" />
                  <br>
                  <button type="submit" class="update_btn">수정하기</button>
                  <button type="submit" class="delete_btn" data-toggle="modal" data-target="#deleteForm">탈퇴하기</button>
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
    
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

</body>
</html>