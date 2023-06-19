<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterForm.css">
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterProfileForm.css">
  <jsp:include page="../common/common.jsp" />


  <!-- 파일 첨부 -->
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  
  <!-- datepicker 캘린더 -->
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-multidatespicker/1.6.6/jquery-ui.multidatespicker.js" integrity="sha512-shDVoXhqpazAEKzSzJQTn5mAtynJ5eIl8pNX2Ah25/GZvZWDEJ/EKiVwfu7DGo8HnIwxlbu4xPi+C0SsHWCCNw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-multidatespicker/1.6.6/jquery-ui.multidatespicker.css" integrity="sha512-VXbqGGD29gdYg6HSSzLd6+eVwBznGTrVoIqZOruvkIbuWSZNDjg/I4p2/zKGMllL5dxzj1PoNoh0dqX1dWxBsQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-multidatespicker/1.6.6/jquery-ui.multidatespicker.min.css" integrity="sha512-mIbgL1BBPonQ8vE6IE3m12DOgjnwObnVHk4C2k3S7yyrgd3ctznEDHnz4871ioTgh7QIy0imgyLeNFk+PehRSw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-ui-multidatespicker/1.6.6/jquery-ui.multidatespicker.min.js" integrity="sha512-mMP7O0G5Vv01th+kpYux7RbD89Mx/iQnIvxcKdctiPyADgJzacfQJ8k2AsB8695AAuR2uPuxk7dawb1eehjcuQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

  <!-- 폰트어썸 아이콘 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">

  <title>펫시터 프로필 수정</title>
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
                  <div class="title">
                    <h1>펫시터 프로필 수정</h1>
                  </div>
                  <br>
                  <div class="form-group">
                    <form method="post" action="update.pe" enctype="multipart/form-data">
                      <div class="profileForm-area">
                      <input type="hidden" value="${ p.petSitterNo }" name="petSitterNo">
                        <div class="form-check form-switch" id="pModeInput">
                          <c:choose>
                            <c:when test="${ p.petSitterMode eq 'Y' }">
                              <input class="form-check-input" type="checkbox" role="switch" id="petSitterMode" value="${ p.petSitterMode }" name="petSitterMode" checked>
                            </c:when>
                            <c:otherwise>
                              <input class="form-check-input" type="checkbox" role="switch" id="petSitterMode" value="${ p.petSitterMode }" name="petSitterMode">
                            </c:otherwise>
                          </c:choose>
                          <label class="form-check-label" for="flexSwitchCheckChecked">&nbsp;펫시터 모드</label>
                        </div>
                      </div>
                      <div class="formTitle">
                        <h5>제목</h5>
                        <input type="text" id="petSitterTitle" value="${ p.petSitterTitle }" name="petSitterTitle" maxlength="100" required>
                      </div>
                      <br>
                      <div class="introduction">
                        <h5>내용</h5>
                        <textarea rows="25" id="petSitterContent" name="petSitterContent" style="resize: none;" required>${ p.petSitterContent }</textarea>
                      </div>
                      <br>
                      <div>
                        <h5>돌봄 환경</h5>
                        <div class="careList">
                          <div>
                            <input type="text" id="careList" value="${ p.careList }" name="careList" placeholder="돌봄 환경을 ','로 구분하여 입력해주세요. 예)아파트,반려동물 없음,아이 있음 등등">
                          </div>
                        </div>
                      </div>
                      <br>
                      <div id="petService">
                        <h5>이용 가능 서비스</h5><br>
                        <div class="petServiceList">
                          <table>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="pickup" value="집 앞 픽업" name="petSitterService">
                                    <img src="/resources/img/petsitter/집 앞 픽업.png">
                                  </div>
                                  <div><p>집 앞 픽업<br>비용은 펫시터와 협의</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="hair" value="모발 관리" name="petSitterService">
                                    <img src="/resources/img/petsitter/모발 관리.png">
                                  </div>
                                  <div><p>모발 관리<br>눈물 또는 빗질 관리 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="medicine" value="약물 복용" name="petSitterService">
                                    <img src="/resources/img/petsitter/약물 복용.png">
                                  </div>
                                  <div><p>약물 복용<br>경구(입) 약물 복용 가능</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="emergency" value="응급 처치" name="petSitterService">
                                    <img src="/resources/img/petsitter/응급 처치.png">
                                  </div>
                                  <div><p>응급 처치<br>응급 상황 시 병원 이동 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="bath" value="목욕 가능" name="petSitterService">
                                    <img src="/resources/img/petsitter/목욕 가능.png">
                                  </div>
                                  <div><p>목욕 가능<br>비용은 펫시터와 협의</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="walk" value="매일 산책" name="petSitterService">
                                    <img src="/resources/img/petsitter/매일 산책.png">
                                  </div>
                                  <div><p>매일 산책<br>산책 및 실외 배변 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="play" value="실내 놀이" name="petSitterService">
                                    <img src="/resources/img/petsitter/실내 놀이.png">
                                  </div>
                                  <div><p>실내 놀이<br>터그 놀이, 노즈워크 등</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="reserve" value="장기 예약" name="petSitterService">
                                    <img src="/resources/img/petsitter/장기 예약.png">
                                  </div>
                                  <div><p>장기 예약<br>14일 이상 돌봄 가능</p></div>
                                </div>
                              </td>
                            </tr>
                            <tr>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="oldDog" value="노견 케어" name="petSitterService">
                                    <img src="/resources/img/petsitter/노견 케어.png">
                                  </div>
                                  <div><p>노견 케어<br>8년 이상 노견 돌봄 가능</p></div>
                                </div>
                              </td>
                              <td>
                                <div class="petService">
                                  <div>
                                    <input type="checkbox" id="puppy" value="퍼피 케어" name="petSitterService">
                                    <img src="/resources/img/petsitter/퍼피 케어.png">
                                  </div>
                                  <div><p>퍼피 케어<br>1년 미만 퍼피 돌봄 가능</p></div>
                                </div>
                              </td>
                            </tr>
                          </table>
                        </div>
                      </div>
                      <br>
                      <div class="fileSection preview">
                        <h5>사진 첨부</h5>
                        <div id="preview">
                          <c:forEach var="psImg" items="${ psImgList }">
                            <div>
                              <div style="position: relative;">
                                <img src="${ psImg.filePath }${ psImg.changeName }"><br>
                                ${ psImg.originName }
                                <i class="close-icon fa fa-times-circle" onclick="removeImage(this.parentNode, '${ psImg.fileNo }')" aria-hidden="true"></i>
                              </div>
                            </div>
                          </c:forEach>
                        </div>
                        <ul id="addList"> 
                          <li>
                           <input type="file" id="QnA03" name="upfile" class="files">
                           <button  type="button" class="btn btn-secondary add" style="vertical-align: sub">추가</button>
                          </li> 
                        </ul>
                      </div>
                      <br>
                      <div class="dateInput">
                        <h5>예약 불가능한 날짜 선택</h5>
                        <input type="text" class="datepicker" id="impoDate" name="impoDate" placeholder="예약 불가능한 날짜">

                        <br><br>

                        <h5>예약 불가능한 날짜 취소</h5>
                        <input type="text" class="datepicker" id="deleteDate" name="delDate" placeholder="예약 불가능한 날짜">
                      </div>

                      <div align="center" class="formBtn">
                        <button type="submit" class="btn btn-primary">등록하기</button>
                        <button type="button" onclick="history.back()" class="btn btn-secondary">뒤로가기</button>
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

	<jsp:include page="../common/footer.jsp" />

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

  <script type="text/javascript">

    $(function() {

      // ------------------------ datepicker 캘린더 ------------------------
      $.datepicker.setDefaults({
        dateFormat: 'yy/mm/dd',
        prevText: '이전 달',
        nextText: '다음 달',
        monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
        dayNames: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
        dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
        showMonthAfterYear: true,
        yearSuffix: '년'
      });

      $.datepicker._selectDateOverload = $.datepicker._selectDate;
      $.datepicker._selectDate = function (id, dateStr) {
          var target = $(id);
          var inst = this._getInst(target[0]);
          if (target[0].multiDatesPicker != null) {
              inst.inline = true;
              $.datepicker._selectDateOverload(id, dateStr);
              inst.inline = false;
              target[0].multiDatesPicker.changed = false;
          } else {
              $.datepicker._selectDateOverload(id, dateStr);
              target.multiDatesPicker.changed = false;
          }
          this._updateDatepicker(inst);
      };

      var today = new Date();

      
      // 예약 불가능일 설정
      var disabledDays = ${ formatDates };

      for(let i = 0; i < disabledDays.length; i++) {

       //  문자열   --->>   Date 타입의 "객체"
        disabledDays[i] = new Date(disabledDays[i]);
        //console.log(disabledDays[i]);
      }
      
      $("#impoDate").multiDatesPicker({
        minDate: 0,
        addDisabledDates : disabledDays
      });

      // 예약 불가능일 해제 - 2 백엔드 붙이기 (delete 기능)

      var enabledDay = ${ formatDates };

      // 창 닫기 기능 추가 - 1
      $("#deleteDate").datepicker({
        minDate: 0,
        beforeShowDay: disableSomeDays,
      });  

      function disableSomeDays(date) {
          var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
          for (i = 0; i < enabledDay.length; i++) {
              if($.inArray(y + '-' +(m+1) + '-' + d,enabledDay) != -1) {
                  return [true];
              }
          }
          return [false];
      }

      // impoDate 에 클릭이벤트 (멀티라서 따로 구현) 
      let count = 0;

      $("#impoDate").click(function() {

        if(count > 0) {
          let status = $("#ui-datepicker-div").css("display");

          if(status === "block") {
            $("#ui-datepicker-div").css("display", "none");
          } else {
            $("#ui-datepicker-div").css("display", "block");
          }
        }
        count++;
      });

    });



    $(document).ready(function() {

      // ------------------------ 이용 가능 서비스 ------------------------

      var psService = "<c:out value='${p.petSitterService}'/>"; // 값을 JavaScript 변수에 할당
      var psServiceArr = psService.split(","); // 쉼표(,)로 분할하여 배열로 변환

      // 이용 가능 서비스 배열값 체크박스 체크하기
      for(var i = 0; i < psServiceArr.length; i++) {
        
        $("input:checkbox[name='petSitterService'][value='"+ psServiceArr[i] +"']").prop("checked", true);
      }

    });



    // ------------------------ 첨부 파일 ------------------------
    var maxAppend = 1;

    $('#addList .add').on('click',function(){ 
      if(maxAppend >= 5){
          alert("파일 업로드 최대 개수는 5개 입니다.");
          return;
      }else{
          $('#addList').append('<li><input type="file" name="upfile" class="files"> <button type="button" class="btn btn-secondary add" onclick="addDel(this);">삭제</button></li>'); 
          maxAppend ++;
      }

    });
    
    function addDel(a){ 
        $(a).closest('li').remove(); 
        maxAppend --;
    }

    // X 버튼 클릭 시 이미지 지워지는 함수
    function removeImage(parentNode, fileNo) {
      
      // input hidden 으로 생성 후 fileNo 값 담기
      const fileInput = document.createElement('input');
      fileInput.type = 'hidden';
      fileInput.name = 'delete';
      fileInput.value = fileNo;
      
      // 동적으로 생성된 input 요소를 form에 추가
      const form = document.getElementById('addList');
      form.appendChild(fileInput);

      // 이미지 미리보기 영역에서 삭제
      parentNode.parentNode.removeChild(parentNode);

    }

  </script>

</body>
</html>