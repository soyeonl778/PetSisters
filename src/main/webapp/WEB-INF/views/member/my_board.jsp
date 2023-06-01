<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/my_board.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />

  <title>마이페이지_내게시글관리</title>
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
                <div id="my_contents">
                  <div class="btn_bo">
                    <button type="button" class="btn_bo2">내 게시글</button>
                  </div>
                  <div class="btn_re">
                    <button type="button" class="btn_re2">내 댓글</button>
                  </div>
                </div>
                <div id="main_content">
                  <hr>
                  <div id="boardWrapper">
                    <table id="boardList" class="table table-hover">
                      <thead>
                        <tr>
                          <th>내용</th>
                          <th>날짜</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>이게 맞아?</td>
                          <td>2023-05-29</td>
                        </tr>
                        <tr>
                          <td>아닐걸?</td>
                          <td>2023-05-29</td>
                        </tr>
                        <tr>
                          <td>이게 맞아?</td>
                          <td>2023-05-29</td>
                        </tr>
                        <tr>
                          <td>맞을걸?</td>
                          <td>2023-05-29</td>
                        </tr>
                        <tr>
                          <td>하기시룸</td>
                          <td>2023-05-29</td>
                        </tr>
                        <tr>
                          <td>이게 맞아?</td>
                          <td>2023-05-29</td>
                        </tr>
                        <tr>
                          <td>맞다고쳐?</td>
                          <td>2023-05-29</td>
                        </tr>
                      </tbody>

                    </table>
                  </div>
                </div>
                <!-- 페이징처리부분 -->
                <div id="pagingArea">
                  <nav aria-label="Page navigation example">
                    <ul id="pagiUl" class="pagination paginationUlTag">
                      <li class="arrowTag">
                        <a href="">&lsaquo;</a>
                      </li>
                      <li class="page-item active">
                        <a class="page-link" href="#">1</a>
                      </li>
                      <li class="page-item">
                        <a class="page-link" href="#">2</a>
                      </li>
                      <li class="page-item">
                        <a class="page-link" href="#">3</a>
                      </li>
                      <li class="arrowTag">
                        <a href="">&rsaquo;</a>
                      </li>
                    </ul>
                  </nav>
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
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

</body>
</html>