<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/reservationEnrollForm.css">
<title>예약 내용 작성</title>
</head>
<body>
<jsp:include page="../common/header.jsp" />	

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
                <div>
				  <form action="/pay" method="post">
                  <div class="bodyContainer">
                    <h1>예약 신청</h1>
                    <!-- 박스 내부 -->
                    <div class="infoSec">
                    
                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">신청일</div>
                          <div class="onedesc">2023-06-01</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">체크인 / 체크아웃</div>
                          <div class="onedesc">2023-06-02 / 2023-06-10</div>
                        </div>
                      </div>

                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">펫시터명</div>
                          <div class="onedesc">
                          	이주흔
                          	<span>서울 구로구 신도림동</span>
                          </div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">맡기실 반려견 수</div>
                          <div class="onedesc">1마리</div>
                        </div>
                      </div>

                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">요청사항</div>
                          <div class="onedesc">살이 쪄서 간식은 조금만 주세요 감사합니다!</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">결제 금액</div>
                          <div class="onedesc"><fmt:formatNumber value="550000" pattern="#,###,###"/>원</div>
                        </div>
                      </div>

                    </div>
                  </div>
                  <!-- 박스 내부 -->
                  <div align="center" class="formBtn">
                    <button type="button" onclick="orderPay();" class="btn btn-info btn-lg">결제하기</button>
                  </div>
				 </form>
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

<jsp:include page="../common/footer.jsp" />
<script>
	function orderPay() {
		// 결제 정보 설정
		  let payNo = 12345; // 결제번호
		  let payDate = new Date(); // 결제일시
		  let payDesc = "결제내용"; // 결제내용
		  let payPrice = 50000; // 결제금액
		  let status = "결제완료"; // 결제상태
		  let refResno = 98765; // 참조예약번호 (예약테이블)
	  
		//임의의 고유한 주문 번호 생성
		const orderNumber = Date.now().toString() + Math.random().toString(36).substr(2, 9);
		
		// 임의의 고유한 사용자 번호 생성
		const userNumber = 'user' + Math.random().toString(36).substr(2, 9);
		
		// 카카오페이 API 호출
		Kakao.init('a24cd6e1a1347f08eb3922c727b12aea');
		let cancel_url = "../common/errorPage.jsp";
		let fail_url = "../common/errorPage.jsp";
		Kakao.API.request({
		  url: '/v1/payment/ready',
		  data: {
		    cid: 'TC0ONETIME',
		    partner_order_id: orderNumber,
		    partner_user_id: userNumber,
		    item_name: itemList9, // 결제창에서 보여질 상품명
		    quantity: 1,
		    total_amount: countMoney9, // 결제할 총 금액
		    tax_free_amount: 0,
		    approval_url: '/paySuccess',
		    cancel_url: '취소_리다이렉트_URL',
		    fail_url: '실패_리다이렉트_URL',
		  },
		  success: function (response) {
		  	// 카카오페이 결제창 열기
		    window.open(response.next_redirect_pc_url);
		  },
		  fail: function (error) {
		    console.log(error);
		  },
		});
	}
	
	function insertOrder(orderId) {
		  // 결제 정보 저장 및 처리 로직
		  let payNo = 12345; // 결제번호
		  let payDate = new Date(); // 결제일시
		  let payDesc = "결제내용"; // 결제내용
		  let payPrice = 50000; // 결제금액
		  let status = "결제완료"; // 결제상태
		  let refResno = 98765; // 참조예약번호 (예약테이블)
		  
		  // 결제 정보를 서버로 전송
		  $.ajax({
		    url: "/savePayment", // 저장 및 처리 로직이 구현된 서버 API의 엔드포인트
		    type: "post",
		    data: {
		      payNo: payNo,
		      payDate: payDate,
		      payDesc: payDesc,
		      payPrice: payPrice,
		      status: status,
		      refResno: refResno
		    },
		    success: function(res) {
		      // 결제 정보 저장 및 처리 성공 시 동작
		      console.log("결제 정보 저장 및 처리 성공");
		      location.href = "/paySuccess";
		    },
		    error: function(err) {
		      // 결제 정보 저장 및 처리 실패 시 동작
		      console.log("결제 정보 저장 및 처리 실패");
		      console.log(err);
		      // 추가로 필요한 동작이 있다면 이곳에 작성
		    }
		 });
	}
</script>

</body>
</html>