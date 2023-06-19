<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                                DataTables is a third party plugin that is used to generate the demo table below. For more information about DataTables, please visit the
                                <a target="_blank" href="https://datatables.net/">official DataTables documentation</a>
                                .
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-table me-1"></i>
                                DataTable Example
                            </div>
                            <div class="card-body">
                                <table id="datatablesSimple">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>Name</th>
                                            <th>Position</th>
                                            <th>Office</th>
                                            <th>Age</th>
                                            <th>Start date</th>
                                            <th>Salary</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        <c:forEach var="s" items="${ list }">
                                            <tr>
                                                <td>${s.userNo}</td>
                                                <td>${s.userId}</td>
                                                <td>${s.userName}</td>
                                                <td>${s.userNickname}</td>
                                                <td>${s.email}</td>
                                                <td>${s.status}</td>
                                                <td>${s.enrollDate}</td>
                                                <td>
                                                    <button id="" class="withdrawButtonClass" onclick="handleWithdraw();">승인</button>
                                                    <button id="" class="withdrawButtonClass" onclick="handleWithdraw();">반려</button>
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

    <script>
        function handleWithdraw(status, userNo) {
            
            if (status === 'Y') {
            location.href = 'memberDelete.da?userNo=' + userNo;
          } else {
            alertify.alert('알림', '이미 탈퇴된 회원입니다.')
          }
        }
    </script>

    </body>
</html>
	



