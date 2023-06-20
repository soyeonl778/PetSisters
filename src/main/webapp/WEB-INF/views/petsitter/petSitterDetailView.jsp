<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterForm.css">
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterDetailView.css">
  <jsp:include page="../common/common.jsp" />

  <!--datepicker 캘린더 -->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>

  <!-- 폰트어썸 아이콘 적용 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

  <!-- 부트스트랩 아이콘 -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.1/font/bootstrap-icons.css">
  
  
  <title>펫시터 상세페이지</title>
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
                  <div id="content-area">
                    <div id="content1">

                      <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                        <div class="carousel-inner">
                          <c:choose>
                            <c:when test="${ empty psImgList }">
                              <div class="carousel-item active">
                                <img src="${ psImg.filePath }${ psImg.changeName }" class="d-block w-100" alt="...">
                              </div>
                            </c:when>
                            <c:otherwise>
                              <c:forEach var="psImg" items="${ psImgList }">
                                <div class="carousel-item active">
                                  <img src="${ psImg.filePath }${ psImg.changeName }" class="d-block w-100" alt="...">
                                </div>
                              </c:forEach>
                            </c:otherwise>
                          </c:choose>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                          <span class="carousel-control-next-icon" aria-hidden="true"></span>
                          <span class="visually-hidden">Next</span>
                        </button>
                      </div>


                      <div class="profileBox">
                        <div class="profileImg">
                          <img src="${ p.userFilePath }">
                        </div>
                        <div class="profile">
                          <h5>${ p.petSitterTitle }</h5>
                          <h5>${ p.userName }</h5><span class="tnm">${ p.address }</span>
                        </div>
                      </div>
                      <div class="hashtag">
                        <ul>
                          <c:choose>
                            <c:when test="${ not empty p.careList }">
                              <c:forEach var="item" items="${ p.careList }">
                                <li><c:out value="${ item }"/></li>
                              </c:forEach>
                            </c:when>
                          </c:choose> 
                        </ul>
                      </div>
                      <br>
                      <div class="introduction">
                        <h3>${ p.userName } 펫시터님을 소개합니다</h3>
                        <p>
                          ${ p.petSitterContent }
                        </p>
                        <br>
                      </div>
                      <div id="petList">
                        <h5>함께 사는 반려동물</h5>
                        <div id="petCard">
                          <c:forEach var="d" items="${ dogList }">
                            <div class="card">
                              <div class="card-body">
                                <img src="${ d.filePath }">
                                <p class="card-text">${ d.dogName } ${ d.dogBreed } / ${ d.dogGender } / ${ d.dogAge }살</p>
                              </div>
                            </div>
                          </c:forEach>
                        </div>
                      </div>
                      <br>
                      <div>
                        <div class="petServiceList">
                          <h5>이용 가능 서비스</h5>
                          <div id="petServiceList">

                            <div class="petService" id="집 앞 픽업" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/집 앞 픽업.png">
                                </div>
                                <div><p>집 앞 픽업<br>비용은 펫시터와 협의</p></div>
                              </div>
                            </div>

                            <div class="petService" id="모발 관리" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/모발 관리.png">
                                </div>
                                <div><p>모발 관리<br>눈물 또는 빗질 관리 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="약물 복용" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/약물 복용.png">
                                </div>
                                <div><p>약물 복용<br>경구(입) 약물 복용 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="응급 처치" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/응급 처치.png">
                                </div>
                                <div><p>응급 처치<br>응급 상황 시 병원 이동 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="목욕 가능" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/목욕 가능.png">
                                </div>
                                <div><p>목욕 가능<br>비용은 펫시터와 협의</p></div>
                              </div>
                            </div>

                            <div class="petService" id="매일 산책" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/매일 산책.png">
                                </div>
                                <div><p>매일 산책<br>산책 및 실외 배변 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="실내 놀이" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/실내 놀이.png">
                                </div>
                                <div><p>실내 놀이<br>터그 놀이, 노즈워크 등</p></div>
                              </div>
                            </div>

                            <div class="petService" id="장기 예약" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/장기 예약.png">
                                </div>
                                <div><p>장기 예약<br>14일 이상 돌봄 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="노견 케어" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/노견 케어.png">
                                </div>
                                <div><p>노견 케어<br>8년 이상 노견 돌봄 가능</p></div>
                              </div>
                            </div>

                            <div class="petService" id="퍼피 케어" style="display: none;">
                              <div class="psDiv">
                                <div>
                                  <img src="/resources/img/petsitter/퍼피 케어.png">
                                </div>
                                <div><p>퍼피 케어<br>1년 미만 퍼피 돌봄 가능</p></div>
                              </div>
                            </div>

                          </div>
                        </div>
                      </div>
                      <br>
                      <div class="reviewList">
                        <div>
                          <h5>펫시터 후기 ${ reviewCount }개</h5>
                        </div>
                        <hr>
                        <c:forEach var="r" items="${ revList }">
                            
                          <div class="review">
                            <div class="userReview">
                              <div value="${ r.revNo }"></div>
                              <div class="userProfile">
                                <div>
                                  <img src="/resources/img/main/두부02-0107.jpg">
                                </div>
                                <div>
                                  <p>${ r.userName }님</p>
                                  <p>${ r.createDate }</p>
                                </div>
                                <c:if test="${ (empty r.acontent) and (loginUser.petsitterNo eq p.petSitterNo) }">
                                  <button id="commentBtn" onclick="showCommentForm(this)" class="btn btn-secondary">답글 작성</button>
                                </c:if>
                              </div>
                              <div class="revContent">
                                <p>${ r.revContent }</p>
                              </div>
                              <div class="revImg">
                                <img src="/resources/upFiles/review_upfiles/${ r.filePath }">
                              </div>
                            </div>
                              <c:if test="${ (empty r.acontent) and (loginUser.petsitterNo eq p.petSitterNo) }">
                                <div id="comment" class="comment" style="display: none;">
                                  <img src="/resources/img/main/그림이사진1.jpg">
                                  <div class="speech-bubble">
                                    <div>
                                      <div>
                                        <p>펫시터님 답글</p><p name="adate"></p>
                                      </div>
                                      <div class="updateBtn">
                                        <button onclick="updateComment(${ r.revNo })" type="button" class="btn btn-secondary">등록</button>
                                      </div>
                                    </div>
                                    <div id="commentForm">
                                      <textarea id="acontent${ r.revNo }"></textarea>
                                      <div class="count"><span>0</span>/500</div>
                                    </div>
                                  </div>
                                </div>
                              </c:if>
                              
                              <c:if test="${ not empty r.acontent }">
                                <div class="comment">
                                  <img src="/resources/img/main/그림이사진1.jpg">
                                  <div class="speech-bubble">
                                    <div>
                                      <div>
                                        <p>펫시터님 답글</p><p name="adate">${ r.adate }</p>
                                      </div>
                                      <c:if test="${ loginUser.petsitterNo eq p.petSitterNo }">
                                      <div class="updateBtn">
                                        <button onclick="updateComment(${ r.revNo })" type="button" class="btn btn-secondary">수정</button><button onclick="deleteComment(${ r.revNo })" type="button" class="btn btn-secondary">삭제</button>
                                      </div>
                                      </c:if>
                                    </div>
                                    <c:choose>
                                      <c:when test="${ loginUser.petsitterNo eq p.petSitterNo }">
                                        <div id="commentForm">
                                          <textarea id="acontent${ r.revNo }">${ r.acontent }</textarea>
                                          <div class="count"><span>0</span>/500</div>
                                        </div>
                                      </c:when>
                                      <c:otherwise>
                                        <div id="commentForm">
                                          <textarea name="acontent" style="border: none; resize: none;" disabled>${ r.acontent }</textarea>
                                        </div>
                                      </c:otherwise>
                                    </c:choose>
                                  </div>
                                </div>
                              </c:if>
                              
                          </div>

                        </c:forEach>
                      </div>
                    </div>

                    <div id="content2">
                      
                      <c:choose>
                        <%-- 로그인 상태일 경우 : 하트 클릭 가능 --%>
                        <c:when test="${ not empty loginUser.userNo }">
                          <c:choose>
                            <%-- 로그인 유저의 pno가 펫시터 상세페이지의 pno와 일치할 경우 --%>
                            <c:when test="${ loginUser.petsitterNo eq p.petSitterNo }">
                              <div class="updateFormBtn">
                                <a href="updateForm.pe?pno=${ p.petSitterNo }" class="btn btn-secondary">프로필 수정</a>
                              </div>
                            </c:when>
                            <%-- 로그인 유저의 pno가 펫시터 상세페이지의 pno와 일치하지 않을 경우 --%>
                            <c:otherwise>
                              <c:choose>
                                <%-- 빈 하트 일 때 --%>
                                <c:when test="${ likeCheck == 0 }">
                                  <div class="likeBtn">
                                    <div>
		                              <div class="here" onclick="location.href='/createChat.do?masterNo=${p.userNo}'" style="display: flex;align-items: center;justify-content: space-evenly;
			                              bottom: -22px;right: 20px;color: #381B1B;background-color: #ECD500;
			                              width: 103px;height: 37px;border-radius: 8px;box-shadow: 2px 2px 3px black;">
			                              <div>
			                              <svg style="color: #381B1B;" xmlns="http://www.w3.org/2000/svg" width="20" height="25" fill="currentColor" class="bi bi-chat-dots-fill" viewBox="0 0 16 16">
                                      <path d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM5 8a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                    </svg>
                                    </div>
			                              <div>채팅요청</div>
										              </div>
                                    </div>                                  
                                    <a href="#" class="heart-login">
                                      <i class="bi bi-heart heartIcon" id="unChecked"></i><p>${ likeCount }&nbsp;</p>
                                    </a>
                                  </div>
                                </c:when>
                                <%-- 채워진 하트 일 때 --%>
                                <c:otherwise>
                                  <div class="likeBtn">
                                    <div>
	                                  <div class="here" onclick="location.href='/createChat.do?masterNo=${p.userNo}'" style="display: flex;align-items: center;justify-content: space-evenly;
			                              bottom: -22px;right: 20px;color: #381B1B;background-color: #ECD500;
			                              width: 103px;height: 37px;border-radius: 8px;box-shadow: 2px 2px 3px black;">
                                    <div>
                                      <svg style="color: #381B1B;" xmlns="http://www.w3.org/2000/svg" width="20" height="25" fill="currentColor" class="bi bi-chat-dots-fill" viewBox="0 0 16 16">
                                        <path d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM5 8a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                      </svg>
                                    </div>
			                              <div>채팅요청</div>
										                </div>
                                    </div>                                  
                                    <a href="#" class="heart-login">
                                      <i class="bi bi-heart-fill heartIcon" id="cheked"></i><p>${ likeCount }&nbsp;</p>
                                    </a>
                                  </div>
                                </c:otherwise>
                              </c:choose>
                            </c:otherwise>
                          </c:choose>
                        </c:when>
                        <%-- 로그인 상태가 아닐 경우 : 하트 클릭 불가능 --%>
                        <%-- 빈 하트 --%>
                        <c:otherwise>
                          <div class="likeBtn">
                            <div>
	                              <div class="here" onclick="location.href='/createChat.do?masterNo=${p.userNo}'" style="display: flex;align-items: center;justify-content: space-evenly;
			                              bottom: -22px;right: 20px;color: #381B1B;background-color: #ECD500;
			                              width: 103px;height: 37px;border-radius: 8px;box-shadow: 2px 2px 3px black;">
			                              <div>
			                              <svg style="color: #381B1B;" xmlns="http://www.w3.org/2000/svg" width="20" height="25" fill="currentColor" class="bi bi-chat-dots-fill" viewBox="0 0 16 16">
                                      <path d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM5 8a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                                    </svg>
                                    </div>
			                              <div>채팅요청</div>
										          </div>
                            </div>
                            <a href="#" class="heart-notlogin">
                              <i class="bi bi-heart"></i><p>${ likeCount }&nbsp;</p>
                            </a>
                          </div>
                        </c:otherwise>
                      </c:choose>
                      
                      <div class="card">
                        <form action="pay" method="post" id="reserveForm">
                          <input type="hidden" name="userNo" value="${ loginUser.userNo }">
                          <input type="hidden" name="pno" value="${ p.petSitterNo }">
                          <input type="hidden" id="payPrice" name="payPrice" value="">
                          <div class="card-body">
                            <h5 class="card-title">언제 펫시터가 필요하신가요?</h5>
                            <div class="dateInput">
                              <input type="text" class="datepicker1 form-control" id="startDate" name="startDate" placeholder="체크인 날짜" required>&nbsp;&nbsp;
                              <input type="text" class="datepicker2 form-control" id="endDate" name="endDate" placeholder="체크아웃 날짜" required>
                            </div>
                            <hr>
                            <h5 class="card-title">맡기시는 반려동물</h5>
                            <div class="petCount">
                              <button type="button" value="-">-</button>&nbsp;&nbsp;<div id="petCount">0</div>마리&nbsp;&nbsp;<button type="button" value="+">+</button>
                            </div>
                            <hr>
                            <h5 class="petMsg">요청사항</h5>
                            <textarea class="requestMsg" name="content" placeholder="요청사항을 입력해주세요"></textarea>
                            <hr>
                            <h5>이용요금</h5>
                            <p class="card-text">
                              <div class="day">
                                <div id="payDscpt"><div id="day"></div>박 돌봄<div id="slash">/</div><div id="petCount2"></div>마리</div>&nbsp;<div id="total"></div>원
                              </div>
                            </p>
                            <input type="hidden" id="price" value="55000">
                            <div class="d-grid gap-2 mx-auto" id="reserveBtn">
                              <button onclick="insertRevInfo()" type="button" class="btn btn-secondary">예약 요청</button>
                            </div>
                          </div>
                        </form>
                      </div>
                      <br>
                      <div class="card">
                        <div class="card-body">
                          <h5 class="card-title">펫시터님 위치</h5>
                          <p class="card-text">${ p.address }</p>
                        </div>
                        <div id="map"></div>
                      </div>
                    </div>
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

  <form action="pay" method="post" id="payForm">
  	<input type='hidden' name="startRevDate" value="">
  	<input type='hidden' name="endRevDate" value="">
  	<input type='hidden' name="reqMsg" value="">
  	<input type='hidden' name="totalPays" value="">
  	<input type='hidden' name="userNo" value="">
  	<input type='hidden' name="petsitterNo" value="">
  </form>

	<jsp:include page="../common/footer.jsp" />

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>

  <!--카카오맵 API-->
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=0f876d0e519ec1bc91c1da0c5e2829c7&libraries=services"></script>


  <script type="text/javascript">

    $(function () {

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
        yearSuffix: '년',
        showButtonPanel: true,
        closeText: 'close',
      });

      $(".datepicker1, .datepicker2").datepicker({
        minDate: 0,
        beforeShowDay: disableSomeDays
      });

      $( "#datepicker" ).datepicker();

      // 예약 불가능일 설정
      var disabledDays = ${ formatDates };    

      // 특정일 선택막기
      function disableSomeDays(date) {
          var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
          for (i = 0; i < disabledDays.length; i++) {
              if($.inArray(y + '-' +(m+1) + '-' + d,disabledDays) != -1) {
                  return [false];
              }
          }
          return [true];
      }

      
      // ------------------------ 예약 장바구니 ----------------------------
      $('#day').text(0);
    
      $('#startDate, #endDate').on('change', function() {

        // 날짜 검사 로직
        // 시작일, 종료일
        var startDate = new Date($('#startDate').val());
        var endDate = new Date($('#endDate').val());

        var currentDate = new Date(startDate); // startDate로 초기화된 currentDate 변수 선언

        let temp = [...disabledDays];

        for(let i = 0; i < temp.length; i++) {
          temp[i] = new Date(temp[i]);
          //onsole.log(temp[i])
        }

        let calStatus = true;
        
        // startDate부터 endDate까지의 매일을 반복
        while (currentDate <= new Date(endDate)) {
          
          for(let i = 0; i < temp.length; i++) {
            
            let status = (currentDate.toString() === temp[i].toString());

            // 하루라도 안된다면 => 다시 선택하라고 유도
            if(status) {

              $('#startDate').val("");
              $('#endDate').val("");
              
              resetValues();
              calStatus = false;
              break;
            }

          }

          currentDate.setDate(currentDate.getDate() + 1); // currentDate를 다음 날짜로 설정
        }

        if(calStatus) {
          
          calculateDateDifference();
          updateTotal();
        } else {

          alert("예약 가능한 날짜로 다시 선택해주세요.");
          resetValues();
        }

      });


    });



    // ------------------------ 예약 장바구니 ------------------------
    // 예약 요청 반려동물 마릿수 증감 이벤트
    $('#petCount').text(0);
    $('#petCount2').text(0);
    $('#total').text(0);

    // HTML 요소 가져오기
    const petCountElement = document.getElementById('petCount');
    const priceElement = document.getElementById('price');
    const dayElement = document.getElementById('day');

    // + 버튼 클릭 시 이벤트 처리
    function increaseCount() {
      let petCount = parseInt($('#petCount').text());
      petCount++;
      $('#petCount').text(petCount);

      updateTotal();
    }

    // - 버튼 클릭 시 이벤트 처리
    function decreaseCount() {
      let petCount = parseInt($('#petCount').text());
      if (petCount > 1) {
        petCount--;
        $('#petCount').text(petCount);
      }

      updateTotal();
    }

    // 이용요금 업데이트 함수
    function updateTotal() {
      let petCount = parseInt($('#petCount').text());
      let price = parseInt($('#price').val());
      let day = $('#day').text();

      let total = petCount * price * day;

      // 결과를 #petCount2 요소에 출력
      $('#petCount2').text(petCount);

      // 천단위 콤마 추가
      let formattedTotal = total.toLocaleString();

      $('#total').text(formattedTotal);
      $('#payPrice').val(formattedTotal);
    }

    // + 버튼 클릭 시 이벤트 연결
    const plusButton = document.querySelector('button[value="+"]');
    plusButton.addEventListener('click', increaseCount);

    // - 버튼 클릭 시 이벤트 연결
    const minusButton = document.querySelector('button[value="-"]');
    minusButton.addEventListener('click', decreaseCount);

    function calculateDateDifference() {

      // 시작일, 종료일
      var startDate = new Date($('#startDate').val());
      var endDate = new Date($('#endDate').val());

      // 하나라도 날짜가 입력 아직 안된경우  => 계산을 아예 안하면 NaN 가 뜰리없음
      if($('#startDate').val() == "" || $('#endDate').val() == "") {

        $('#day').text(0);
      } else {

      if (endDate < startDate) {
        $('#endDate').val('');
        $('#day').text(0); // endDate가 startDate보다 이전인 경우 0으로 설정
      } else {

          // 날짜 차이를 계산(결과는 밀리초로 반환되므로 일 단위로 변환)
          var dateDifference = Math.ceil((endDate - startDate) / (1000 * 60 * 60 * 24));

          // 결과를 #day 요소에 출력
          $('#day').text(dateDifference + 1);

          // #payDscpt 요소의 값을 가져오기
          var payDscptValue = $('#payDscpt').text();
          addHiddenInput('payDscpt', payDscptValue);
        }
      }
    }

    // input hidden 추가
    function addHiddenInput(name, value) {
      var input = $('<input>').attr({
        type: 'hidden',
        name: name,
        value: value
      });
      $('#reserveForm').append(input);
    }

    // 값 초기화 함수
    function resetValues() {
      $('#petCount').text(0);
      $('#petCount2').text(0);
      $('#day').text(0);
      $('#total').text(0);
      $('#reserveForm').find('input[name="payDscpt"]').remove();
    }



    $(document).ready(function() {

      // ------------------------ 카카오맵 API ----------------------------
      var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
        mapOption = {
          center: new kakao.maps.LatLng(37.53420144526709, 126.8973809043428), // 지도의 중심좌표
          level: 3 // 지도의 확대 레벨
        };

      // 지도를 생성합니다    
      var map = new kakao.maps.Map(mapContainer, mapOption);


      var address = '${ p.address }'; 
      var geocoder = new kakao.maps.services.Geocoder();

      geocoder.addressSearch(address, function (result, status) {
        if (status === kakao.maps.services.Status.OK) {
          var latitude = result[0].y;
          var longitude = result[0].x;

          var container = document.getElementById('map');
          var options = {
            center: new kakao.maps.LatLng(latitude, longitude),
            level: 6
          };

          var map = new kakao.maps.Map(container, options);

          var circle = new kakao.maps.Circle({
            center: new kakao.maps.LatLng(latitude, longitude),  // 원의 중심 좌표
            radius: 500,  // 원의 반지름 (단위: m)
            strokeWeight: 2,  // 선의 두께 (단위: px)
            strokeColor: '#0888D0',  // 선의 색상
            strokeOpacity: 0.8,  // 선의 불투명도 (0~1 사이의 값)
            strokeStyle: 'solid',  // 선의 스타일 ('solid', 'shortdash', 'shortdot', 'shortdashdot', 'longdash', 'longdot', 'longdashdot')
            fillColor: '#B9EAFF',  // 채우기 색상
            fillOpacity: 0.2  // 채우기 불투명도 (0~1 사이의 값)
          });

          circle.setMap(map);
        }
      });


    })



    // ======================== 함수 ============================
    // ------------------------ 답글 기능 ------------------------
    // 답글 작성 버튼 클릭 시 동작하는 함수
    function showCommentForm(button) {
      var commentSection = button.closest('.review').querySelector('#comment');
      commentSection.style.display = commentSection.style.display === 'none' ? 'flex' : 'none';
    }

    // 답글 수정
    function updateComment(revNo) {
      
      if($("#acontent" + revNo).val().trim().length != 0) {
        // 즉, 유효한 내용이 한 글자라도 있을 경우
        $.ajax({
          url : "updateComment.pe",
          data : {
            revNo : revNo,
            acontent : $("#acontent" + revNo).val()
          },
          type : "post",
          success : function(result) {
            
            if(result == "success") {
              alertify.alert("알림", "답글 등록 완료").set({onok: function(){ location.reload(); }});
            }

          },
          error : function() {
            console.log("답글 작성용 ajax 통신 실패!");
          }
        });
        
        } else {
          alertify.alert("알림", "답글 작성 후 등록 요청해주세요.");
        }
    }

    // 답글 삭제
    function deleteComment(revNo) {
      
        $.ajax({
          url : "deleteComment.pe",
          data : {
            revNo : revNo
          },
          type : "post",
          success : function(result) {
            
            if(result == "success") {
              alertify.alert("알림", "답글 삭제 완료").set({onok: function(){ location.reload(); }});
            }

          },
          error : function() {
            console.log("답글 삭제용 ajax 통신 실패!");
          }
        });
    }



    // ------------------------ 상세페이지 이용 가능 서비스 표시 ------------------------
    var psService = "<c:out value='${p.petSitterService}'/>"; // 값을 JavaScript 변수에 할당
    var psServiceArr = psService.split(","); // 쉼표(,)로 분할하여 배열로 변환

    for(var i = 0; i < psServiceArr.length; i++) {

    var psServiceId = $("div[id='"+ psServiceArr[i] +"']").attr('id');

    const div = document.getElementById(psServiceId);
    div.style.display = 'grid';
    }



    // ------------------------ 찜 버튼 ----------------------------
    $(".heart-login").on("click", function() {

    // 빈 하트라면
    if ($(this).find(".heartIcon").hasClass("bi-heart")) {
      sendHeartData('${loginUser.userNo}', '${p.petSitterNo}', 0);
      $(this).find(".heartIcon").removeClass("bi-heart").addClass("bi-heart-fill");

    // 채워진 하트라면
    } else {
      sendHeartData('${loginUser.userNo}', '${p.petSitterNo}', 1);
      $(this).find(".heartIcon").removeClass("bi-heart-fill").addClass("bi-heart");
    }

    });



    // ------------------------ 찜 버튼 ------------------------
    function sendHeartData(userNo, refPno, check) {

      var requestData = {};

      if (check === 0) {
        requestData = {
          userNo: userNo,
          refPno: refPno,
          check: check
        };
      } else {
        requestData = {
          userNo: userNo,
          refPno: refPno,
          check: check
        };
      }

      $.ajax({
        url: "like.pe",
        method: "POST",
        data: requestData,
        success: function(result) {
          
          if(check === 0) {
            // 일회성 알람문구 담아서 새로고침
            alertify.alert("알림", "펫시터 찜 완료").set({onok: function(){ location.reload(); }});
            
          } else {
            // 일회성 알람문구 담아서 새로고침
            alertify.alert("알림", "펫시터 찜 해제 완료").set({onok: function(){ location.reload(); }});
          }
          
          // 찜 요청 성공 시 수행할 작업
          console.log("찜 AJAX 요청이 성공했습니다.");
        },
        error: function() {
          // 찜 요청 실패 시 수행할 작업
          console.error("찜 AJAX 요청이 실패했습니다.");
        }
      });
    }



    // ------------------------ 예약 기능 ------------------------
    // 예약정보 insert를 위한 form 요청
    function insertRevInfo() {
    	
    	// 기본 1일 가격
    	var baseMoneys = 55000;
    	// 예약 시작일
    	var startRevDate = $('.dateInput input[name=startDate]').val();
    	// 예약 종료일
    	var endRevDate = $('.dateInput input[name=endDate]').val();
    	// 강아지 마릿수
    	var dogs = $('#petCount').text();
    	// 요청사항
    	var reqMsg = $('.requestMsg').val();
    	// 몇박인지
    	var sum = $('#day').text();
    	// 기본금 * 강아지수 * 몇박 
    	var totalPays = baseMoneys * Number(sum) * Number(dogs);
    	// 현재 로그인한 유저번호
    	var userNo = $('.card input[name=userNo]').val();
    	// 예약하고자하는 펫시터 번호
    	var petsitterNo = $('.card input[name=pno]').val();
    	
    	
    	$("#payForm").children().eq(0).val(startRevDate);
    	$("#payForm").children().eq(1).val(endRevDate);
    	$("#payForm").children().eq(2).val(reqMsg);
    	$("#payForm").children().eq(3).val(totalPays);
    	$("#payForm").children().eq(4).val(userNo);
    	$("#payForm").children().eq(5).val(petsitterNo);
    	// 나머지 input value 들도 다 채우고
    	$("#payForm").submit();
    	
    }



    // ------------------------ textarea 글자수 제한 ------------------------
    $('#commentForm>textarea').keyup(function(){
      var content = $(this).val();
      $('#commentForm .count span').html(content.length);
      if (content.length > 500){
        alert("최대 500자까지 입력 가능합니다.");
        $(this).val(content.substring(0, 500));
        $('.text_box .count span').html(500);
      }
    });


  </script>

</body>
</html>




