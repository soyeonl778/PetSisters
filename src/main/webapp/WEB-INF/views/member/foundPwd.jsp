<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>                                                            
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>                                                           
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>                                                                                                                    
var path = "${pageContext.request.contextPath }";                                                                           
                                                                                            
$(document).ready(function() {                                                                                            
                                                                                            
});                                                                                                                       
                                                                                            
</script>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  
  <!-- header css -->
  <link rel="stylesheet" href="/resources/css/member/foundPwd.css">
  <link rel="stylesheet" href="/resources/css/common/memberForm.css">
  <jsp:include page="../common/common.jsp" />

  <title>비밀번호찾기</title>
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
                  <div class="sub1">
                    <div class="title1">
                      <h1>아이디/비밀번호 찾기</h1>
                    </div>
                    <div class="title2">
                      <h7>회원가입 시 등록하신 정보로 아이디 및 비밀번호를 확인하실 수 있습니다.</h7>
                    </div>
                  </div>
                  <div class="sub2">
                    <div class="btn_id1">
                      <button type="button" class="btn_id2" onclick="location.href='findIdForm.me';">아이디 찾기</button>
                    </div>
                    <div class="btn_pwd1">
                      <button type="button" class="btn_pwd2" onclick="location.href='findPwdForm.me';">비밀번호 찾기</button>
                    </div>
                  </div>
                  <div class="sub3">
                    <div class="checkWrapper">
                      <h3 style="text-align: center;">비밀번호 찾기 결과 입니다.</h3> <br><br>
                      	<c:choose>
                      		<c:when test="${empty m}">
		                      <p class="false" style="text-align: center; font-size: 20px; font-weight: 900;">
		                      	조회된 결과가 없습니다.
		                      </p>                      			
                      		  <div class="btn_mainCheck">
			                    <button type="reset" class="btn_check" onclick="location.href='findPwdForm.me';">뒤로가기</button>
			                  </div>
                      		</c:when>
                      		<c:otherwise>
		                      <p class="true" style="text-align: center; font-size: 20px; font-weight: 900;">
		                        	회원님의 이메일로 임시 비밀번호를 발송해드렸습니다.	
		                      </p>
		                      <div class="btn_mainCheck">
		                        <button type="submit" class="btn_check" onclick="location.href='loginForm.me';">로그인 하러가기</button>
		                      </div>
                      		</c:otherwise>
                      	</c:choose>
                      
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