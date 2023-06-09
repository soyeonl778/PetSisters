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
<link rel="stylesheet" href="/resources/css/reservation/reservationDetailPetsiter.css">
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
				  <form action="" method="post">
                  <div class="bodyContainer">

                    <h1>예약 상세 조회</h1>

                    <div class="infoSec">
                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">예약번호</div>
                          <div class="oneNo">${ r.resNo }</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">예약상태</div>
                          
                          <c:if test="${ r.status == 'N' }">
                          <div class="oneNo">예약종료</div>
                          </c:if>
                          <c:if test="${ r.status == 'Y' }">
                          <div class="oneNo">예약진행중</div>
                          </c:if>
                        </div>
                      </div>

                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">예약일시</div>
                          <div class="onedesc">${ r.startDate } / ${ r.endDate }</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">신청일</div>
                          <div class="onedesc">${ r.registerDate.substring(0, 10) }</div>
                        </div>
                      </div>

                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">예약자명</div>
                          <div class="onedesc">${ r.userName }</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">총 금액</div>
                          <div class="onedesc"><fmt:formatNumber value="${r.payPrice}" pattern="#,###,###"/>원</div>
                        </div>
                      </div>

                      <div class="requestThing">요청 사항</div>
                      <div class="oneTextArea">
                        <textarea class="resTextArea" name="" id="">${ r.content }</textarea>
                      </div>

                    </div>
                  </div>

                  <div align="center" class="formBtn">
                    <button id="careBtn" class="btn btn-success btn-lg">돌봄일지 작성</button>
                    <button type="button" onclick="history.back()" class="btn btn-info btn-lg">뒤로가기</button>
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
</body>
</html>