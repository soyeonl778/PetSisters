<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/review.css">
<script src="/resources/js/careJournalEnrollForm.js"></script>
<title>후기 작성</title>
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
                <h1 align="center">후기 작성</h1>
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <div class="reviewFormContainer">
                  <div class="formWrapper">
                  <form action="reviewEnrollForm" method="post" enctype="multipart/form-data">
                    <div class="reservationInfo">예약정보</div>
                      <div class="reviewerInfo">
                        <div class="textAreaTit">
                          <div class="titPt">펫시터</div>
                          <div class="titDesc">김다은</div>
                        </div>
                        <div class="textAreaTit">
                          <div class="titPt">체크인</div>
                          <div class="titDesc">2023-05-19</div>
                        </div>
                        <div class="textAreaTit3">
                          <div class="titPt">체크아웃</div>
                          <div class="titDesc">2023-05-22</div>
                        </div>
                      </div>
                      <div class="reservationInfo2">후기 내용 작성</div>



                    <table align="center">
                      <tr>
                        <td colspan="2">
                        <textarea id="content" class="form-control" rows="18" style="resize:none;" name="reviewContent" required></textarea>
                        </td>
                      </tr>
                    </table>
                    <div class="fileSection preview">
                      <label for="">첨부파일 : </label>
                      <input type="file" name="reviewFiles" id="btnAtt" multiple="multiple">
                      <div id="att_zone" data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
                    </div>
                    <br>

                    <div align="center" class="formBtn">
                      <button type="submit" class="btn btn-primary">등록하기</button>
                      <button type="reset" class="btn btn-danger">취소하기</button>
                    </div>

                  </form>
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