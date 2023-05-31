<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/enrollForm.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />

  <title>회원가입</title>
</head>
<body>
  <!-- 헤더 영역 시작-->
    <jsp:include page="../common/header.jsp" />	 
  <!-- 헤더 영역 끝-->

  <div id="Container-Wrapper">
    <!-- 페이지 영역 시작 -->
    <div id="container">
      <div id="main">
        <div id="content">
          <div class="page_aticle aticle_type2">

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <div id="mainContent">
                  <div class="sub1" >
                    <div class="title1">
                      <h1>회원가입</h1>
                    </div>
                    <div class="title2">
                      <h7>회원으로 가입하시면 첫고객 대상 10% 할인쿠폰을 넣어드립니다. <br>
                      지금바로 회원가입 해보세요.</h7>
                    </div>
                  </div>
                  <div class="sub2">
                    <div class="enrollWrapper">
                      <p>
                        <label for="">● 아이디 </label><br>
                        <input type="text" name="userId" maxlength="15" placeholder="아이디를 입력해주세요." required><br>
                      </p>
                      <p>
                        <label for="">● 비밀번호 </label><br>
                        <input type="text" name="userPwd1" maxlength="15" placeholder="영문+숫자+특수문자 조합 8~16자리" required><br>
                      </p>
                      <p>
                        <label for="">● 비밀번호 확인 </label><br>
                        <input type="text" name="userPwd2" maxlength="15" placeholder="정확히 기입해주세요" required><br>
                      </p>
                      <p>
                        <label for="">● 이름 </label><br>
                        <input type="text" name="userName" maxlength="15" placeholder="ex)홍길동" required><br>
                      </p>
                      <p>
                        <label for="">● 주민번호 </label><br>
                        <input type="text" name="userSsn1" maxlength="6" required> -
                        <input type="text" name="userSnn2" maxlength="7" required><br>
                      </p>
                      <p>
                        <label for="">● 휴대폰 번호 </label><br>
                        <input type="text" name="phone" maxlength="11" placeholder="(-) 제외하고 숫자  ex)01012349876" required><br>
                      </p>
                      <p>
                        <label for="">● 이메일 </label><br>
                        <input type="email" name="email" maxlength="30" placeholder="@ 까지 정확한 이메일 형식을 입력해주세요." required><br>
                      </p>
                      <p>
                        <label for="">● 거주지 주소 </label><br>
                        <input type="text" name="address" maxlength="30" placeholder="상세 주소를 입력해주세요." required><br>
                      </p>
                      <span class="input_btn checkbox">
                        <label>● 성별</label><br>
                        <input type="checkbox" name="gender1" id="gender1" value="Y"> 남
                        <input type="checkbox" name="gender2" id="gender2" value="Y"> 여 <br>
                      </span>
                      <span class="input_btn checkbox">
                        <input type="checkbox" name="checkbox" id="checkEmail" value="Y">
                        <label>이메일수신동의 여부(선택)</label>
                      </span>
                    </div>
                    <div class="btnWrapper">
                      <button type="button" class="btn_back">뒤로가기</button>
                      <button type="button" class="btn_submit">확인</button>
                    </div>
                  </div>
                </div>
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
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