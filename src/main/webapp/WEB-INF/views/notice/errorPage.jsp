<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="/resources/css/common/form.css">
	<jsp:include page="../common/common.jsp" />
<title>Insert title here</title>
</head>
<body>

	<!-- 헤더 영역 시작-->
    	<jsp:include page="../common/header.jsp" />
    <!-- 헤더 영역 끝-->
    
	<br>
    <div align="center">
        <img src="https://cdn2.iconfinder.com/data/icons/oops-404-error/64/208_balloon-bubble-chat-conversation-sorry-speech-256.png">
        <br><br>
        <h1 style="font-weight:bold;">${ errorMsg }</h1>
    </div>
    <br>
    
    <!-- Footer 영역 시작 -->
  		<jsp:include page="../common/footer.jsp" />
  	<!-- Footer 영역 끝 -->
</body>
</html>