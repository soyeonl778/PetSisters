<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/member/supportInfo.css">
<jsp:include page="../common/common.jsp" />
<title>펫시스터즈</title>
</head>
<body>

    <div id="main">
    	
    <jsp:include page="../common/header.jsp" />	
    
    
    
    <!-- 본문 시작 -->

    <main class="supportInfoArea">
      <section class="introductionSection">
        <div class="videoArea">
          <video loop="" muted="" autoplay="" playsinline="" webkit-playsinline="true" 
          style="display:flex;object-fit:cover;width:100%;height:770px;z-index:10">
          <source type="video/mp4" src="/resources/video/introductionVideo.mp4"></video>
        </div>
        <div class="adArea">
          <div class="mainSentence">
            가정집 펫시터 업계 1위, <br>
            펫시스터즈와 함께해요 <br>
          </div>
          <div class="subSentence">
            우리집에서 사랑스러운 강아지를 돌보며 수익을 벌어요 <br>
            혼자 남겨진 반려동물에게 행복한 시간을 선물해볼까요? <br>
          </div>
          <a class="support" href="supportForm.me" onclick="return checkLogin();">
            <p>지원하기</p>
          </a>
        </div>
      </section>
      <section class="processSection">
        <div class="processContentArea">
          <p style="color: rgb(77, 80, 85); font-size: 35px; font-weight: 600;
          letter-spacing: -0.3px; line-height: 37px; padding: 0; margin: 0;">
          펫시스터즈 펫시터는 이렇게 활동해요!</p>
          <div><img alt="" src="/resources/img/member/1-2-3.png" style="width: 762px;  margin-top: 50px;"></div>
          <div style="display: flex; flex-direction: row;">
            <div style="width: 364px;">
              <p style="margin-top: 50px;  font-size: 25px; 
              letter-spacing: 0.2px; line-height: 31px; ">예약 수락</p>
              <p style="margin-top: 24px;  font-size: 17px; 
              line-height: 30px; letter-spacing: 0.2px;">
              내 예약관리에서 간편하게<br>
              가능한 날짜의 예약을 수락해보세요.</p>
            </div>
            <div style="width: 364px;">
              <p style="margin-top: 50px;  font-size: 25px; 
              letter-spacing: 0.2px; line-height: 31px; ">돌봄 및 일지쓰기</p>
              <p style="margin-top: 24px;  font-size: 17px; 
              line-height: 30px; letter-spacing: 0.2px;">
              우리 집에서 반려동물을 돌보며,<br>
              시간별로 돌봄 일지를 작성합니다.</p>
            </div>
            <div>
              <p style="margin-top: 50px; 
              font-size: 25px; letter-spacing: 0.2px; line-height: 31px; 
              ">정산 받기</p>
              <p style="margin-top: 24px;  font-size: 17px; 
              line-height: 30px; letter-spacing: 0.2px;">
              수익을 실시간으로 확인하고<br>
              주 단위로 정산을 받아보세요!</p>
            </div>
          </div>
        </div>
      </section>
      <section style="width: 100%; height: 1030px; display: flex; flex-direction: column; 
      justify-content: center; align-items: center;">
        <div style="width: 1020px; margin: 0px auto; display: flex; flex-direction: row; 
        justify-content: space-between;">
          <div style="width: 273px; align-items: center; border-bottom: 1px solid rgb(231, 231, 240); 
          padding-bottom: 70px;">
            <img alt="" src="/resources/img/member/편안한근무환경.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">편안한 근무 환경</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">편안한 우리 집에서 사랑스러운<br>강아지들과 행복한 시간을 보낼 수 있어요.</p>
          </div>
          <div style="width: 273px; align-items: center; border-bottom: 1px solid rgb(231, 231, 240); 
          padding-bottom: 70px;">
            <img alt="" src="/resources/img/member/자유로운업무시간.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">자유로운 업무 시간</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">자유로운 휴무일 관리로 여가생활을<br>즐기며 원하는 날에만 일할 수 있어요.</p>
          </div>
          <div style="width: 273px; align-items: center; border-bottom: 1px solid rgb(231, 231, 240); 
          padding-bottom: 70px;">
            <img alt="" src="/resources/img/member/월평균100만원수익.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">월 평균 100만원 수익</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">하루 평균 50,000원으로 한 달 20일<br>돌봄 진행 시 100만원의 수익이 발생해요.</p>
          </div>
        </div>
        <div style="width: 1020px; margin: 70px auto 0px; display: flex; flex-direction: row; 
        justify-content: space-between;">
          <div style="width: 273px; align-items: center;">
            <img alt="" src="/resources/img/member/펫시터헬프시스템.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">펫시터 헬프 시스템</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">소속 훈련사가 항시 대기하여, 펫시팅 교육<br>
            및 위험 상황 발생 시 언제든 상담해드려요.</p>
          </div>
          <div style="width: 273px; align-items: center;">
            <img alt="" src="/resources/img/member/가입비월회비무료.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">가입비, 월회비 무료</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">펫시스터즈는 별도의 활동 비용을 받지 않습니다.<br>
            금액 부담 없이 펫시스터즈에서 활동해 보세요.</p>
          </div>
          <div style="width: 273px; align-items: center;">
            <img alt="" src="/resources/img/member/국내유일펫시터보험.png" style="height: 120px; 
            display: block; margin-left: -15px;">
            <p style="margin-top: 21px; color: rgb(77, 80, 85); font-size: 25px; line-height: 30px; 
            letter-spacing: -0.3px; font-weight: 500;">국내 유일 펫시터 보험</p>
            <p style="color: rgb(77, 80, 85); font-size: 17px; line-height: 30px; margin-top: 45px; 
            width: max-content;">펫시터님 상해에 병원 진료비 최대 1회 10만원,<br>
            반려동물 상해에 최대 100만원을 지원합니다.</p>
            <p style="margin-top: 27px; font-size: 15px; color: rgb(153, 157, 167);">
              펫시터님 귀책 사유일 경우 보험 지원 불가</p>
          </div>
        </div>
      </section>

    </main>
    
    <!-- 로그인 검사 후 지원폼 포워딩 (인터셉터 등록 후 주석처리 예정) -->
    <c:set var="isLoggedIn" value="${not empty loginUser}" scope="request" />
    	<script>
    	  var isLoggedIn = <c:out value="${isLoggedIn}" />;
    	  
    	  function checkLogin() {
    	    if (!isLoggedIn) {
    	      // 만약 로그인되지 않은 상태라면 경고 알림창을 띄우고 접근을 차단합니다.
    	      alert("로그인이 필요합니다.");
    	      return false;
    	    }

    	    // 로그인된 상태라면 정상적으로 페이지로 이동합니다.
    	    return true;
    	  }
		</script>

    <!-- 본문 끝 -->
    
    
    
    <jsp:include page="../common/footer.jsp" />
  </div>
  
</body>
</html>