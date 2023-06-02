<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="/resources/css/common/chat.css">
    <!-- 폰트어썸 아이콘 적용 -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <jsp:include page="../common/common.jsp" />
  <title>펫시터지원폼</title>
  <style>
  .fixed-top {
    position: static !important;
  }
  </style>
</head>

<body>
  <div id="wrap">
  
      <jsp:include page="../common/header.jsp" />	
  
    <!-- 본문 시작 -->

    <main class="chatArea">
                  <div class="chatBody">
                    <div class="chatLeftArea">
                      <div class="chatMyNameArea">
                        <div class="myProfileArea">
                          <img class="myProfileImage" src="/resources/img/chat/아발시이야.png" alt="profile">
                        </div>
                        <div class="chatMyName">아발시이야</div>
                      </div>  
                      <ul class="chatList">
                        <li class="chattingArea">
                          <a class="chatting" onclick="">
                            <div class="profileArea">
                              <img class="profileImage" src="/resources/img/chat/김제니.png" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">김제니</span>
                                <div class="subText">
                                  <span>연락없음</span>
                                  <span> · </span>
                                  <span>1분 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">죄송한데 연락하지 말아주세요 불편해요</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="/resources/img/chat/승호형프사.png" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">조승호</span>
                                <div class="subText">
                                  <span>이사</span>
                                  <span> · </span>
                                  <span>2분 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">사장님 식사는 잡쉈어?</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="/resources/img/chat/하두리.png" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">이소연</span>
                                <div class="subText">
                                  <span>바부</span>
                                  <span> · </span>
                                  <span>5분 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">쉬고 싶당</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="/resources/img/chat/트포-96974.jpg" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">김다은</span>
                                <div class="subText">
                                  <span>착한언니</span>
                                  <span> · </span>
                                  <span>10분 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">밥 뭐먹었어~?</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="/resources/img/chat/퍼지펫-06258.jpg" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">이주흔</span>
                                <div class="subText">
                                  <span>졸린언니</span>
                                  <span> · </span>
                                  <span>1시간 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">졸려용</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="/resources/img/chat/그림이사진2.jpg" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">임보영</span>
                                <div class="subText">
                                  <span>개키우는언니</span>
                                  <span> · </span>
                                  <span>5일 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">그림이는 혼자 잘놀아요~!</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" onclick="">
                            <div class="profileArea">
                              <img class="profileImage" src="/resources/img/chat/다나까.png" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">다나까</span>
                                <div class="subText">
                                  <span>호스트</span>
                                  <span> · </span>
                                  <span>1달 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">오이시쿠나레 오이시쿠나레 모에 모에 큐!</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_256-b36669d6dfa36e7f58fc53d9fdfe689e324263d3cb8f5e079cec249a70bf61fe.png" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">가나다</span>
                                <div class="subText">
                                  <span>펫시터</span>
                                  <span> · </span>
                                  <span>2달 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">다음에도 잘 부탁드려요</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_256-b36669d6dfa36e7f58fc53d9fdfe689e324263d3cb8f5e079cec249a70bf61fe.png" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">마바사</span>
                                <div class="subText">
                                  <span>펫시터</span>
                                  <span> · </span>
                                  <span>3달 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">감사합니다</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_256-b36669d6dfa36e7f58fc53d9fdfe689e324263d3cb8f5e079cec249a70bf61fe.png" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">호호호</span>
                                <div class="subText">
                                  <span>펫시터</span>
                                  <span> · </span>
                                  <span>5달 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">혹시 대형견 가능한가요?</span>
                              </div>
                            </div>
                          </a>
                        </li>
                        <li class="chattingArea">
                          <a class="chatting" href="">
                            <div class="profileArea">
                              <img class="profileImage" src="https://d1unjqcospf8gs.cloudfront.net/assets/users/default_profile_256-b36669d6dfa36e7f58fc53d9fdfe689e324263d3cb8f5e079cec249a70bf61fe.png" alt="profile">
                            </div>
                            <div class="previewArea">
                              <div class="previewTitleArea">
                                <span class="previewNickname">하하하</span>
                                <div class="subText">
                                  <span>펫시터</span>
                                  <span> · </span>
                                  <span>10달 전</span>
                                </div>
                              </div>
                              <div class="previewDescription">
                                <span class="descriptionText">다음에도 잘 부탁드립니다.</span>
                              </div>
                            </div>
                          </a>
                        </li>
                      </ul>
                    </div>


                    <section class="chatRightArea">
                      
                      <div class="chatNormalRoom">
                        <div class="chatNormalTop">
                          <div class="chatOpponentArea">
                            <div class="chatOpponentProfile">
                              <img class="OpponentImage" src="/resources/img/chat/김제니.png" alt="profile">
                              <div class="OpponentInfo">
                                <span>김제니</span>
                                <span class="proPetsitter">프로펫시터</span>
                              </div>
                            </div>
                            <div class="chatMoreArea">
                              <div class="chatMore">
                                <svg width="4" height="16" viewBox="0 0 4 16" fill="none" xmlns="http://www.w3.org/2000/svg">
                                  <path fill-rule="evenodd" clip-rule="evenodd" d="M2.0002 3.19998C2.7152 3.19998 3.3002 2.61498 
                                  3.3002 1.89998C3.3002 1.18498 2.7152 0.599976 2.0002 0.599976C1.2852 0.599976 0.700195 1.18498 
                                  0.700195 1.89998C0.700195 2.61498 1.2852 3.19998 2.0002 3.19998Z" fill="currentColor"></path>
                                  <path fill-rule="evenodd" clip-rule="evenodd" d="M2.0002 6.70001C1.2852 6.70001 0.700195 7.28501 
                                  0.700195 8.00001C0.700195 8.71501 1.2852 9.30001 2.0002 9.30001C2.7152 9.30001 3.3002 8.71501 
                                  3.3002 8.00001C3.3002 7.28501 2.7152 6.70001 2.0002 6.70001Z" fill="currentColor"></path>
                                  <path fill-rule="evenodd" clip-rule="evenodd" d="M2.0002 12.8C1.2852 12.8 0.700195 13.385 
                                  0.700195 14.1C0.700195 14.815 1.2852 15.4 2.0002 15.4C2.7152 15.4 3.3002 14.815 3.3002 
                                  14.1C3.3002 13.385 2.7152 12.8 2.0002 12.8Z" fill="currentColor"></path>
                                </svg>
                              </div>
                              <div class="moreOption" style="display: none;">
                                <div class="optionItem">채팅방 나가기</div>
                              </div>
                            </div>
                          </div>
                          <div class="chatContentArea">
                            <div class="dayArea">
                              <div class="dateText">2021년 3월18일</div>
                            </div>
                            <div id="scroll1" class="containment left">
                              <div class="lineWrapperLeft">
                                <div class="messageProfileArea">
                                  <img class="messageProfileImage" src="/resources/img/chat/김제니.png">
                                </div>
                                <div class="messageWrapper">
                                  <div>
                                    <!-- 이미지 동적으로 받아올 때 사이즈 조절 해야함 -->
                                    <img src="/resources/img/chat/멈춰!.gif">
                                  </div>
                                </div>
                                <div class="messageDateArea">
                                  <div class="messageDate">오전 12:16</div>
                                </div>
                              </div>
                            </div>
                            <div id="scroll2" class="containment left">
                              <div class="lineWrapperLeft">
                                <div class="messageProfileArea">
                                  <img class="messageProfileImage" src="/resources/img/chat/김제니.png">
                                </div>
                                <div class="messageWrapper">
                                  <div>
                                    <p class="opMessageBox">죄송한데 연락하지 말아주세요 불편해요</p>
                                  </div>
                                </div>
                                <div class="messageDateArea">
                                  <div class="messageDate">오전 12:17</div>
                                </div>
                              </div>
                            </div>
                            <div id="scroll3" class="containment right">
                              <div class="lineWrapperRight">
                                <div class="messageDateArea">
                                  <div class="messageDate">오전 3:16</div>
                                </div>
                                <div class="messageWrapper">
                                  <div>
                                    <p class="myMessageBox">제니야..</p>
                                  </div>
                                </div>
                              </div>
                            </div>
                            <div id="scroll4" class="containment right">
                              <div class="lineWrapperRight">
                                <div class="messageDateArea">
                                  <div class="messageDate">오전 3:17</div>
                                </div>
                                <div class="messageWrapper">
                                  <div>
                                    <p class="myMessageBox">자니..?</p>
                                  </div>
                                </div>
                              </div>
                            </div>
                          </div>
                        </div>
                        <form class="chatNormalBottom">
                          <textarea placeholder="메시지를 입력해주세요" class="chatInput"></textarea>
                          <div class="chatFormOptionArea">
                            <div class="chatFormSubmenu">
                              <label class="optionWrapper">
                                <i class="fas fa-images fa-lg" style="color: #868b94;"><input type="file" multiple="" accept="image/png, image/jpeg, image/gif"></i>
                                
                              </label>
                            </div>
                            <button id="submitButton" class="disable send" disabled>전송</button>
                          </div>
                          <span class="textLength">0/1000</span>
                        </form>

                      </div>
                     
                      <!-- 초기화면 나중에 동적으로 처리 -->
                      <!--
                      <div class="chatEmptyBox">
                        <svg width="96" height="81" viewBox="0 0 96 81" fill="none" xmlns="http://www.w3.org/2000/svg">
                          <path d="M33.0004 0C15.0185 0 0 13.0729 0 29.6567C0 40.358 6.27606 49.642 15.5279 
                          54.8364L13.8397 64.5305C13.7353 65.1299 13.928 65.7446 14.3535 66.1751L14.3573 
                          66.179L14.3724 66.1939C14.3853 66.2066 14.4061 66.2267 14.4326 66.2506C14.4869 
                          66.2995 14.568 66.3668 14.6744 66.435C14.9082 66.5849 15.1569 66.6709 15.3962 
                          66.7073C15.7666 66.7637 16.0661 66.6901 16.1358 66.673L16.1413 66.6716C16.3174 
                          66.6287 16.5003 66.558 16.6232 66.51C16.9302 66.3901 17.5014 66.1524 18.5787 
                          65.6955C20.7218 64.7866 24.9636 62.9696 33.3799 59.3641C51.1931 59.1817 66.0008 
                          46.1763 66.0008 29.7093C66.0008 13.1297 50.987 0 33.0004 0Z" fill="#DCDEE3"></path>
                          <path d="M72.2312 29.4385C72.2312 48.2002 56.7085 62.679 37.8858 64.8408C44.0168 
                          70.067 52.3818 73.2792 61.479 73.3633C70.2216 76.9749 74.6257 78.7941 76.8498 
                          79.7036C77.9674 80.1606 78.5583 80.3977 78.8749 80.517C79.0036 80.5654 79.1863 
                          80.6333 79.3599 80.6741L79.3652 80.6754C79.4339 80.6917 79.7238 80.7604 80.0821 
                          80.7078C80.313 80.6739 80.5564 80.5935 80.7883 80.4501C80.8943 80.3846 80.9756 
                          80.3195 81.0307 80.2717C81.0459 80.2585 81.0593 80.2464 81.0704 80.2362C81.0789 
                          80.2284 81.0861 80.2217 81.0918 80.2163L81.1071 80.2017L81.111 80.1978C81.5557 
                          79.764 81.7577 79.1325 81.6467 78.5179L79.9012 68.8524C89.4699 63.674 96 54.3943 
                          96 43.6557C96 29.1206 84.0984 17.353 68.7254 14.6059C70.9682 19.0808 72.2312 
                          24.0881 72.2312 29.4385Z" fill="#DCDEE3"></path>
                        </svg>
                        <div class="emptyDescription">채팅할 상대를 선택해주세요.</div>
                      </div>
                      -->
                      
                      
                    </section>
                  </div>
                </main>
    

    <!-- 본문 끝 -->
    
    
        <jsp:include page="../common/footer.jsp" />
    

  </div>
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <!-- chat.js -->
  <script src="/resources/js/chat.js"></script>
</body>

</html>