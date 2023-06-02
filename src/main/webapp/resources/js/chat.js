// 더보기 클릭 이벤트
$(document).ready(function() {
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
  });
  




// 메세지 보내기 이벤트
  $(document).ready(function() {
    
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
  
    // 메시지 전송 함수
    function sendMessage() {

        // textarea의 내용을 가져옵니다.
        var messageText = $('.chatInput').val();

        if (messageText === '') {
            return; // 빈 메시지이면 함수를 종료합니다.
        }
    
        // 새로운 채팅 메시지를 생성합니다.
        var newChatMessage = `
            <div class="lineWrapperRight">
                <div class="messageDateArea">
                    <div class="messageDate">${getCurrentTime()}</div>
                </div>
                <div class="messageWrapper">
                    <div>
                        <p class="myMessageBox">${messageText}</p>
                    </div>
                </div>
            </div>
        `;
    
        // chatContentArea에 새로운 채팅 메시지 추가
        $('.chatContentArea').append(newChatMessage);
    
        // textarea 비우기
        $('.chatInput').val('');
        $('.textLength').text('0/1000');

        // 스크롤 맨 아래로 이동
        var element = $('.chatContentArea')[0];
        element.scrollTop = element.scrollHeight;

    }
  
    // 현재 시간을 가져오는 함수
    function getCurrentTime() {
        var now = new Date();
        var hours = now.getHours();
        var minutes = now.getMinutes();
        var meridiem = '';
      
        // 시간 포맷 조정
        if (hours >= 12) {
          meridiem = '오후';
          hours -= 12;
        } else {
          meridiem = '오전';
        }
      
        // 시간과 분에 대해 두 자리수로 포맷 조정
        hours = ('0' + hours).slice(-2);
        minutes = ('0' + minutes).slice(-2);
      
        return meridiem + ' ' + hours + ':' + minutes;
      }
      
    
    // 채팅 내용 입력 이벤트 호출
    $('.chatInput').keyup(checkTextareaLength);

});
