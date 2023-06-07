<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/inquiry/inquiryEnrollForm.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />
  
  <script src="/resources/js/inquiryEnrollForm.js"></script>
  
  <title>1:1 문의 작성</title>
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
            <!-- 사이드 메뉴바 -->
            <div id="snb" class="snb_my" style="position: absolute;">
              <img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
              <h2 class="tit_snb">고객센터</h2>
              <div class="inner_sub">
                <ul class="list_menu">
                  <li>
                    <a href="list.no">공지사항</a>
                  </li>
                  <li>
                    <a href="/showFaq">자주하는 질문</a>
                  </li>
                  <li class="on">
                    <a href="list.in">1:1 문의</a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="title">
                  <h2>1:1 문의</h2>
                  <hr/>
                </div>

                <br/>
                
                <div class="inquiryEnrollForm">
                  <form action="insert.in" method="post" enctype="multipart/form-data">
                    <table id="inquiryEnrollForm" style="text-align: center;">
                        <tr>
                            <th>제목*</th>
                            <td><input type="text" class="inquiry" name="inquiryTitle" placeholder="제목" required></td>
                        </tr>
                        <tr>
                            <th>내용*</th>
                            <td>
                                <textarea class="inquiry inquiryContent" name="inquiryContent" placeholder="내용을 입력해주세요." required></textarea>
                            </td>
                        </tr>
                        <tr>
                          <th>첨부파일</th>
                          <td>
                            <div class="fileSection preview" style="text-align: left;">
                              <input type="file" name="" id="btnAtt" multiple="multiple">
                            <div id="att_zone" data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
                            <span>
                              · 30MB 이하의 이미지만 업로드 가능합니다. <br/>
                              · 문의와 무관한 내용이거나 음란 및 불법적인 내용은 통보없이 삭제 될 수 있습니다. <br/>
                            </span>
                            </div>
                          </td>
                        </tr>
                    </table>
                    <br/>
	                <div align="center">
	                  <button type="submit" class="btn btn-primary">등록하기</button>
	                  <button type="button" onclick="history.back();" class="btn btn-outline-primary">뒤로가기</button>
	                </div>
                  </form>
                </div>
                
                
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
  
    <script>
        $('#target_img').click(function (e) {
            document.signform.target_url.value = document.getElementById( 'target_img' ).src;
            e.preventDefault();
            $('#file').click();
        }); 
        function changeValue(obj) {
            document.signform.submit();
        }
    </script>
    <script>
	  $(function() {
	    $("#in_select").change(function() {
	      var selectedOption = $(this).val();
	      switch (selectedOption) {
	        case "order":
	          $("label[for='in_select']").text("주문/결제문의");
	          break;
	        case "coupon":
	          $("label[for='in_select']").text("이벤트/쿠폰문의");
	          break;
	        case "reserved":
	          $("label[for='in_select']").text("예약문의");
	          break;
	        case "service":
	          $("label[for='in_select']").text("서비스문의");
	          break;
	        case "etc":
	          $("label[for='in_select']").text("기타문의");
	          break;
	        default:
	          $("label[for='in_select']").text("문의유형을 선택해주세요");
	      }
	    });
	  });
	</script>
</body>
</html>