<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/inquiry/inquiryList.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>1:1 문의</title>
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
                    <a onclick="event.preventDefault();">1:1 문의</a>
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

                <br/>
                <form id="postForm" action="/list.in" method="post">
		          	<input type="hidden" name="userNo" value="${i.userNo}">
		          </form>
		          
                <table id="inquiryTable" style="text-align: center;" class="table table-hover">
                  
                  <thead>
                    <tr class="category">
                        <th height="51">제목</th>
                        <th width="100">작성일</th>
                        <th width="100">답변상태</th>
                    </tr>
                  </thead>
                  <c:choose>
						<c:when test="${not empty loginUser}">
							<tbody id="inquiryBody">
			                  	<c:forEach var="i" items="${list}">
			                  		<tr>
			                  			<td height="51">${i.inquiryTitle}</td>
			                  			<td>${i.createDate}</td>
			                  			<td>${i.replyStatus}</td>
			                  		</tr>
			                  	</c:forEach>
	                  		</tbody>							
						</c:when>
						<c:otherwise>
							<script>
								alert("로그인이 필요한 서비스입니다.");
								location.href = "/list.no";
							</script>
						</c:otherwise>
					</c:choose>
                </table>
				
                <br/>
                <div style="text-align: center;">
                  <a href="enrollForm.in" class="btn btn-primary">작성하기</a>
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
  
  <script>
  	$(function() {
		$("#inquiryTable>tbody>tr").click(function() {
			let inquiryNo = $(this).children().eq(0).text();
			/* console.log(inquiryNo); */
			location.href = "detail.in?inquiryNo=" + inquiryNo;
		});
  	});
  </script>
</body>
</html>