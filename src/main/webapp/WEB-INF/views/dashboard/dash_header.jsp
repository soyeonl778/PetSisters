<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <link href="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/style.min.css" rel="stylesheet" />
        <link href="/resources/css/common/dash.css" rel="stylesheet" />
        <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/dash.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/simple-datatables@7.1.2/dist/umd/simple-datatables.min.js" crossorigin="anonymous"></script>
        <script src="/resources/js/datatables-simple-demo.js"></script>
		            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">

                            <!------- 대분류 ------->
                            <div class="sb-sidenav-menu-heading">HELLO WORLD!</div>

                            <!--- 소분류 --->
                            <a class="nav-link" href="${ pageContext.request.contextPath }/">
                                <div class="sb-nav-link-icon"><i class="fas fa-tachometer-alt"></i></div>
                                PETSISTERS HOME
                            </a>
                            
                            <!------- 대분류 ------->
                            <div class="sb-sidenav-menu-heading">회원관리</div>

                            <!--- 소분류 --->
                            <a class="nav-link collapsed" href="member.da" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                일반회원목록
                            </a>
                            <a class="nav-link collapsed" href="petsiter.da" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                펫시터목록
                            </a>
                            <a class="nav-link collapsed" href="support.da" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                펫시터지원목록
                            </a>

                            <!------- 대분류 ------->
                            <div class="sb-sidenav-menu-heading">예약관리</div>

                            <!--- 소분류 --->
                            <a class="nav-link collapsed" href="or.da" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                진행중예약
                            </a>
                            <a class="nav-link collapsed" href="cr.da" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                지난예약
                            </a>
                            <a class="nav-link collapsed" href="review.da" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                후기관리
                            </a>

                            <!------- 대분류 ------->
                            <div class="sb-sidenav-menu-heading">고객센터관리</div>

                            <!--- 소분류 --->
                            <a class="nav-link collapsed" href="inquiry.da" >
                                <div class="sb-nav-link-icon"><i class="fas fa-columns"></i></div>
                                1:1문의관리
                            </a>

                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">Administrator Page</div>
                        for Pet Sisters
                    </div>
                </nav>
            </div>
