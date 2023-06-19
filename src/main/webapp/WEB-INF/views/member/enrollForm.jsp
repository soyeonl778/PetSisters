<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/enrollForm.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <!-- 폰트어썸 아이콘 적용 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
            <div class="enrollFormArea">
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
                    <form action="insert.me" method="post" id="enrollForm">
                    <div class="sub2">
                    <div class="enrollWrapper">
                        <div class="idArea">
                          <div>
                            <label for="userId">● 아이디 (영문/소문자 6~16자) </label><br>
                          </div>
                            <div class="id_check2">
                            <input type="text" id="userId" name="userId" maxlength="15" placeholder="아이디를 입력해주세요." style="width:230px" required>
                            <div id="checkResult" style="font-size : 0.8em; display : none"></div>
                            </div>
                        </div>
                        <p>
                          <label for="userPwd">● 비밀번호 </label><br>
                          <input type="password" name="userPwd" id="userPwd" maxlength="15" placeholder="영문+숫자+특수문자 조합 8~16자리" style="width:300px" required><br>
                        </p>
                        <div class="checkPwdArea">
                          <div>
                            <label for="checkPwd">● 비밀번호 확인 </label><br>
                          </div>
                          <div class="pwd_check2">
                            <input type="password" name="checkPwd" id="checkPwd" maxlength="15" placeholder="정확히 기입해주세요." style="width:300px" onkeyup="passConfirm()" required>
                            <div id="confirmMsg" style="font-size : 0.8em; display : block"></div>
                          </div>
                        </div>
                        <p>
                          <label for="userName">● 이름 </label><br>
                          <input type="text" name="userName" maxlength="15" placeholder="ex)홍길동" required><br>
                        </p>
                        <p>
                          <label for="userNickname">● 닉네임 </label><br>
                          <input type="text" name="userNickname" maxlength="15" placeholder="ex)나는야 꽃미남" required><br>
                        </p>
                        <p>
                          <label for="userSsn">● 생년월일 </label><br>
                          <input type="text" name="userSsn" maxlength="6" placeholder="ex)990101" required> <br>
                        </p>
                        <p>
                          <label for="phone">● 휴대폰 번호 </label><br>
                          <input type="text" name="phone" maxlength="11" placeholder="(-) 제외하고 숫자  ex)01012349876" style="width:300px" required><br>
                        </p>
                        <p>
                          <label for="email">● 이메일 </label><br>
                          <input type="email" name="email" maxlength="30" placeholder="@ 까지 정확한 이메일 형식을 입력해주세요." style="width:350px" required><br>
                        </p>
                        <div class="kakaoAddress">
                          <div>
                            <label for="address">● 거주지 주소 </label>
                          </div>
                          <div class="address_search">
                            <input type="text" id="address_input" name="address" maxlength="30" placeholder="주소 입력" required><br>
                            <i id="address_kakao" class="fas fa-search-location fa-lg" style="color: #ffffff;"><b>주소검색</b></i>
                          </div>
                        </div>
                        <p>
                          <div class="genderMain">
                            <label>● 성별</label><br>
                          </div>
                          <div class="radio_gender">
                            <input type="radio" id="Male" value="M" name="gender"> <b>남</b>
                            <input type="radio" id="Female" value="F" name="gender"> <b>여</b> <br>
                          </div>
                        </p>
                        <div class="input_btn">
                          <div class="check_email">
                            <input type="checkbox" name="checkbox" id="checkEmail" value="Y">
                          </div>
                          <div class="check_agree"></div>
                            <label>이메일수신동의 여부(선택)</label>
                          </div>
                        </div>
                      </div>
                      <div class="btnWrapper">
                        <button type="reset" class="btn_reset">재입력</button>
                        <button type="submit" class="btn_submit" disabled>회원가입</button>
                      </div>
                    </form>
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
    
    	<script>
        // 비밀번호 일치
        function passConfirm() {
          
          var userPwd = document.getElementById('userPwd');
          var checkPwd = document.getElementById('checkPwd');
          var confirmMsg = document.getElementById('confirmMsg');
          var correctColor = "#2B8D0B";
          var wrongColor = "#992A2A";
          
          if(checkPwd.value === "") {
            confirmMsg.innerHTML = "";
          } else if(userPwd.value == checkPwd.value) {
            confirmMsg.style.color = correctColor;
            confirmMsg.innerHTML = "비밀번호 일치";
          } else {
            confirmMsg.style.color = wrongColor;
            confirmMsg.innerHTML = "비밀번호 불일치";
          }
        }

        $(document).ready(function() {
        
            // 아이디 중복체크 & 아이디 정규식 검사
            $(function() {
              
              // 아이디를 입력받을 수 있는 input 요소 객체 자체를 변수에 담아두기
              const $idInput = $("#enrollForm input[name=userId]");
              
              $idInput.keyup(function() {
                
                // 우선 최소 5글자 이상으로 입력되어 있을 경우에만 ajax 를 요청해서 중복체크 하기
                if($idInput.val().length >= 6 && /^(?=.*[a-z])(?=.*\d)[a-z\d]{6,16}$/i.test($idInput.val())) {
                  
                  // 아이디 중복체크 요청 보내기
                  $.ajax({
                url : "idCheck.me",
                data : {checkId : $idInput.val()},
                type : "get",
                success : function(result) {
                  
                  if(result == "NNNNN") { // 사용 불가능
                    console.log("사용불가능");
                    // 빨간색 메시지로 (사용불가능함) 출력
                    $("#checkResult").show();
                    $("#checkResult").css("color", "gray").text("중복된 아이디가 존재합니다. 다시 입력해주세요.");
                    
                    // 버튼 비활성
                    $("#enrollForm button[type=submit]").attr("disabled", true);
                    
                  } else { // 사용가능
                    console.log("사용가능");
                    // 초록색 메세지로 (사용가능함) 출력
                    $("#checkResult").show();
                    $("#checkResult").css("color", "green").text("사용 가능한 아이디 입니다!");
                    
                    // 버튼 활성화
                    $("#enrollForm button[type=submit]").attr("disabled", false);
                  }
                },
                error : function() {
                  console.log("아이디 중복 체크용 ajax 통신 실패!");
                }
                  });
                  
                } else { // 5글자 미만일 경우 => 버튼 비활성화, 메세지 숨기기
                  
                  $("#checkResult").hide();
                  $("#enrollForm button[type=submit]").attr("disabled", true);
                }
              });
            });
            
            

            
            
            // 주소 검색용
            $('#address_kakao').click(function() {
              
              new daum.Postcode({
              oncomplete: function(data) {
                document.getElementById("address_input").value = data.address; // 주소 넣기
                    // document.querySelector("input[name=address_detail]").focus(); //상세입력 포커싱
              }
          }).open();
              
            });
            
            
            // 신규 추가 영역
            
            
        });
      </script>
    	
        
  </div>
  <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" /> 
  <!-- Footer 영역 끝 -->

</body>
</html>