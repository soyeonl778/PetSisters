<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <link rel="stylesheet" href="/resources/css/member/supportForm.css">
  <jsp:include page="../common/common.jsp" />
  <title>펫시터지원폼</title>
</head>

<body>
  <div id="wrap">
  
      <jsp:include page="../common/header.jsp" />	
  
    <!-- 본문 시작 -->

    <main class="supportBody">
      <section class="supportTitle">
        <div style="width: 1000px; margin: 0px auto; padding-top: 158px;">
          <h2 style="font-size: 50px; font-weight: 600; color: rgb(85, 85, 85);">
            지원서 작성하기</h2>
        </div>
      </section>
      <section class="supportContentArea">
        <div class="supportContent">
          <form class="supportForm" action="insertSupport.me" method="post">

            <input type="hidden" name="userNo" value="${ loginUser.userNo }">

              <p style="font-size: 17px; font-weight: 600; color: rgb(85, 85, 85);">● 거주지 주소</p>
              <p style="margin-top: 10px; font-size: 13px; color: rgb(153, 153, 153);">시/군/구까지 입력해주세요</p>
              <div style="margin-top: 15px;">
                <input type="text" name="address" placeholder="예) 서울시 강남구 논현동" value="" required>
              </div>
              <p style="margin-top: 50px; font-size: 17px; 
              font-weight: 600; color: rgb(85, 85, 85);">● 거주지 유형</p>
              <div style="margin-top: 20px;">
                <input type="radio" id="10pyeong" name="pyeong" value="10" style="margin-left: 3px;" required>
                <label style="margin-left: 5px;" for="10pyeong" >10평 이하</label>
                <input type="radio" id="20pyeong" name="pyeong" value="20" style="margin-left: 20px;" required>
                <label style="margin-left: 5px;" for="20pyeong">11평 ~ 20평 이하</label>
                <input type="radio" id="30pyeong" name="pyeong" value="30" style="margin-left: 20px;" required>
                <label style="margin-left: 5px;" for="30pyeong">21평 ~ 30평 이하</label>
                <input type="radio" id="40pyeong" name="pyeong" value="40" style="margin-left: 20px;" required>
                <label style="margin-left: 5px;" for="40pyeong">31평 이상</label>
              </div>

              <p style="margin-top: 50px; font-size: 17px; 
              font-weight: 600; color: rgb(85, 85, 85);">● 본인을 포함한 가족구성원 흡연 여부</p>
              <div style="margin-top: 20px;">
                <input type="radio" id="smoking" name="smoke" value="Y" style="margin-left: 3px;" required>
                <label style="margin-left: 5px;" for="smoking">네, 흡연자가 있어요.</label>
                <input type="radio" id="non-smoking" name="smoke" value="N" style="margin-left: 20px;" required>
                <label style="margin-left: 5px;" for="non-smoking">아니오, 흡연자는 없습니다.</label>
              </div>
              
              <p style="margin-top: 50px; font-size: 17px; 
              font-weight: 600; color: rgb(85, 85, 85);">● 강아지 반려 경험 유무</p>
              <div style="margin-top: 20px;">
                <input type="radio" id="yes-myExperience" name="myExperience" value="Y" style="margin-left: 3px;" required>
                <label style="margin-left: 5px;" for="yes-myExperience">예, 강아지 반려 경험이 있습니다.</label>
                <input type="radio" id="no-myExperience" name="myExperience" value="N" style="margin-left: 20px;" required>
                <label style="margin-left: 5px;" for="no-myExperience">아니오, 강아지 반려 경험이 없습니다.</label>
              </div>

              <p style="margin-top: 50px; font-size: 17px; 
              font-weight: 600; color: rgb(85, 85, 85);">● 타인의 반려동물을 돌봐준 경험</p>
              <span style="font-size: 15px; margin-top: 10px; color: rgb(153, 153, 153);">
                자신의 반려동물이 아닌 친구, 다른 가족 구성원의 반려동물을 돌보았던 
                  경험이 있다면 구체적으로 적어주세요. (경험이 없다면 "없습니다" 라고 작성)
              </span>
              <textarea class="experienceArea" name="otherExperience" placeholder="타인의 반려동물을 돌봐준 경험에 대해서 알려주세요." required></textarea>

              <p style="margin-top: 50px; font-size: 17px; 
              font-weight: 600; color: rgb(85, 85, 85);">● 그 외 반려동물 관련 경력 또는 경험</p>
              <span style="font-size: 15px; margin-top: 10px; color: rgb(153, 153, 153);">
                봉사활동 동물 병원 근무 경험, 애견 카페 이용 경험, 호텔링/펫시터 이용 경험, 아르바이트 경험, 
                자격증 취득 여부 등을 구체적으로 적어주세요. (경험이 없다면 "없습니다" 라고 작성)</span>
              <textarea class="experienceArea" name="etcExperience" placeholder="그 외 반려동물 관련 경력 또는 경험에 대해서 알려주세요." required></textarea>

              <p style="margin-top: 50px; font-size: 17px; 
              font-weight: 600; color: rgb(85, 85, 85);">● 펫시터 활동 경력</p>
              <input type="radio" id="yes-petsitterExperience" name="petsitterExperience" value="Y" style="margin-left: 3px;" required>
              <label style="margin-left: 5px;" for="yes-petsitterExperience">예, 펫시터 활동 경험이 있습니다.</label>
              <input type="radio" id="no-petsitterExperience" name="petsitterExperience" value="N" style="margin-left: 20px;" required>
              <label style="margin-left: 5px;" for="no-petsitterExperience">아니오, 펫시터 활동 경험이 없습니다.</label>

              <p style="margin-top: 50px; font-size: 17px; 
              font-weight: 600; color: rgb(85, 85, 85);">● 동의 사항</p>
              <input type="checkbox" id="consent1" name="consent1" value="O" required> <label for="consent1" required>개인정보 수집/이용에 동의합니다.</label><br>
              <input type="checkbox" id="consent2" name="consent2" value="O" required> <label for="consent2" required>펫시터 활동을 위한 교육수료에 동의하며 평일 혹은 주말 중 하루 진행되는 교육 참여가 가능합니다.</label><br>
              <input type="checkbox" id="consent3" name="consent3" value="O" required> <label for="consent3" required>지원서에 기재된 내용은 모두 본인이 작성하였으며, 사실과 다름 없음을 확인했습니다.</label><br>
              <p style="font-size: 13px; color: rgb(153, 153, 153); 
              margin-left: 25px;">* 사실과 다를 경우, 합격이 취소될 수 있습니다.</p>
              <div id="supportSubmitArea">
                <button id="supportSubmit" type="submit" onclick="return validateForm();">최종 제출</button>
              </div>
            </form>

        </div>
      </section>
    </main>


    <script>
		    function validateForm() {
		    	
		    	  // textarea 입력체크
 	  		   	  var requiredTextareas = document.querySelectorAll('textarea[required]');
		    	  for (var i = 0; i < requiredTextareas.length; i++) {
		    	    if (requiredTextareas[i].value === '') {
		    	      console.log('textarea' + requiredTextareas[i]);
		    	      alert('입력되지 않은 항목이 있습니다.');
		    	      return false;
		    	    }
		    	  }
		    	  
		    	  // 거주지유형 선택체크
		    	  var pyeongRadios = document.getElementsByName('pyeong');
		    	  var pyeongChecked = false;
		    	  for (var i = 0; i < pyeongRadios.length; i++) {
		    		    if (pyeongRadios[i].checked) {
		    		    	pyeongChecked = true;
		    		      break;
		    		    }
		    	  }
	    		  if (!pyeongChecked) {
	    		    alert('거주지 유형이 선택되지 않았습니다.');
	    		    return false;
	    		  }
	    		  
	    		  // 흡연여부 선택체크
	    		  var smokeRadios = document.getElementsByName('smoke');
		    	  var smokeChecked = false;
	    		  for (var i = 0; i < smokeRadios.length; i++) {
	    			    if (smokeRadios[i].checked) {
	    			    	smokeChecked = true;
	    			      break;
	    			    }
	    			  }
	   			  if (!smokeChecked) {
	   			    alert('흡연 여부를 선택해주세요.');
	   			    return false;
	   			  }
	   			  
	   			  // 강아지 반려 경험 선택체크
	   			  var experienceRadios = document.getElementsByName('myExperience');
	   			  var experienceChecked = false;
	   			  for (var i = 0; i < experienceRadios.length; i++) {
	   			    if (experienceRadios[i].checked) {
	   			    	experienceChecked = true;
	   			      break;
	   			    }
	   			  }
	   			  if (!experienceChecked) {
	   			    alert('강아지 반려 경험 유무를 선택해주세요.');
	   			    return false;
	   			  }
	   			  
	   			  // 펫시터 활동 경력 선택체크
	   			  var petsitterExperienceRadios = document.getElementsByName('petsitterExperience');
	   			  var petsitterExperienceChecked = false;

	   			  for (var i = 0; i < petsitterExperienceRadios.length; i++) {
	   			    if (petsitterExperienceRadios[i].checked) {
	   			    	petsitterExperienceChecked = true;
	   			      break;
	   			    }
	   			  }
	   			  if (!petsitterExperienceChecked) {
	   			    alert('펫시터 활동 경력 유무를 선택해주세요.');
	   			    return false;
	   			  }

		    	  return true;
		    	}

    </script>
    

    <!-- 본문 끝 -->
    
    
        <jsp:include page="../common/footer.jsp" />
    

  </div>
  <!-- JavaScript Bundle with Popper -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>

</html>