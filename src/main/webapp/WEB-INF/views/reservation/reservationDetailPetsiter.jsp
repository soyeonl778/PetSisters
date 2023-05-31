<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

                  <div class="bodyContainer">

                    <h1>예약 상세 조회</h1>

                    <div class="infoSec">
                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">예약번호</div>
                          <div class="oneNo">61875</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">예약상태</div>
                          <div class="oneNo">예약종료</div>
                        </div>
                      </div>

                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">예약일시</div>
                          <div class="onedesc">2023-05-01/2023-05-10</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">신청일</div>
                          <div class="onedesc">2023-04-28</div>
                        </div>
                      </div>

                      <div class="gridSec">
                        <div class="oneSec">
                          <div class="onTit">예약자명</div>
                          <div class="onedesc">조승호</div>
                        </div>
                        <div class="oneSec">
                          <div class="onTit">총 금액</div>
                          <div class="onedesc">400,000원</div>
                        </div>
                      </div>

                      <div class="requestThing">요청 사항</div>
                      <div class="oneTextArea">
                        <textarea class="resTextArea" name="" id="">There is a house way down in New Orleans They call the Rising Sun And it's been the ruin of many a poor boy And God I know I'm one Mother was a tailor, yeah, yeah
                        Sewed my Levi jeans My father was a gamblin' man, yeah, yeah Down, way down in New Orleans
                        Now the only thing a gamblin' man ever needs Is a suitcase, Lord, and a trunk And the only time a fool like him is satisfied Is when he's all stone cold drunk</textarea>
                      </div>

                    </div>
                  </div>

                  <div align="center" class="formBtn">
                    <button type="button" onclick="history.back()" class="btn btn-info btn-lg">뒤로가기</button>
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

<jsp:include page="../common/footer.jsp" />
</body>
</html>