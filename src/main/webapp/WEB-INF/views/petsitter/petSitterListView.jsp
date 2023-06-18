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
  <link rel="stylesheet" href="/resources/css/petsitter/petSitterListView.css">
  <jsp:include page="../common/common.jsp" />

  <!-- datepicker 캘린더 -->
  <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>

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



  </script>

  <title>펫시터 찾기</title>
</head>

<body>

  <jsp:include page="../common/header.jsp" />

  <div id="Container-Wrapper">
    <!-- 페이지 영역 시작 -->
    <div id="container">
      <div id="main">
        <div id="content">
          <div class="page_aticle aticle_type2">
            <div class="searchForm row justify-content-around">
              <div>
                <div class="searchArea">
                  <form action="list.pe" method="get" id="searchForm">
                    <div class="addressArea">
                      <label class="form-label">어디에 사시나요?</label>
                      <div class="col-4 addressForm">
                        <input type="text" class="form-control" id="addressInput" name="keyword" placeholder="동 이름을 검색하세요">
                      </div>
                    </div>
                    <div class="col-4">
                      <label class="form-label">언제 맡기시나요?</label>
                        <div>
                          <div class="dateInput">
                            <input type="text" id="datepicker1" class="form-control" id="startDate" name="startDate" placeholder="체크인 날짜">
                            <input type="text" id="datepicker2" class="form-control" id="endDate" name="endDate" placeholder="체크아웃 날짜">
                            <button class="searchBtn" type="submit" onkeypress="handleKeyPress(event)">
                              <img src="/resources/img/petsitter/magnifier.png">
                            </button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </form>
                  <div class="careListBtn">
                    <label class="form-label">원하시는 조건을 선택하세요</label>
                    <div>
                      <button onclick="searchButtonClicked('집 앞 픽업')" class="btn btn-secondary" type="button">집 앞 픽업</button>
                      <button onclick="searchButtonClicked('매일 산책')" class="btn btn-secondary" type="button">매일 산책</button>
                      <button onclick="searchButtonClicked('목욕 가능')" class="btn btn-secondary" type="button">목욕 가능</button>
                      <button onclick="searchButtonClicked('모발 관리')" class="btn btn-secondary" type="button">모발 관리</button>
                      <button onclick="searchButtonClicked('노견 케어')" class="btn btn-secondary" type="button">노견 케어</button>
                    </div>
                  </div>
                </div>
              </div>
            <br>
            <hr>
            <br>
            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <div>
                    <div class="filter">
                        <a>가까운순</a>
                        <a>인기순</a>
                        <img src="/resources/img/petsitter/filter.png">
                    </div>
                    <div class="content">

                      <c:forEach var="p" items="${ list }">
                        <div class="card mb-3">
                          <div class="row g-0">
                            <div class="col-md-4">
                              <img src="${ p.paFilePath }${ p.changeName }">
                            </div>
                            <div class="col-md-8">
                              <div class="card-body">
                                <p class="pno" style="display: none;">${ p.petSitterNo }</p>
                                <p class="card-text">${ p.address }</p>
                                <h5 class="card-title">${ p.petSitterTitle }</h5>
                                <hr>
                                <div class="careList">
                                  <ul>
                                    <c:choose>
                                      <c:when test="${ not empty p.careList }">
                                        <c:forEach var="item" items="${ p.careList }">
                                          <li><c:out value="${ item }"/></li>
                                        </c:forEach>
                                      </c:when>
                                    </c:choose>
                                    <c:choose>
                                      <c:when test="${ not empty p.petSitterService }">
                                        <c:forEach var="item" items="${ p.petSitterService }">
                                          <li><c:out value="${ item }"/></li>
                                        </c:forEach>
                                      </c:when>
                                    </c:choose>
                                  </ul>
                                </div>
                                <p class="card-text"><small class="text-muted">후기 ${ p.reviewCount }개</small></p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </c:forEach>
                        
                    </div>
                </div>

                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <!-- 페이지네이션-->
                  <div id="pagination">
                    <nav aria-label="Page navigation example">
                      <ul id="pagiUl" class="pagination paginationUlTag">
                      
                      <c:choose>
                        <c:when test="${ pi.currentPage eq 1 }">
                          <li class="arrowTag disabled">
                                  <a href="#">&lsaquo;</a>
                                </li>
                        </c:when>
                    		<c:otherwise>
                    			<li class="arrowTag">
		                          <a href="list.pe?cPage=${ pi.currentPage - 1 }">&lsaquo;</a>
		                        </li>
                    		</c:otherwise>
                    	</c:choose>
                      
                      	<c:forEach var="pi" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
	                      	<li class="page-item active">
	                          <a class="page-link" href="list.pe?cPage=${ pi }">${ pi }</a>
	                        </li>
                      	</c:forEach>

                      <c:choose>
                        <c:when test="${ pi.currentPage eq pi.maxPage }">
                          <li class="arrowTag disabled">
                                        <a href="#">&rsaquo;</a>
                                      </li>
                        </c:when>
                        <c:otherwise>
                          <li class="arrowTag">
                                        <a href="list.pe?cPage=${ pi.currentPage + 1 }">&rsaquo;</a>
                                      </li>
                        </c:otherwise>
                      </c:choose>

                      </ul>
                    </nav>
                  </div>
                <!-- 페이지네이션-->
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>

    </div>
  </div>

  <jsp:include page="../common/footer.jsp" />

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  <script>
    $(document).ready(function () {

      // ------------------------ datepicker 캘린더 ------------------------
      $("#datepicker1, #datepicker2").datepicker({
        dateFormat: 'yy/mm/dd',
        minDate: 0
      });

      // 체크인, 체크아웃 날짜 입력 시 이벤트
      $('#startDate, #endDate').on('change', function() {

      // 시작일, 종료일
      var startDate = new Date($('#startDate').val());
      var endDate = new Date($('#endDate').val());

        if(startDate instanceof Date && !isNaN(startDate) && endDate instanceof Date && !isNaN(endDate)) {
          calculateDateDifference();
          updateTotal();
        } else {

          resetValues();
        }

      });




      // 펫시터 리스트 div 클릭 이벤트
      $(".content>div").click(function() {
        let pno = $(this).find(".pno").text();
        location.href = "detail.pe?pno=" + pno;
      });




      // searchForm 엔터키 이벤트
      function handleKeyPress(event) {
        if (event.keyCode === 13) { // Enter 키의 keyCode는 13입니다.
            searchForm();
        }
      }




      // 버튼 클릭 시 name 값을 컨트롤러에 전달하는 AJAX 요청
      function searchButtonClicked(service) {

        location.href = '/list.pe?service=' + service;

        var button = event.target; // 클릭된 버튼 요소 가져오기
        var isActive = $(button).hasClass("active-button"); // 현재 활성화 상태 확인
        
        // 버튼의 활성화/비활성화 상태 변경
        if (isActive) {
          $(button).removeClass("active-button");
        } else {
          $(button).addClass("active-button");
        }
      }

    });




  </script>

</body>
</html>