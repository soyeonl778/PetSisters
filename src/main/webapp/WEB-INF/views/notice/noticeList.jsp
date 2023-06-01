<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/notice/noticeList.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>공지사항</title>
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
                    <a onclick="event.preventDefault();">공지사항</a>
                  </li>
                  <li>
                    <a href="/showFaq">자주하는 질문</a>
                  </li>
                  <li>
                    <a href="#">1:1 문의</a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="title">
                  <h2>공지사항</h2>
                  <span>펫시스터즈의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
                  <hr/>
                </div>

                <br/>
                
                <table id="noticeTable" style="text-align: center;">
                  <thead>
                    <tr class="category">
                      <th width="50" height="51">번호</th>
                      <th>제목</th>
                      <th width="100">작성자</th>
                      <th width="100">작성일</th>
                      <th width="100">조회수</th>
                    </tr>
                  </thead>
                  <tbody id="noticeBody">
				    <a class="notice" href="#">
				      <tr>
				        <td height="51">공지</td>
				        <td>[안내] 펫시스터즈 서비스 이용안내</td>
				        <td>언니들</td>
				        <td>2023-05-24</td>
				        <td>77</td>
				      </tr>
				    </a>
				    <a class="notice" href="#">
				      <tr>
				        <td height="51">공지</td>
				        <td>[안내] 펫시스터즈 서비스 이용안내</td>
				        <td>언니들</td>
				        <td>2023-05-24</td>
				        <td>129</td>
				      </tr>
				    </a>
				    <a class="notice" href="#">
				      <tr>
				        <td height="51">공지</td>
				        <td>[안내] 펫시스터즈 서비스 이용안내</td>
				        <td>언니들</td>
				        <td>2023-05-24</td>
				        <td>214</td>
				      </tr>
				    </a>
				  </tbody>
                </table>

                <br/>
                <div style="text-align: center;">
                  <a href="" class="btn btn-primary">작성하기</a>
                </div>

                <br/>

                <!-- 페이지네이션-->
                <div id="pagination">
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
                <!-- 페이지네이션-->
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