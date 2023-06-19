<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
<link rel="stylesheet" href="/resources/css/member/loginForm.css">
<link rel="stylesheet" href="/resources/css/common/memberForm.css">
<jsp:include page="../common/common.jsp" />

  <title>로그인</title>
</head>
<body>
	<!-- 일회성 알람문구 띄우기 -->
	<!-- 주의사항 : script 태그 내부에서는 custom action 태그를 사용할 수 없음 -->
	<c:if test="${ not empty alertMsg }">
		<script>
			alertify.alert('알림', '${ alertMsg }', function(){ alertify.success('Ok'); });
		</script>
		<c:remove var="alertMsg" scope="session" />
	</c:if>

  <!-- 헤더 영역 시작-->
    <jsp:include page="../common/header.jsp" />	 
  <!-- 헤더 영역 끝-->

  <div id="Container-Wrapper">
    <!-- 페이지 영역 시작 -->
    <div id="container">
      <div id="main">
        <div id="content">
          <div class="page_aticle aticle_type22">

            <!-- 본문 영역-->
            <div class="mainWrapper">
              <div id="viewOrderList" class="page_section section_orderlist">
                <div class="page_section section_destination">
                  <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                  <div class="mainContent">
                    <div class="mainImg">
                      <img src="/resources/img/member/login.png" style="width: 200px;">
                    </div>
                    <div class="login">
                      <h1 style="font-family:sans-serif; font-weight: 700;">LOGIN</h1>
                    </div>
                    <div class="inputArea">
                      <hr class="first_hr1" />
                        <div id="groupWrapper1">
                        <form action="login.me" method="post">
                            <div class="login_group">
                              <p>
                                <label for="login_id">아이디 </label>
                                <input type="text" name="userId" id="userId" value="${ cookie.saveId.value }" maxlength="15" placeholder="아이디를 정확하게 입력하세요." required><br>
                              </p>
                              <p class="pw01">
                                <label for="login_pwd">비밀번호 </label>
                                <input type="password" name="userPwd" placeholder="영문+숫자+특수문자 조합8~16자리를 입력해주세요."
                                  maxlength="16" id="userPwd" name="userPwd" required><br>
                              </p>
                              <c:choose>
                              <c:when test="${ not empty cookie.saveId }">
                                <span class="input_btn checkbox">
                      <input type="checkbox" name="saveId" id="saveId" value="Y" checked>
                      <label for="saveId">아이디 저장</label>
                    </span>
                              </c:when>
                              <c:otherwise>
                                <span class="input_btn checkbox">
                      <input type="checkbox" name="saveId" id="saveId" value="Y">
                      <label for="saveId">아이디 저장</label>
                    </span>
                              </c:otherwise>
                              </c:choose>
                              
                            </div>
                            <div class="btn_group">
                              <button type="submit" class="btn_log" onclick="location.href='/';">로그인</button>
                              <ul class="click1">
                                <li>
                                  <a href="findIdForm.me">아이디 찾기</a> | 
                                </li>
                                <li>
                                  <a href="findPwdForm.me">비밀번호 찾기</a>
                                </li>
                              </ul>
                            </div>
                          </form>
                        </div>
                    </div>
                    <div class="otherArea">
                      <hr class="first_hr1" />
                      <div id="groupWrapper2">
                        <div class="notLogin">
                          <label>아직 회원이 아니신가요?</label>
                        </div>
                        <div>
                          <button type="button" class="btn_enroll" onclick="location.href='enrollForm.me';">회원가입 하러가기</button>
                        </div>

                      </div>
                      <hr class="first_hr1" />
                    </div>

                  </div>
                  <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                </div>
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>

    </div>
  </div>
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

</body>
</html>