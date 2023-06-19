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
					<c:choose>
				      <c:when test="${empty list}">
			            <tr>
			                <td colspan="3">등록된 글이 없습니다.</td>
			            </tr>
			          </c:when>
				      <c:otherwise>
			            <c:forEach var="i" items="${list}">
			                <tr>
			                    <td height="51">${i.inquiryNo}</td>
			                    <td>${i.inquiryTitle}</td>
			                    <td>${i.createDate}</td>
			                </tr>
			            </c:forEach>
				      </c:otherwise>
				    </c:choose>
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
						<c:if test="${ pi.listCount != 0 }">
							<ul id="pagiUl" class="pagination paginationUlTag">
								<c:choose>
								  <c:when test="${ pi.currentPage eq 1 }">
									<li class="arrowTag disabled"><a href="">&lsaquo;</a></li>
								  </c:when>
								  <c:otherwise>
									  <li class="arrowTag">
				                        <a href="list.in?userNo=${loginUser.userNo}&cPage=${ pi.currentPage - 1 }">&lsaquo;</a>
									  </li>
								  </c:otherwise>
								</c:choose>
				
								<c:forEach var="i" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
									<li class="page-item active">
				                      <a class="page-link" href="list.in?userNo=${loginUser.userNo}&cPage=${i}">${i}</a>
				                    </li>
								</c:forEach>
				
								<c:choose>
								  <c:when test="${ pi.currentPage eq pi.maxPage }">
									  <li class="arrowTag disabled">
				                        <a href="javascript:void(0)">&rsaquo;</a>
				                      </li>
									</c:when>
									<c:otherwise>
									    <li class="arrowTag">
				                          <a href="list.in?userNo=${loginUser.userNo}&cPage=${pi.currentPage + 1}">&rsaquo;</a>
				                        </li>
								  </c:otherwise>
								</c:choose>
							</ul>
						</c:if>
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