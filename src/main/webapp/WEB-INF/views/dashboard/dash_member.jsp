<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />

        <title>Dashboard</title>
        <style>
            #datatablesSimple th,
            #datatablesSimple td {
            text-align: center;
            }
            #datatablesSimple {
                text-align: center;
            }
            #datatablesSimple>tbody>tr:hover {
                cursor: pointer!important;
            }
            .withdrawButtonClass{
                border: none;
                border-radius: 4px;
                width: 70px;
                height: 32px;
                line-height: 150%;
                font-weight: bold;
                font-size: 14px;
                background-color: #55c1ff;
                color: rgb(255, 255, 255);
                transition: background-color 0.5s ease 0s, color 0.5s ease 0s;
            }
            .withdrawButtonClass:hover {
                background-color: #008cdc;
            }
            .rejectButtonClass {
                border: none;
                border-radius: 4px;
                width: 70px;
                height: 32px;
                line-height: 150%;
                font-weight: bold;
                font-size: 14px;
                background-color: #ff9595;
                color: rgb(255, 255, 255);
                transition: background-color 0.5s ease 0s, color 0.5s ease 0s;
            }
            .rejectButtonClass:hover {
                background-color: #ff0000;
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
                    	<!-- 본문 최상단 제목 부분 -->
                        <h1 class="mt-4">일반회원목록</h1>
                        <div class="card mb-4">
                            <div class="card-body">
                                일반 회원 목록입니다.
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                일반회원목록
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>번호</th>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>닉네임</th>
                                            <th>이메일</th>
                                            <th>회원상태</th>
                                            <th>가입일</th>
                                            <th>회원탈퇴</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>번호</th>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>닉네임</th>
                                            <th>이메일</th>
                                            <th>회원상태</th>
                                            <th>가입일</th>
                                            <th>회원탈퇴</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach var="m" items="${ list }">
                                            <tr>
                                                <td>${m.userNo}</td>
                                                <td>${m.userId}</td>
                                                <td>${m.userName}</td>
                                                <td>${m.userNickname}</td>
                                                <td>${m.email}</td>
                                                <td>${m.status}</td>
                                                <td>${m.enrollDate}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${ m.status eq 'Y' }">
                                                            <button id="" class="rejectButtonClass" onclick="location.href='memberDelete.da?userNo=${m.userNo}&status=${m.status}'">탈퇴</button>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <button id="" class="withdrawButtonClass" onclick="location.href='memberDelete.da?userNo=${m.userNo}&status=${m.status}'">복구</button>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </main>
                
                <!-- 작업영역 끝 -->
                
		
		<jsp:include page="./dash_footer.jsp" />
		
		</div>
	</div>
    </body>
</html>
	



