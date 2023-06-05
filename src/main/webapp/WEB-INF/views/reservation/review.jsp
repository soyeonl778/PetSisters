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
                  
                  <form action="reviewInsert" method="post" enctype="multipart/form-data">
                    <div class="reservationInfo">예약정보</div>
                      <div class="reviewerInfo">
                        <div class="textAreaTit">
                          <div class="titPt">펫시터</div>
                          <div class="titDesc">${ loginUser.userName }</div>
                        </div>
                        <div class="textAreaTit">
                          <div class="titPt">체크인</div>
                          <div class="titDesc">${ rev.startDate }</div>
                        </div>
                        <div class="textAreaTit3">
                          <div class="titPt">체크아웃</div>
                          <div class="titDesc">${ rev.endDate }</div>
                        </div>
                      </div>
                      
                      <div class="reservationInfo2">후기 제목</div>
                      <div class="inputWrap">
                     	 <input class="inputTitText" type="text" name="revTitle" required>
                      </div>
                      <div class="reservationInfo2">후기 내용 작성</div>

                    <table align="center">
                      <tr>
                        <td colspan="2">
                         <textarea id="content" class="form-control" rows="18" style="resize:none;" name="revContent" required></textarea>
                        </td>
                      </tr>
                      <tr class="anotherTr">
                        <th width="8%"><label for="upfile">첨부파일 :</label></th>
                        <td><input type="file" id="upfile" class="form-control-file border" name="upfile" multiple="multiple"></td>
                      </tr>
                    </table>
                    <br>

                    <div align="center" class="formBtn">
                      <input type="hidden" name="rNo" value="${ rev.resNo }">
                      <button type="submit" class="btn btn-primary">등록하기</button>
                      <button type="reset" class="btn btn-danger" onclick="history.back()">취소하기</button>
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