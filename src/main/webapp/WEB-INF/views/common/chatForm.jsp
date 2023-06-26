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
  <title>채팅</title>
  <style>
  .fixed-top {
    position: static !important;
  }
  </style>

  <!-- jQuery 라이브러리 -->
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
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
              <img class="myProfileImage" src="${loginUser.filePath}" alt="profile">
            </div>
            <div class="chatMyName">${loginUser.userName}</div>
          </div>



          <ul class="chatList">

            <!-- 채팅목록 하드코딩 더미데이터 -->
            <!--
            <li class="chattingArea">
              <div class="chatting enterRoomList" onclick="enterRoom(this)">
                <div class="profileArea">
                  <img class="profileImage" src="/resources/img/chat/김제니.png" alt="profile">
                  <span class="statusIndicator"></span>
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
              </div>
            </li>
            <li class="chattingArea">
              <a class="chatting" href="">
                <div class="profileArea">
                  <img class="profileImage" src="/resources/img/chat/승호형프사.png" alt="profile">
                  <span class="statusIndicator"></span>
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
                  <span class="statusIndicator online"></span>
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
                  <span class="statusIndicator online"></span>
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
                  <span class="statusIndicator"></span>
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
                  <span class="statusIndicator online"></span>
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
                  <span class="statusIndicator"></span>
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
                  <span class="statusIndicator"></span>
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
                  <span class="statusIndicator online"></span>
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
                  <span class="statusIndicator online"></span>
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
                  <span class="statusIndicator"></span>
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
            -->








          </ul>
        </div>


        <section class="chatRightArea">
          
          <div class="chatNormalRoom">
            <div class="chatNormalTop">

              <div class="chatOpponentArea">
                <div class="chatOpponentProfile">
                  <img class="OpponentImage" src="" alt="profile">
                  <div class="OpponentInfo">
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
                  <div class="chatExitSection" style="display: none;">
                    <div class="chatExitArea">
                      <div>
                        <div class="chatExit">
                          <div class="chatExitContent">확인 버튼을 누르면 채팅방을 나갑니다.<br>정말 나가시겠어요?</div>
                          <div class="button-wrapper">
                            <button class="cancelBtn">취소</button>
                            <button class="okButton">확인</button>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>



              <div class="chatContentArea">
                <div class="dayArea">
                  <div class="dateText">2023년 6월14일</div>
                </div>

                <!-- 좌측 이미지 -->
                <!--
                <div id="scroll1" class="containment left">
                  <div class="lineWrapperleft">
                    <div class="messageProfileArea">
                      <img class="messageProfileImage" src="/resources/img/chat/김제니.png">
                    </div>
                    <div class="messageWrapper">
                      <div>
                        <img src="/resources/img/chat/멈춰!.gif">
                      </div>
                    </div>
                    <div class="messageDateArea">
                      <div class="messageDate">오전 12:16</div>
                    </div>
                  </div>
                </div>

                <div id="scroll2" class="containment left">
                  <div class="lineWrapperleft">
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
                -->






              </div>
            </div>

            <form class="chatNormalBottom">
              <textarea placeholder="메시지를 입력해주세요" class="chatInput"></textarea>
              <div class="chatFormOptionArea">
                <div class="chatFormSubmenu">
                  <label class="optionWrapper">
                    <!-- <i class="fas fa-images fa-lg" style="color: #868b94;">
                      <input type="file" multiple="" accept="image/png, image/jpeg, image/gif">
                    </i> -->
                    
                  </label>
                </div>
                <button id="submitButton" class="disable send" disabled>전송</button>
              </div>
              <span class="textLength">0/1000</span>
            </form>

          </div>
          

          <!-- 아무 채팅방도 선택하지 않은 빈박스 초기화면 -->
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
          
          
          
        </section>
      </div>
    </main>
    

    <!-- 본문 끝 -->
    
        <jsp:include page="../common/footer.jsp" />

  </div>

<script>
  



</script>






<!---------------------------------- 채팅방 목록 불러오기 --------------------------------->
<script>

  // 채팅방 선택 css 를 위한 전역변수
  let selectedRoom = null;

    // 화면 로딩 된 후
    $(window).on('load', function(){

      getRoomList();
          
      // 2초에 한번씩 채팅 목록 불러오기(실시간 알림 전용)
      setInterval(function(){
        // 방 목록 불러오기
        getRoomList();
        
        /*
        // 읽지 않은 메세지 총 갯수가 0개가 아니면
        if(countAll != 0){
          // 채팅 icon 깜빡거리기
          $('.chatIcon').addClass('iconBlink');
          play();
        }else{
          // 깜빡거림 없애기
          $('.chatIcon').removeClass('iconBlink');
        }
        */
      },2000);
    });

  // 채팅 방 목록 가져오기
  function getRoomList() {

    $.ajax({
      url:"chatRoomList.do",
      data:{
          userNo:"${loginUser.userNo}"
      },
      dataType:"json",
      async:false, // async : false를 줌으로써 비동기를 동기로 처리 할 수 있다.
      success:function(data){

        // 현재 로그인 된 User들
        let loginList = "";
          
        // 로그인 된 User들을 가져온다.
        $.ajax({
          url:"chatSession.do",
          data:{
          },
          async:false,
          dataType:"json",
          success:function(data){
            for(var i = 0; i < data.length; i++){
                loginList += data[i];
            }
          }
        });
          
        $chatWrap = $(".chatList");
        $chatWrap.html("");

        
        if(data.length > 0){
          
          // 읽지 않은 메세지 초기화
          countAll = 0;
          
          // 태그 동적 추가
          for(var i in data){

            // ---------------- 공통코드 전역변수 영역 ----------------
            // 채팅 목록 영역 생성
            var $chattingArea = $("<li class='chattingArea'></li>");
            // 프로필 영역 생성
            var $profileArea = $("<div class='profileArea'></div>");
            // 미리보기 영역 생성
            var $previewArea = $("<div class='previewArea'></div>");
            // 미리보기 제목 영역 생성
            var $previewTitleArea = $("<div class='previewTitleArea'></div>");
            // 미리보기 설명 영역 생성
            var $previewDescription = $("<div class='previewDescription'></div>");
          

            // ---------------- 자신이 요청자 입장일 때 ----------------
            if(data[i].userNo == "${loginUser.userNo}") {

              // 채팅목록하나 생성
              var $chatting = $("<div class='chatting enterRoomList' onclick='enterRoom(this)'></div>").attr("rno",data[i].roomNo).attr("uno",data[i].masterNo);
              
              // profileArea 에 profileImage 추가
              var $img = $("<img class='profileImage'>").attr("src", data[i].masterPic);
              $profileArea.append($img);
              
              // 현재 상대방이 로그인 상태 일 때
              if(loginList.indexOf(data[i].masterNo) != -1) {
                // online class속성 부여해서 온라인 체크등 표시
                $profileArea.append("<span class='online statusIndicator'></span>");
              // 현재 상대방이 로그아웃 상태 일 때
              } else {
                // online class속성 제거해서 오프라인 체크등 표시
                $profileArea.append("<span class='statusIndicator'></span>");
              }

              // 상대방 닉네임 표시
              $previewTitleArea.append("<span class='previewNickname'>" + data[i].masterNickname + "</span>");

              // 상대방 프로펫시터 여부 표시
              if (data[i].masterPro == "Y") {
                $previewTitleArea.append("<span class='subText proPetsitter'>프로펫시터</span>");
              } else if(data[i].masterPet == "Y") {
                $previewTitleArea.append("<span class='subText petsitter'>펫시터</span>");
              }
              
              // 마지막 메세지 미리보기 표시
              $previewDescription.append("<span class='descriptionText'>" + data[i].lastMassage + "</span>");
              
              // 미리보기 제목 영역과 설명 영역을 미리보기 영역에 추가
              $previewArea.append($previewTitleArea);
              $previewArea.append($previewDescription);

              // 프로필 영역과 미리보기 영역을 채팅목록하나에 추가
              $chatting.append($profileArea);
              $chatting.append($previewArea);

              // 채팅목록하나를 chattingArea 에 추가
              $chattingArea.append($chatting);

              // 채팅목록이 모두 생성된 후에 선택된 방의 정보와 일치하는 요소에 selected 클래스 추가
              if (selectedRoom && parseInt(selectedRoom.roomNo) === data[i].roomNo) {
                $chatting.addClass("selected");
              }

            }

            // ---------------- 자신이 상대방 입장일 때 ----------------
            else {

              // 채팅목록하나 생성
              var $chatting = $("<div class='chatting enterRoomList' onclick='enterRoom(this)'></div>").attr("rno",data[i].roomNo).attr("uno",data[i].userNo);
              
              // profileArea 에 profileImage 추가
              var $img = $("<img class='profileImage'>").attr("src", data[i].userPic);
              $profileArea.append($img);
              // 현재 요청자가 로그인 상태 일 때
              if(loginList.indexOf(data[i].userNo) != -1) {
                // online class속성 부여해서 온라인 체크등 표시
                $profileArea.append("<span class='online statusIndicator'></span>");
              // 현재 요청자가 로그아웃 상태 일 때
              } else {
                // online class속성 제거해서 오프라인 체크등 표시
                $profileArea.append("<span class='statusIndicator'></span>");
              }

              // 상대방 닉네임 표시
              $previewTitleArea.append("<span class='previewNickname'>" + data[i].userNickname + "</span>");

              // 상대방 프로펫시터 여부 표시
              if (data[i].userPro == "Y") {
                $previewTitleArea.append("<span class='subText proPetsitter'>프로펫시터</span>");
              } else if(data[i].userPet == "Y") {
                $previewTitleArea.append("<span class='subText petsitter'>펫시터</span>");
              }
              
              // 마지막 메세지 미리보기 표시
              $previewDescription.append("<span class='descriptionText'>" + data[i].lastMessage + "</span>");
              
              // 미리보기 제목 영역과 설명 영역을 미리보기 영역에 추가
              $previewArea.append($previewTitleArea);
              $previewArea.append($previewDescription);

              // 프로필 영역과 미리보기 영역을 채팅목록하나에 추가
              $chatting.append($profileArea);
              $chatting.append($previewArea);

              // 채팅목록하나를 chattingArea 에 추가
              $chattingArea.append($chatting);

              // 채팅목록이 모두 생성된 후에 선택된 방의 정보와 일치하는 요소에 selected 클래스 추가
              if (selectedRoom && parseInt(selectedRoom.roomNo) === data[i].roomNo) {
                $chatting.addClass("selected");
              }

            }

            // chattingArea 를 chatList 에 추가
            $(".chatList").append($chattingArea);

            
            /*
            // 읽지 않은 메세지가 0이 아닐 때
            if(data[i].unReadCount != 0){
              $span = $("<span class='notRead'>").text(data[i].unReadCount);
            }else{
              $span = $("<span>");
            }
            
            $div.append($img);
            $div.append($divs);
            $div.append($span);
            
            $chatWrap.append($div);
            
            // String을 int로 바꿔주고 더해준다.
            countAll += parseInt(data[i].unReadCount);
            */
          }
        }
      }
    });
  }








  // ---------------------------------- 채팅방 열기 ---------------------------------


  // 필요한 전역변수
  let websocket;
  let roomNo;


  // ---------------- 웹소켓 관련 ----------------


  //입장 버튼을 눌렀을 때 호출되는 함수
  function connect() {
      // 웹소켓 주소
      var wsUri = "ws://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath}/websocket/echo.do";
      // 소켓 객체 생성
      websocket = new WebSocket(wsUri);
      //웹 소켓에 이벤트가 발생했을 때 호출될 함수 등록
      websocket.onopen = onOpen;
      websocket.onmessage = onMessage;

      // 스크롤 맨 아래로 이동
      var element = $('.chatContentArea')[0];
      element.scrollTop = element.scrollHeight;
  }

  // 웹 소켓에 연결되었을 때 호출될 함수
  function onOpen() {

    console.log("웹소켓 연결 성공!");

    // ENTER-CHAT 이라는 메세지를 보내어, Java Map에 session 추가
    const data = {
      "roomNo": roomNo,
      "userNickname" : "${ loginUser.userNickname }",
      "userNo" : "${ loginUser.userNo }",
      "message" : "ENTER-CHAT",
    };
    let jsonData = JSON.stringify(data);
    websocket.send(jsonData);

  }

  // 메시지 전송 함수
  function sendMessage() {

    // textarea의 내용을 가져옵니다.
    var messageText = $('.chatInput').val();

    if (messageText === '') {
        return; // 빈 메시지이면 함수를 종료합니다.
    }

    var currentDate = new Date();
    currentDate.setHours(currentDate.getHours() + 9);
    var formattedDate = currentDate.toISOString();

    const data = {
        "roomNo" : roomNo,
        "userNickname" : "${ loginUser.userNickname }",
        "userNo" : "${ loginUser.userNo }",
        "message"   : messageText,
        "createDate" : formattedDate
    };

    CheckLR(data);

    let jsonData = JSON.stringify(data);

    if (websocket.readyState === WebSocket.OPEN) {
      websocket.send(jsonData);
    } else {
      console.log("웹소켓 연결이 닫혀 있습니다.");
    }

    // // 새로운 채팅 메시지를 생성합니다.
    // var newChatMessage = '<div class="lineWrapperRight">' +
    //               '<div class="messageDateArea">' +
    //               '<div class="messageDate"></div>' +
    //               '</div>' +
    //               '<div class="messageWrapper">' +
    //               '<div>' +
    //               '<p class="myMessageBox">' + messageText + '</p>' +
    //               '</div>' +
    //               '</div>' +
    //               '</div>';

    // // chatContentArea에 새로운 채팅 메시지 추가
    // $('.chatContentArea').append(newChatMessage);

    // textarea 비우기
    $('.chatInput').val('');
    $('.textLength').text('0/1000');

    // 스크롤 맨 아래로 이동
    var element = $('.chatContentArea')[0];
    element.scrollTop = element.scrollHeight;

  }

  // * 2 메세지 수신
  function onMessage(evt) {

    let receive = evt.data.split(",");
    let profileImageSrc = $(".OpponentImage").attr("src");
    let roomNoCheck = $(".OpponentRoomNo").attr("value");

    var currentDate = new Date();
    currentDate.setHours(currentDate.getHours() + 9);
    var formattedDate = currentDate.toISOString();

    const data = {
      "roomNo" : receive[0],
      "userNickname" : receive[1],
      "userNo" : receive[2],
      "message" : receive[3],
      "createDate" : formattedDate
    };

    console.log("onMessage -> data : ", data);
              
    if(data.roomNo === roomNoCheck && data.userNo != "${ loginUser.userNo }") {
        CheckLR(data, profileImageSrc);
    }

    console.log("메세지 수신:", evt.data);
    $('.chatContentArea').scrollTop($('.chatContentArea')[0].scrollHeight);
  }

  // ---------------- 채팅 방 클릭 시 => 우측 chatRightArea 열어주기 ----------------
  $(document).on("click", ".enterRoomList",function(){
    
    // 기존에 선택된 방의 selected 클래스 제거
    $(".enterRoomList.selected").removeClass("selected");
    // 현재 선택된 방의 selected 클래스 추가
    $(this).addClass("selected");

    // 선택된 방의 정보를 전역 변수에 저장
    selectedRoom = {
      roomNo: $(this).attr("rno")
    };

    // 클릭한 chattingArea 로부터 이미지, 닉네임, 펫시터등급 가져오기
    var rno = $(this).attr("rno");
    var profileImageSrc = $(this).find(".profileImage").attr("src");
    var nickname = $(this).find(".previewNickname").text();
    var grade = $(this).find(".subText").text();
    
    // 가져온 정보를 사용하여 프로필 이미지, 닉네임, 펫시터 등급 동적으로 생성
    $(".OpponentImage").attr("src", profileImageSrc);
    $(".OpponentInfo").empty(); // 기존의 요소들을 비워줍니다.
    $(".OpponentInfo").append($("<input class='OpponentRoomNo' type='hidden'>"));
    $(".OpponentRoomNo").val(rno);
    $(".OpponentInfo").append($("<span class='OpponentNickname'></span>"));
    $(".OpponentNickname").text(nickname);
    
    // 가져온 펫시터등급 정보로 동적으로 표기
    if(grade === "프로펫시터") {
      $(".OpponentInfo").append($("<span class='proPetsitter'>프로펫시터</span>"));
    } else if(grade === "펫시터") {
      $(".OpponentInfo").append($("<span class='petsitter'>펫시터</span>"));
    }

    // 최하단 자동스크롤
    $('.chatContentArea').scrollTop($('.chatContentArea')[0].scrollHeight);

    /*
        $(".chatContainer").toggleClass("display-none");
        $(this).parent().parent().toggleClass("display-none");
        // 이름 추가
        $("#setName").html($(this).children('div').html());
        // 사진 추가
        $("#setPic").attr("src",$(this).children('img').attr('src'));
        // 스크롤바 아래 고정
      $('div.chatMiddle').scrollTop($('div.chatMiddle').prop('scrollHeight'));
        // 로그인 상태 일 때 
        if($(this).hasClass('chatList_box')){
            // 점 표시
          $('#loginOn').addClass('profile_img_Container');
        }
        // 로그아웃 상태 일 때
        else{
            // 점 빼기
            $('#loginOn').removeClass('profile_img_Container');
        }
    */
  });



  // ---------------- 채팅 방 클릭 시 => 해당 방의 메세지 불러오기 ----------------

  // 채팅 방 클릭 시 방번호 배정 후 웹소켓 연결
  function enterRoom(obj) {

    if (websocket != null) {
      websocket.close(); 
    }

    // 현재 html에 추가되었던 동적 태그 전부 지우기
    $('.chatEmptyBox').css('display', 'none');
    $('.chatNormalRoom').css('display', 'flex');
    $(".chatContentArea").html("");

    // rno 속성값으로 방번호 추출
    roomNo = obj.getAttribute("rno");
    // obj 객체의 .profileImage 사진 경로 추출
    var profileImageSrc = $(obj).find(".profileImage").attr("src");

    // 해당 채팅 방의 메세지 목록 불러오기
    $.ajax({
      url: roomNo + ".do",
      data: {
        userNo:"${loginUser.userNo}"
      },
      async:false,
      dataType:"json",
      success:function(data){
        for(var i = 0; i < data.length; i++){
          // 송수신 종류를 검사하는 함수를 호출해서 채팅 목록 동적 추가 (사진경로도 전송)
          CheckLR(data[i], profileImageSrc);
        }
      }
    });

    // 웹소켓 연결
    connect();
  }

  
  



  // 추가 된 것이 내가 보낸 것인지, 상대방이 보낸 것인지 송수신 종류 검사
  function CheckLR(data, profileImageSrc) {
    // userNo 이 loginSession의 userNo 과 다르면 왼쪽, 같으면 오른쪽
    const LR = (data.userNo != "${ loginUser.userNo }") ? "left" : "right";
    appendMessageTag(LR, data.userNo, data.message, data.createDate, profileImageSrc);
  }

  // 채팅 메시지 태그 추가
  function appendMessageTag(LR, userNo, message, createDate, profileImageSrc) {

    // ---------------- 시간을 오전/오후 형식으로 표현하기 ----------------
    // 시간형식에서 시분초 추출
    const time = String(createDate).slice(11, 19);
    const hour = time.slice(0, 2);
    const minute = time.slice(3, 5);
    const second = time.slice(6, 8);

    // console.log(time);
    // console.log(hour);
    // console.log(minute);
    // console.log(second);

    // 오전/오후 표시를 위한 변수
    let period;
    
    // 오전/오후 판단
    if (Number(hour) >= 12) {
      period = "오후";
    } else {
      period = "오전";
    }
    
    // 12시간 형식으로 변환
    let hour12 = hour % 12;
    if (hour12 === 0) {
      hour12 = 12;
    }
    
    // 변수에 담기
    const formattedTime = period + " " + hour12 + ":" + minute + ":" + second;
    // console.log(formattedTime);

    // 좌측 메시지 추가
    if (LR === "left") {
      const $chatContainer = $("<div>").addClass("containment left");
      const $lineWrapper = $("<div>").addClass("lineWrapperLeft");
      const $messageProfileArea = $("<div>").addClass("messageProfileArea");
      const $profileImage = $("<img>").addClass("messageProfileImage").attr("src", profileImageSrc);
      const $messageWrapper = $("<div>").addClass("messageWrapper");
      const $messageContainer = $("<div>");
      const $messageParagraph = $("<p>").addClass("opMessageBox").text(message);
      const $messageDateArea = $("<div>").addClass("messageDateArea");
      const $messageDate = $("<div>").addClass("messageDate").text(formattedTime);

      $messageContainer.append($messageParagraph);
      $messageWrapper.append($messageContainer);
      $messageProfileArea.append($profileImage);
      $lineWrapper.append($messageProfileArea);
      $lineWrapper.append($messageWrapper);
      $messageDateArea.append($messageDate);
      $lineWrapper.append($messageDateArea);
      $chatContainer.append($lineWrapper);

      $(".chatContentArea").append($chatContainer);
    }
    
    // 우측 메시지 추가
    else if (LR === "right") {
      const $chatContainer = $("<div>").addClass("containment right");
      const $lineWrapper = $("<div>").addClass("lineWrapperRight");
      const $messageDateArea = $("<div>").addClass("messageDateArea");
      const $messageDate = $("<div>").addClass("messageDate").text(formattedTime);
      const $messageWrapper = $("<div>").addClass("messageWrapper");
      const $messageContainer = $("<div>");
      const $messageParagraph = $("<p>").addClass("myMessageBox").text(message);

      $messageContainer.append($messageParagraph);
      $messageWrapper.append($messageContainer);
      $messageDateArea.append($messageDate);
      $lineWrapper.append($messageDateArea);
      $lineWrapper.append($messageWrapper);
      $chatContainer.append($lineWrapper);

      $(".chatContentArea").append($chatContainer);
    }

  }



  // ---------------- 채팅방 닫기 ----------------
  $(document).ready(function() {
    // 더보기 클릭 이벤트
    var chatMore = $('.chatMore');
    var moreOption = $('.moreOption');
    var isOptionVisible = false;
  
    function handleClick() {
      if (isOptionVisible) {
        moreOption.hide();
        isOptionVisible = false;
      } else {
        moreOption.show();
        isOptionVisible = true;
      }
    }
  
    function handleOutsideClick(event) {
      if (!$(event.target).closest('.chatMoreArea').length) {
        moreOption.hide();
        isOptionVisible = false;
      }
    }
  
    chatMore.click(handleClick);
    $(document).click(handleOutsideClick);

    // "채팅방 나가기" 버튼 클릭 시 이벤트 핸들러
    $('.optionItem').on('click', function() {

        // chatExitSection을 보이도록 설정
        $('.chatExitSection').show();
    });

      // chatNormalRoom 섹션을 숨기고 chatEmptyBox 섹션을 표시
      
    // Ajax 요청을 보내는 부분
    $('.okButton').on('click', function() {

      // 초기화면으로 변경
      $('.chatNormalRoom').hide();
      $('.chatEmptyBox').css('display', 'flex');
      $('.chatExitSection').hide();

      if (websocket.readyState === WebSocket.OPEN) {
        websocket.close(); 
        console.log("WebSocket 연결 해제 완료");
      }
      
      // ----- 채팅방 나가기 ajax 나중에 구현예정 -----
      // $.ajax({
      //   url: '채팅방_삭제_URL', // 채팅방 삭제를 처리하는 서버의 URL을 입력해주세요
      //   type: 'POST', // 요청 방식을 선택 (GET, POST 등)
      //   dataType: 'json', // 서버 응답의 데이터 타입 (json, xml 등)
      //   data: {
      //     chatRoomId: '채팅방_ID' // 삭제할 채팅방의 ID를 전달해주세요
      //   },
      //   success: function(response) {
      //     // 성공적으로 요청을 처리한 경우 실행할 코드
      //     console.log('채팅방이 삭제되었습니다.');
      //   },
      //   error: function(xhr, status, error) {
      //     // 요청 처리 중에 에러가 발생한 경우 실행할 코드
      //     console.error('채팅방 삭제 실패:', error);
      //   }
      // });
    });

    // cancelBtn 클릭 시 이벤트 핸들러
    $('.cancelBtn').on('click', function() {
      // chatExitSection을 숨김
      $('.chatExitSection').hide();
    });
    
    // // 콘솔에 WebSocket 연결 상태 출력
    // if(websocket.readyState = 2) {
    //   console.log("WebSocket 연결 해제 완료");
    // }

  // ---------------- 메세지 보내기 이벤트 ----------------
    
    $('.chatContentArea').scrollTop($('.chatContentArea')[0].scrollHeight);


    // 채팅 내용 입력 이벤트
    function updateSubmitButtonState() {
        const textarea = $('.chatInput');
        const submitButton = $('#submitButton');
        const textLength = $('.textLength');
        const length = textarea.val().trim().length;
    
        submitButton.prop('disabled', length === 0 || length > 1000);
        submitButton.toggleClass('disable', length === 0 || length > 1000);
    
        textLength.text(length + '/1000');
    }
    
    function checkTextareaLength() {
        // textarea 값이 변경될 때마다 실행되는 이벤트 핸들러
        updateSubmitButtonState();
    }
    
    // submitButton 클릭 이벤트 핸들러를 추가합니다.
    $('#submitButton').click(function(event) {
        event.preventDefault(); // 폼의 기본 동작을 막습니다.
        sendMessage();
        updateSubmitButtonState();
    });

    // textarea keydown 이벤트 핸들러를 추가합니다.
    $('.chatInput').keydown(function(event) {
        if (event.keyCode === 13 && !event.shiftKey) {
            event.preventDefault(); // 엔터 키의 기본 동작을 막습니다.
            sendMessage();
            updateSubmitButtonState();
        }
    });



    // 채팅 내용 입력 이벤트 호출
    $('.chatInput').keyup(checkTextareaLength);

  });
</script>


  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    <!-- chat.js -->
  <script src="/resources/js/chat.js"></script>
</body>

</html>