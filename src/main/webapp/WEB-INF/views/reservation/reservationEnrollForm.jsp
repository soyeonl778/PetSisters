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
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<link rel="stylesheet" href="/resources/css/reservation/reservationEnrollForm.css">
<title>예약 신청</title>
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
                    <input type="hidden" name="userNo" value="${loginUser.userNo}">
                    <input type="hidden" name="revNo" class="revNo" value="${revNo}">
                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">돌봄 시작일</div>
                          <div class="onedesc date1">${startRevDate}</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">돌봄 종료일</div>
                          <div class="onedesc date2">${endRevDate}</div>
                        </div>
                      </div>
                      
                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">신청일</div>
                          <c:set var="ymd" value="<%=new java.util.Date()%>" />
                          <div class="onedesc payDate"><fmt:formatDate value="${ymd}" pattern="yyyy/MM/dd" /></div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">결제 금액</div>
                          <div class="onedesc payPrice">
                          <input type="hidden" class="totalPays" value="${totalPays}">
                            <fmt:formatNumber value="${totalPays}" pattern="#,###,###"/>원
                          </div>
                        </div>
                      </div>
	
                      <div class="gridSec">
                      	<div class="requestSec">
                          <div class="requestTit">요청사항</div>
                          <div class="requestDesc request">${reqMsg}</div>
                      	</div>
                      </div>

                    </div>
                  </div>
                  <!-- 박스 내부 -->
                  <div align="center" class="formBtn">
                    <button type="button" class="btn btn-secondary btn-lg" onclick="history.go(-1)">뒤로가기</button>
                    <button type="button" onclick="orderPay();" class="btn btn-success btn-lg">결제하기</button>
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
function orderPay(){
	let payDate = $('.payDate').text();
	let payDesc = $('.request').text()
	let payPrice = $('.payPrice').text();
	let checkIn = $('.date1').text();
	let checkOut = $('.date2').text();
	
	IMP.init('imp68338217');
	IMP.request_pay({
	    pg : 'kakao',
	    pay_method : 'card',
	    merchant_uid : 'merchant_' + new Date().getTime(),
	    
	    name : '펫시스터즈', //결제창에서 보여질 이름
	    amount : payPrice, //실제 결제되는 가격
	    
	    desc : payDesc,
	    checkIn : checkIn,
	    checkOut : checkOut
	    
	}, function(rsp) {
		console.log('rsp', rsp);
	    if ( rsp.success ) {
	    	console.log(rsp.imp_uid);
	    	insertOrder(rsp.imp_uid);
	    	
	    } else {
	    	 var msg = '결제에 실패하였습니다.';
	         msg += '에러내용 : ' + rsp.error_msg;
	    }
	    
	});
}
	
	function insertOrder(orderId) {
		// 결제 정보 저장 및 처리 로직
		alert('결제가 완료되었습니다!');
		let payDesc = $('.request').text()
		let payPrices = $('.totalPays').val();
		let payPrice = Number(payPrices);
		let resNo = $('.revNo').val();
		  
		// 결제 정보를 서버로 전송
		$.ajax({
		  url: "insertPay", // 저장 및 처리 로직이 구현된 서버 API의 엔드포인트
		  type: "post",
		  data: {
			payDesc: payDesc,
			payPrice: payPrice,
			resNo: resNo
		  },
		  success: function(res) {
		    // 결제 정보 저장 및 처리 성공 시 동작
		    location.href="list.pe";
		  },
		  error: function(err) {
		    // 결제 정보 저장 및 처리 실패 시 동작
		    console.log("결제 정보 저장 및 처리 실패");
		  }
		});
	}
</script>

</body>
</html>