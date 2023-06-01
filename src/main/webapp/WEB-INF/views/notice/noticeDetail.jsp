<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/noticeDetail.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>공지사항 상세</title>
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
                  <li class="on">
                    <a href="/notice/noticeList.html">공지사항</a>
                  </li>
                  <li>
                    <a href="/notice/faq.html">자주하는 질문</a>
                  </li>
                  <li>
                    <a href="/notice/inquiryList.html">1:1 문의</a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="title">
                    <h2>공지사항</h2>
                    <span>펫시스터즈의 새로운 소식들과 유용한 정보들을 한곳에서 확인하세요.</span>
                    <hr/>
                </div>
                <div style="text-align: right;">
                    <a href="" class="btn btn-primary">수정하기</a>
                    <a href="" class="btn btn-danger">삭제하기</a>
                </div>
                
                <br/>

                <div class="noticeDetail">
                    <input type="hidden" name="memberNo">
                    <table id="noticeDetail" style="text-align: center;">
                        <tr>
                            <th>제목</th>
                            <td>
                                <div class="notice">[공지] 펫시스터즈 안심보험 적용안내드립니다.</div>
                            </td>
                        </tr>
                        <tr>
                            <th>작성자</th>
                            <td>
                              <div class="notice">언니들</div>
                            </td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td>
                              <div class="notice">2023-05-29</div>
                            </td>
                        </tr>
                        <th>조회수</th>
                            <td>
                              <div class="notice">33</div>
                            </td>
                        <tr>
                            <th>내용</th>
                            <td>
                                <div class="notice noticeContent">
                                    안녕하세요 펫시스터즈입니다. <br/>
                                    항상 펫시스터즈를 이용해주시는 보호자님들께 <br/>
                                    진심으로 감사드립니다. <br/>
                                    <br/>
                                    <br/>
                                    2023년 4월 1일부터 <br/>
                                    펫시스터즈에서 돌봄 의뢰 수행 도중 <br/>
                                    반려동물이 신체적 손해를 입을 경우에 <br/>
                                    관련 배상비용을 지원하는 펫시스터즈 안심보험 <br/>
                                    (한화손해보험 전문인배상책임보험)에 가입되었음을 안내드립니다. <br/>
                                    <br/>
                                    <br/>
                                    펫시스터즈 안심보험은 업계 최초의 펫시터 보험으로 <br/>
                                    펫시스터즈에서 매칭되는 모든 돌봄 의뢰에 대해 적용되며, <br/>
                                    돌봄 대상으로 등록된 반려동물이 입은 신체적 손해를 보장합니다. <br/>
                                    <br/>
                                    <br/>
                                    보험 가입 비용은 전액 펫시스터즈에서 부담하며, <br/>
                                    돌봄 비용은 기존과 동일합니다. <br/>
                                    <br/>
                                    <br/>
                                    앞으로도 더욱 안전한 반려동물 케어 서비스를 제공할 수 있도록 노력하겠습니다. <br/>
                                    <br/>
                                    감사합니다.
                                </div>
                            </td>
                        </tr>
                    </table>
                </div>

                <br/>
                <div style="text-align: right;">
                  <a href="" class="btn btn-outline-primary">목록으로</a>
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