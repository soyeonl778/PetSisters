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
                    <button type="button" onclick="orderPay();" class="btn btn-info btn-lg">카카오페이로 결제하기</button>
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
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
	//결제기능
	function orderPay(){
		let payPrice = $('.pays').text();				// 총 금액
		let itemList9 = $('.package').text()			// 아이템 목록
		let userName9 = $('.join').text()				// 회원 이름
		let orderAddress9 = $('.totalprice').text();	// 배송지 주소
		
		IMP.init('imp68338217');
		IMP.request_pay({
		    pg : 'kakao',
		    pay_method : 'card',
		    merchant_uid : 'merchant_' + new Date().getTime(),
		    name : itemList9 , //결제창에서 보여질 이름
		    amount : payPrice, //실제 결제되는 가격
		    buyer_email : 'test888@test.do',
		    buyer_name : userName9,
		    buyer_tel : '010-1234-5678',
		    buyer_addr : orderAddress9,
		    buyer_postcode : '123-456'
		}, function(rsp) {
			// console.log(rsp);
		    if ( rsp.success ) {
		    	var msg = '결제가 완료되었습니다.';
		    	insertOrder(rsp.imp_uid);
		        // location.href = '/orderComplete';
		    } else {
		    	 var msg = '결제에 실패하였습니다.';
		         msg += '에러내용 : ' + rsp.error_msg;
		    }
		    alert(msg);
		});
	}
</script>
<script>
	function insertOrder(orderUid) {
		$.ajax({
			
			url: "insertOrder",
			type: "post",
			data: {
				totalPay: parseInt($('.countMoney').text()),
				orderUid: orderUid
			},
			success: function(res) {
				insertItemList();
			},
			error: function(err) {
				console.log(err);
			}
		})
	}
</script>
</body>
</html>