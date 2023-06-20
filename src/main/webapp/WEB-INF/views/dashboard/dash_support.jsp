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
            .approveButtonClass{
                margin-bottom: 5px;
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
            .approveButtonClass:hover {
                background-color: #008cdc;
            }
            .rejectButtonClass {
                margin-bottom: 5px;
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
                        <h1 class="mt-4">펫시터지원목록</h1>
                        <div class="card mb-4">
                            <div class="card-body">
                                펫시터 지원 목록
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                펫시터 지원 목록
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>회원번호</th>
                                            <th>지원번호</th>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>거주지주소</th>
                                            <th>거주지유형</th>
                                            <th>흡연여부</th>
                                            <th>강아지반려경험유무</th>
                                            <th>타인동물반려경험내용</th>
                                            <th>그외반려경험내용</th>
                                            <th>펫시터활동경험유무</th>
                                            <th>처리상태</th>
                                            <th>승인반려</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>회원번호</th>
                                            <th>지원번호</th>
                                            <th>아이디</th>
                                            <th>이름</th>
                                            <th>거주지주소</th>
                                            <th>거주지유형</th>
                                            <th>흡연여부</th>
                                            <th>강아지반려경험유무</th>
                                            <th>타인동물반려경험내용</th>
                                            <th>그외반려경험내용</th>
                                            <th>펫시터활동경험유무</th>
                                            <th>처리상태</th>
                                            <th>승인반려</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach var="s" items="${ list }">
                                            <tr>
                                                <td>${s.userNo}</td>
                                                <td>${s.supportNo}</td>
                                                <td>${s.userId}</td>
                                                <td>${s.userName}</td>
                                                <td>${s.address}</td>
                                                <td>${s.pyeong}</td>
                                                <td>${s.smoke}</td>
                                                <td>${s.myExperience}</td>
                                                <td>${s.otherExperience}</td>
                                                <td>${s.etcExperience}</td>
                                                <td>${s.petsitterExperience}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${ s.status eq 'Y' }">
                                                            승인
                                                        </c:when>
                                                        <c:when test="${ s.status eq 'N' }">
                                                            반려
                                                        </c:when>
                                                        <c:otherwise>
                                                            대기중
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                                <td>
                                                    <button id="" class="approveButtonClass" onclick="location.href='supportApprove.da?userNo=${s.userNo}&supportNo=${s.supportNo}&status=Y'">승인</button><br>
                                                    <button id="" class="rejectButtonClass" onclick="location.href='supportApprove.da?userNo=${s.userNo}&supportNo=${s.supportNo}&status=N'">반려</button><br>
                                                    <div onclick="location.href='createChat.do?masterNo=${s.userNo}'">
                                                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat-dots-fill" viewBox="0 0 16 16">
                                                            <path d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM5 8a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                                        </svg>
                                                    </div>
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
	



