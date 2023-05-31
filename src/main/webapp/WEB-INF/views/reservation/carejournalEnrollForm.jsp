<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/careJournalEnrollForm.css">
<script src="/resources/js/careJournalEnrollForm.js"></script>
<title>돌봄일지 작성</title>
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
                  <h1 class="hTitle" align="center">돌봄 일지 작성</h1>
                  <form id="imForm" action="" method="" enctype="multipart/form-data">
                    <div>
                      <div class="titleSection">
                        <div class="titleText">제목</div>
                        <input type="text" name="" id="" placeholder="제목을 입력해주세요" required>
                      </div>
                      <div class="descSection">
                        <div class="titleText">내용</div>
                        <textarea name="" id="" cols="30" rows="10" placeholder="돌봄 내용을 입력해주세요" required></textarea>
                      </div>
                    </div>

                    <div class="fileSection preview">
                      <label for="">첨부파일 : </label>
                      <input type="file" name="" id="btnAtt" multiple="multiple">
                      <div id="att_zone" data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
                    </div>


                    <div align="center" class="formBtn">
                      <button type="submit" class="btn btn-primary">등록하기</button>
                      <button type="button" onclick="history.back()" class="btn btn-info">뒤로가기</button>
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