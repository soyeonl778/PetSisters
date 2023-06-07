<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/notice/noticeDetail.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>공지사항 상세</title>
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
                    <h2>공지사항</h2>
                    <span>펫시스터즈의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
                    <hr/>
                </div>
                
                <c:if test="${ (not empty loginUser) and (loginUser.userName eq '관리자') }">
		            <div align="right">
		                <!-- 수정하기, 삭제하기 버튼은 이 글이 본인이 작성한 글일 경우에만 보여져야 함 -->
			                <a class="btn btn-primary" onclick="postFormSubmit(1);">수정하기</a>
			                <a class="btn btn-danger" onclick="postFormSubmit(2);">삭제하기</a>
		            </div>
	            	<br>
	            
		            <form id="postForm" action="" method="post">
		            	<input type="hidden" name="noticeNo" value="${ n.noticeNo }">
		            </form>
		            <script>
		            	// 수정하기 버튼과 삭제하기 버튼을 클릭했을 때 실행할 선언적 함수
		            	function postFormSubmit(num) {
		            		
		            		// 해당 form 태그 선택 후 action 속성값을 각각 부여 후 곧바로 submit 시키기
		            		if(num == 1) { // 수정하기 버튼을 클릭했을 경우
		            			$("#postForm").attr("action", "updateForm.no").submit();
		            		} else { // 삭제하기 버튼을 클릭했을 경우
		            			$("#postForm").attr("action", "delete.no").submit();
		            		}
		            	}
		            </script>
            	</c:if>
                
                <div class="noticeDetail">
                    <table id="noticeDetail" style="text-align: center;">
                        <tr>
                            <th>제목</th>
                            <td>
                                <div class="notice">${n.noticeTitle}</div>
                            </td>
                        </tr>
                        <tr>
                            <th>작성자</th>
                            <td>
                              <div class="notice">언니들</div>
                            </td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td>
                              <div class="notice">${n.createDate}</div>
                            </td>
                        </tr>
                        <tr>
                        	<th>조회수</th>
                            <td>
                              <div class="notice">${n.count}</div>
                            </td>
                        </tr> 
                        <tr>
                            <th>내용</th>
                            <td>
                                <div class="notice noticeContent">
                                    ${n.noticeContent}
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

                <br/>
                <div style="text-align: right;">
                  <a href="list.no" class="btn btn-outline-primary">목록으로</a>
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