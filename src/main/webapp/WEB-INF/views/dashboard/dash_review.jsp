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
            #datatablesSimple th,
            #datatablesSimple td {
            text-align: center;
            }
            #datatablesSimple {
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
	        <h1 class="mt-4">후기관리</h1>
	        <div class="card mb-4">
	            <div class="card-body">
	                	전체 회원의 후기글 조회목록입니다.
	            </div>
	        </div>
	        <div class="card mb-4">
	            <div class="card-header">
	                <i class="fas fa-table me-1"></i>
	                	후기글
	            </div>
	            <div class="card-body">
                <table class="reviewTable" id="datatablesSimple">
                    <thead>
                      <tr>
                         <th>후기번호</th>
                         <th>후기제목</th>
                         <th>작성일</th>
                         <th>답변일</th>
                      </tr>
                    </thead>
                    <tfoot>
                      <tr>
                         <th>후기번호</th>
                         <th>후기제목</th>
                         <th>작성일</th>
                         <th>답변일</th>
                      </tr>
                    </tfoot>
                    <tbody>
	                    <c:choose>
	                    <c:when test="${not empty list}">
					    <c:forEach var="i" items="${list}">
					      <tr>
					         <td>${i.revNo}</td>
					         <td>${i.revTitle}</td>
					         <td>${i.createDate}</td>
					         <td>${i.adate}</td>
					      </tr>
					    </c:forEach>
					    </c:when>
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
			$(".reviewTable>tbody>tr").click(function() {
				let rNo = $(this).children().eq(0).text();
				let url = "reservationDetail?rNo=" + rNo;
				window.open(url, "_blank");
			});
		});
	</script>
	                
		<jsp:include page="./dash_footer.jsp" />
		
		</div>
	</div>
    </body>
</html>