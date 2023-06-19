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
                                                <td>${s.status}</td>
                                                <td>
                                                    <button id="" class="approveButtonClass" onclick="location.href='supportApprove.da?userNo=${s.userNo}&supportNo=${s.supportNo}&status=Y'">승인</button>
                                                    <button id="" class="rejectButtonClass" onclick="location.href='supportApprove.da?userNo=${s.userNo}&supportNo=${s.supportNo}&status=N'">반려</button>
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
	



