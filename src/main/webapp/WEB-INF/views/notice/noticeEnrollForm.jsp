<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/notice/noticeEnrollForm.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />

  <title>공지사항 작성</title>
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
              <h2 class="tit_snb">고객센터</h2>
              <div class="inner_sub">
                <ul class="list_menu">
                  <li class="on">
                    <a href="list.no">공지사항</a>
                  </li>
                  <li>
                    <a href="/showFaq">자주하는 질문</a>
                  </li>
                  <li>
                    <a href="list.in">1:1 문의</a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="title">
                  <h2>공지사항 작성</h2>
                  <hr/>
                </div>

                <br/>
                
                <div class="noticeEnrollForm">
                  <form action="insert.no" method="post">
                    <table id="noticeEnrollForm" style="text-align: center;">
                        <tr>
                            <th>제목</th>
                            <td><input type="text" class="notice" name="noticeTitle" placeholder="제목" required></td>
                        </tr>
                        <tr>
                            <th>작성자</th>
                            <td style="text-align: left;">언니들</td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <textarea class="notice noticeContent" name="noticeContent" placeholder="내용을 입력해주세요." required></textarea>
                            </td>
                        </tr>
                    </table>
                    <br/>
	                <div align="center">
	                  <button type="submit" class="btn btn-primary">등록하기</button>
	                  <button type="button" onclick="history.back();" class="btn btn-outline-primary">뒤로가기</button>
	                </div>
                  </form>
                </div>
                
                
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