<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/inquiry/inquiryDetail.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>1:1 문의 상세</title>
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
                  <li>
                    <a href="list.no">공지사항</a>
                  </li>
                  <li>
                    <a href="/showFaq">자주하는 질문</a>
                  </li>
                  <li class="on">
                    <a href="event.preventDefault();">1:1 문의</a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="title">
                    <h2>1:1 문의</h2>
                    <hr/>
                </div>
                
                <c:if test="${ (not empty loginUser) and (loginUser.userNo eq i.userNo) }">
                	<div align="right">
	                    <a class="btn btn-primary" onclick="postFormSubmit(1);">수정하기</a>
	                    <a class="btn btn-danger" onclick="postFormSubmit(2);">삭제하기</a>
                	</div>
                	<br/>
                	
                	<form id="postForm" action="" method="post">
		            	<input type="hidden" name="inquiryNo" value="${i.inquiryNo}">
		            </form>
		            <script>
						function postFormSubmit(num) {
							if(num == 1) { // 수정하기 버튼을 클릭했을 경우
								$("#postForm").attr("action", "updateForm.in").submit();
							} else { // 삭제하기 버튼을 클릭했을 경우
								$("#postForm").attr("action", "delete.in").submit();
							}
						}
		            </script>
                </c:if>
                
                <div class="inquiryDetail">
                    <table id="inquiryDetail" style="text-align: center;">
                        <tr>
                            <th>제목</th>
                            <td>
                                <div class="inquiry">${i.inquiryTitle}</div>
                            </td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td>
                                <div class="inquiry">${i.createDate}</div>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <div class="inquiry inquiryContent">
									${i.inquiryContent}
                                </div>
                            </td>
                        </tr>
                        <tr>
                          <th>첨부파일</th>
                          <td class="attZone items">
                          	<c:choose>
	                    		<c:when test="${ empty i.filePath }">
	                    			첨부파일이 없습니다.
	                    		</c:when>
	                    		<c:otherwise>
	                    			${i.filePath}
	                    		</c:otherwise>
                    		</c:choose>
                          </td>
                        </tr>
                    </table>
                </div>
                
                <br/>
                <div style="text-align: right;">
                  <button type="button" onclick="history.back();" class="btn btn-outline-primary">목록으로</button>
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