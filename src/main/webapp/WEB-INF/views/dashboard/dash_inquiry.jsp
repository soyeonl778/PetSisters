<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <title>Dashboard</title>
        <style>
        	table th, td {
    			text-align: center;
        	}
        </style>        
    </head>
    <body class="sb-nav-fixed">
    <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
	    <!-- Navbar Brand-->
	    <a class="navbar-brand ps-3" href="member.da">Administrator Page</a>
	    <!-- Sidebar Toggle-->
	    <button class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0" id="sidebarToggle" href="#!"><i class="fas fa-bars"></i></button>
	</nav>
	<div id="layoutSidenav">
	
	<jsp:include page="./dash_header.jsp" />

	<div id="layoutSidenav_content">

	<!-- 이 영역 안에서 작업하면 됩니다 -->
	<main>
	    <div class="container-fluid px-4">
	        <h1 class="mt-4">1:1문의관리</h1>
	        <div class="card mb-4">
	            <div class="card-body">
	                	전체 회원의 1:1 문의글 조회목록입니다.
	            </div>
	        </div>
	        <div class="card mb-4">
	            <div class="card-header">
	                <i class="fas fa-table me-1"></i>
	                1:1 문의글
	            </div>
	            <div class="card-body">
                <table class="inquiryTable" id="datatablesSimple">
                    <thead>
                      <tr>
                         <th>접수번호</th>
                         <th>작성자</th>
                         <th>제목</th>
                         <th>작성일</th>
                         <th>첨부파일</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                         <th>접수번호</th>
                         <th>작성자</th>
                         <th>제목</th>
                         <th>작성일</th>
                         <th>첨부파일</th>
                      </tr>
                    </tfoot>
                    <tbody>
	                    <c:choose>
					      <c:when test="${empty list}">
				            <tr>
				                <td colspan="4">등록된 글이 없습니다.</td>
				            </tr>
				          </c:when>
					      <c:otherwise>
				            <c:forEach var="i" items="${list}">
				              <tr>
		                         <td>${i.inquiryNo}</td>
		                         <td>${i.userNickname}</td>
		                         <td>${i.inquiryTitle}</td>
		                         <td>${i.createDate}</td>
		                         <td>
		                             <c:if test="${empty i.filePath}">
		                                 	첨부파일 없음
		                             </c:if>
		                             <c:if test="${not empty i.filePath}">
		                                 <img style="text-align:left; width:225px;" id="imgView" src="${i.filePath}">
		                             </c:if>
		                         </td>
				              </tr>
				            </c:forEach>
					      </c:otherwise>
					    </c:choose>
                    </tbody>
                </table>
	            </div>
	        </div>
	    </div>
	</main>
	<!-- 작업영역 끝 -->

	<script>
		$(function() {
			$(".inquiryTable>tbody>tr").click(function() {
				let inquiryNo = $(this).children().eq(0).text();
				let url = "detail.in?inquiryNo=" + inquiryNo;
				window.open(url, "_blank");
			});
		});
	</script>


		<jsp:include page="./dash_footer.jsp" />
		
		</div>
	</div>
    </body>
</html>