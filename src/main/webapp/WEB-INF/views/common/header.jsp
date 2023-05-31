<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <!-- alertify 라이브러리 연동 구문 -->
    <!-- JavaScript -->
	<script src="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/alertify.min.js"></script>
	<!-- CSS -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/alertify.min.css"/>
	<!-- Default theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/default.min.css"/>
	<!-- Semantic UI theme -->
	<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/alertifyjs@1.13.1/build/css/themes/semantic.min.css"/>

	<!-- 일회성 알람문구 띄우기 -->
	<!-- 주의사항 : script 태그 내부에서는 custom action 태그를 사용 불가함 -->
	<c:if test="${ not empty alertMsg }">
		<script>
			alertify.alert('환영합니다 ${ loginUser.userName }님!', '${ alertMsg }', function(){ alertify.success('또오셨군용'); });
		</script>
		<c:remove var="alertMsg" scope="session" />
	</c:if>

    <nav class="navbar navbar-expand-lg bg-light fixed-top">
      <div class="container-fluid">
        <a class="navbar-brand" href="/mian/main.html"><img class="headerLogo" src="/resources/img/main/새로운로고.png" alt="headerLogo"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="#">펫시터 찾기</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">커뮤니티</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">후기</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">채팅</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">고객센터</a>
            </li>
            
            <c:choose>
            	<c:when test="${ empty loginUser }" >
		            <li class="nav-item">
		              <a class="nav-link" href="login.me">로그인</a>
		            </li>
            	</c:when>
            	<c:otherwise>
		            <li class="nav-item">
		              <a class="nav-link" href="login.me">마이페이지</a>
		            </li>
		            <li class="nav-item">
		              <a class="nav-link" href="login.me">로그아웃</a>
		            </li>
            	</c:otherwise>
            </c:choose>
            
            <li class="nav-item">
              <a class="nav-link petsiter" href="supportInfo.me">펫시터지원</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
