<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<style>
.bg-video {
  position: absolute;
  top: 0;
  left: 0;
  height: 100vh;
  width: 100%;
  opacity: 1;
}

.bg-video__content {
  height: 100vh;
  width: 100%;
  object-fit: inherit;
}
.homeBtn {
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    position: absolute;
}
</style>
</head>
<body>
	<div class="bg-video">
		<video class="errorPage bg-video__content" muted autoplay loop>
          <source src="/resources/video/에러페이지.mp4" type="video/mp4">
        </video>
          <button class="homeBtn">홈으로..</button>
	</div>
</body>
</html>