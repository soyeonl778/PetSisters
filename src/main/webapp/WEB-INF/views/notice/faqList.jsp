<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/faqList.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>FAQ</title>
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
                  <li class="on">
                    <a onclick="event.preventDefault();">자주하는 질문</a>
                  </li>
                  <li>
                    <a href="list.in">1:1 문의</a>
                  </li>
                </ul>
              </div>
            </div>
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="box">

                  <div class="title">
                    <h2>자주하는 질문</h2>
                    <span>고객님들께서 자주 하시는 질문을 언니들이 모두 모았습니다.</span>
                    <hr/>
                  </div>

                  <div class="accordion accordion-flush" id="accordionExample" style="margin: 30px;">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-heading1">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse1" aria-expanded="false" aria-controls="flush-collapse1">
                            예약 취소 및 환불 규정은 어떻게 되나요?
                        </button>
                      </h2>
                      <div id="flush-collapse1" class="accordion-collapse collapse" aria-labelledby="flush-heading1" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            예약 취소에 따른 환불 가능 금액은 체크인 전 시간에 따라 달라집니다. <br/>
                            체크인 시간을 기준으로 3일(72시간) 전 취소 시 100% 환불, 3일(72시간) 이내 취소 시 50% 환불됩니다. <br/>
                            1일(24시간) 이내 취소 시엔 환불이 불가하고 조기 서비스 종료 시에도 남은 일수에 해당하는 금액 또한 환불 불가합니다. <br/>
                            다만, 펫시터님의 요청 수락 이후 (매칭 이후) 2시간 이내 취소는 전액 환불이 가능합니다. <br/>
                            예약 변경은 예약 취소 후 다시 예약 신청하셔야 하며, 되도록이면 5일 이전에 해주시길 바랍니다. <br/>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-heading2">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse2" aria-expanded="false" aria-controls="flush-collapse2">
                            서비스 이용중 반려동물이 아프거나 다치면 어떻게 하나요?
                        </button>
                      </h2>
                      <div id="flush-collapse2" class="accordion-collapse collapse" aria-labelledby="flush-heading2" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            펫시팅 도중 반려동물의 건강에 이상이 생긴 경우, 사전에 펫시터님과 고객님께서 정한 병원으로 즉시 이송하여 진단, 치료를 받을 수 있습니다. <br/>
                            진단 및 치료 후 수의학적 판단에 의한 과실 여부에 따라 펫시스터즈의 프리미엄 안전 보상 프로그램을 적용 받으실 수 있습니다.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-heading3">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse3" aria-expanded="false" aria-controls="flush-collapse3">
                            서비스에 대한 비용 결제는 언제되나요?
                        </button>
                      </h2>
                      <div id="flush-collapse3" class="accordion-collapse collapse" aria-labelledby="flush-heading3" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            펫시스터즈는 예약 요청과 동시에 선결제가 이뤄집니다. 따라서 예약 시 펫시팅 기간 및 조건을 신중히 확인하고 예약해주세요.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-heading4">
                        <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse4" aria-expanded="false" aria-controls="flush-collapse4">
                            고양이도 맡길 수 있나요?
                        </button>
                      </h2>
                      <div id="flush-collapse4" class="accordion-collapse collapse" aria-labelledby="flush-heading4" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            고양이의 경우 영역성이 강한 본능적 특성 때문에, 환경이 바뀌면 스트레스를 받을 가능성이 크기에 방문 펫시터 서비스를 준비중입니다. 앞으로 점차 늘어날 서비스에 많은 관심 부탁드립니다.
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-heading5">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse5" aria-expanded="false" aria-controls="flush-collapse5">
                            예약된 체크인 또는 체크아웃 시간보다 늦어졌어요.
                          </button>
                        </h2>
                        <div id="flush-collapse5" class="accordion-collapse collapse" aria-labelledby="flush-heading5" data-bs-parent="#accordionFlushExample">
                          <div class="accordion-body">
                            먼저 체크인 또는 체크아웃 시간보다 늦어지는 경우 반드시 펫시터님께 연락해서 얼만큼 늦어지게 되는 지 연락해주세요. <br/>
                            체크아웃이 늦어지는 경우는 펫시터님이 늦어진 시간 만큼 추가금 결제 요청을 할 수 있습니다.
                          </div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-heading6">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse6" aria-expanded="false" aria-controls="flush-collapse6">
                            아이디와 비밀번호를 잃어버렸어요. 어떻게 찾나요?
                          </button>
                        </h2>
                        <div id="flush-collapse6" class="accordion-collapse collapse" aria-labelledby="flush-heading6" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                첫 화면에서 로그인 버튼을 눌러 아이디, 비밀번호 찾기 버튼을 누르면
                                아이디 혹은 비밀번호를 찾을 수 있는 페이지로 이동합니다.
                            </div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-heading7">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse7" aria-expanded="false" aria-controls="flush-collapse7">
                            호텔이나 병원에 맡기는것과 다른 점은 무엇인가요?
                          </button>
                        </h2>
                        <div id="flush-collapse7" class="accordion-collapse collapse" aria-labelledby="flush-heading7" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                호텔이나 병원의 경우 여러 마리의 반려동물을 수용하여야 하기 때문에 24시간 맞춤케어가 힘든 단점이 있습니다. <br/>
                                펫시스터즈의 펫시팅 서비스는 반려동물 밀착 케어를 원칙으로 하며, 반려동물이 펫시터의 가정집에서 있는 동안 안전하게 지낼 수 있도록 합니다.
                            </div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-heading8">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse8" aria-expanded="false" aria-controls="flush-collapse8">
                            펫시팅 전에 필요한 준비사항은 뭐가 있나요?
                          </button>
                        </h2>
                        <div id="flush-collapse8" class="accordion-collapse collapse" aria-labelledby="flush-heading8" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                기본적인 준비물들은 배변패드, 배변 판, 배식 도구, 사료 강아지 인식표 및 산책도구 등이 있습니다. <br/>
                                하지만 펫시터분들마다 준비물에 대한 요구사항이 다를 수 있으니 펫시터분들의 프로필을 필히 읽어 보시고 대화를 해보시기 바랍니다. <br/>
                                또한 펫시팅을 맡기기 위해선 기본적인 5차 접종이 꼭 완료되어야 합니다.
                            </div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-heading9">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse9" aria-expanded="false" aria-controls="flush-collapse9">
                            하네스 or 인식표가 없는데 가능한가요?
                          </button>
                        </h2>
                        <div id="flush-collapse9" class="accordion-collapse collapse" aria-labelledby="flush-heading9" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                산책서비스를 이용하는 경우 이중산책줄 착용을 위해 하네스는 필수입니다.
                                이중산책줄 착용이 불가한 경우 산책서비스 이용이 제한됩니다. <br/>
                                반려동물 등록이 의무화 됨에 따라 외부 이동, 산책 시 인식표 착용 또한 의무사항이 되었습니다. <br/>
                                인식표 없이 산책을 희망하는 경우 펫시스터즈는 관련된 법령에 대한 의무가 없음을 알려드립니다.
                            </div>
                        </div>
                      </div>
                      <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-heading10">
                          <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapse10" aria-expanded="false" aria-controls="flush-collapse10">
                            펫시터의 개인 연락처를 알 수 있나요?
                          </button>
                        </h2>
                        <div id="flush-collapse10" class="accordion-collapse collapse" aria-labelledby="flush-heading10" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">
                                저희 펫시스터즈는 펫시터분들의 안전성과 개인정보 보안을 위하여 개인 연락처를 드릴 수 없습니다. <br/>
                                대신 펫시스터즈의 홈페이지 내의 채팅 메뉴를 통해 메시지를 주고 받을 수 있습니다.
                            </div>
                        </div>
                      </div>
                  </div>
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

</body>
</html>