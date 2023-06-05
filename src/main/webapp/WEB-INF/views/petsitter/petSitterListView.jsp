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
                <div class="searchArea">
                    <div class="addressArea">
                        <label class="form-label">어디에 사시나요?</label>
                        <div class="col-4 addressForm">
                            <div>
                                <img src="/resources/img/petsitter/magnifier.png">
                            </div>
                            <input type="text" class="form-control" id="addressInput" placeholder="동 이름을 검색하세요">
                        </div>
                    </div>
                    <div class="col-4">
                        <label class="form-label">언제 맡기시나요?</label>
                        <div class="dateInput">
                            <input type="date" class="form-control" id="startDate" name="startDate" data-placeholder="체크인 날짜" min="2023-01-01" max="2023-12-31">
                            <input type="date" class="form-control" id="endDate" name="endDate" data-placeholder="체크아웃 날짜" min="2023-01-01" max="2023-12-31">
                        </div>
                    </div>
                </div>
                <div class="careList">
                    <label class="form-label">원하시는 조건을 선택하세요</label>
                    <div>
                        <button class="btn btn-secondary" type="button">반려동물 없음</button>
                        <button class="btn btn-secondary" type="button">픽업 가능</button>
                        <button class="btn btn-secondary" type="button">대형견 가능</button>
                        <button class="btn btn-secondary" type="button">마당 있음</button>
                        <button class="btn btn-secondary" type="button">노견 케어</button>
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
                        <a>가격순</a>
                        <img src="/resources/img/petsitter/filter.png">
                    </div>
                    <div class="content">

                      <c:forEach var="p" items="${ list }">
                        <div class="card mb-3">
                          <div class="row g-0">
                            <div class="col-md-4">
                              <img src="/resources/img/petsitter/상세페이지예시.jpg">
                            </div>
                            <div class="col-md-8">
                              <div class="card-body">
                                <p class="pno" style="display: none;">${ p.petSitterNo }</p>
                                <p class="card-text">${ p.address }</p>
                                <h5 class="card-title">${ p.petSitterTitle }</h5>
                                <hr>
                                <div>
                                  <ul>
                                  </ul>
                                </div>
                                <p class="card-text"><small class="text-muted">후기 ${ p.reviewCount }개</small></p>
                              </div>
                            </div>
                          </div>
                        </div>
                      </c:forEach>

                      <script>

                        $(function() {
                          $(".content>div").click(function() {
                            let pno = $(this).find(".pno").text();
                            location.href = "detail.pe?pno=" + pno;
                          });
                        });

                      </script>
                        
                    </div>
                </div>

                <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                <!-- 페이지네이션-->
                  <div id="pagination">
                    <nav aria-label="Page navigation example">
                      <ul id="pagiUl" class="pagination paginationUlTag">
                        <li class="arrowTag">
                          <a href="">&lsaquo;</a>
                        </li>
                        <li class="page-item active">
                          <a class="page-link" href="#">1</a>
                        </li>
                        <li class="page-item">
                          <a class="page-link" href="#">2</a>
                        </li>
                        <li class="page-item">
                          <a class="page-link" href="#">3</a>
                        </li>
                        <li class="arrowTag">
                          <a href="">&rsaquo;</a>
                        </li>
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
        $(window).scroll(function () {
          var scrollTop = $(document).scrollTop();
          var footerOffset = $(".link_footer").offset().top;
          var windowHeight = $(window).height();

          if (scrollTop + windowHeight > footerOffset) {
            scrollTop = footerOffset - windowHeight;
          }

          $(".snb_my").stop();
          $(".snb_my").animate({ "top": scrollTop });
        });
      });
    </script>
</body>
</html>