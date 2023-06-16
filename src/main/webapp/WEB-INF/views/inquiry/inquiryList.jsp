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
            	<jsp:include page="../common/csSidebar.jsp" />
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
                    	<th width="100" height="51">접수번호</th>
                        <th>제목</th>
                        <th width="100">작성일</th>
                    </tr>
                  </thead>
					<tbody id="inquiryBody">
						<c:if test="${not empty list}">
							<c:forEach var="i" items="${list}">
	                  		<tr>
	                  			<td height="51">${i.inquiryNo}</td>
	                  			<td>${i.inquiryTitle}</td>
	                  			<td>${i.createDate}</td>
	                  		</tr>
	                  		</c:forEach>
						</c:if>
                 	</tbody>							
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
  
</body>
</html>