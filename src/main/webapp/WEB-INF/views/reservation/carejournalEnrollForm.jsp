<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/careJournalEnrollForm.css">
<!-- 
<script src="/resources/js/careJournalEnrollForm.js"></script>
 -->
<title>돌봄일지 작성</title>
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
                  <h1 class="hTitle" align="center">돌봄 일지 작성</h1>
                  <form id="imForm" action="" method="post" enctype="multipart/form-data">
                    <div>
                      <div class="titleSection">
                        <div class="titleText">제목</div>
                        <input type="text" name="" id="" placeholder="제목을 입력해주세요" required>
                      </div>
                      <div class="descSection">
                        <div class="titleText">내용</div>
                        <textarea name="" id="" cols="30" rows="10" placeholder="돌봄 내용을 입력해주세요" required></textarea>
                      </div>
                    </div>

                    <div class="fileSection preview">
                      <label for="">첨부파일 : </label>
                      <input type="file" name="careFiles" id="btnAtt" multiple="multiple">
                      <div id="att_zone" data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
                    </div>


                    <div align="center" class="formBtn">
                      <button type="button" onclick="submitForm()" class="btn btn-primary">등록하기</button>
                      <button type="button" onclick="history.back()" class="btn btn-info">뒤로가기</button>
                    </div>
                  </form>
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
 <jsp:include page="../common/footer.jsp" />
 <script>
 window.onload = function () {
	  ( /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
	    imageView = function imageView(att_zone, btn) {

	      var attZone = document.getElementById(att_zone);
	      var btnAtt = document.getElementById(btn)
	      var sel_files = [];

	      // 이미지와 체크 박스를 감싸고 있는 div 속성
	      var div_style = 'display:inline-block;position:relative;'
	        + 'width:150px;height:120px;margin:5px;z-index:1';
	      // 미리보기 이미지 속성
	      var img_style = 'width:100%;height:100%;z-index:none';
	      // 이미지안에 표시되는 체크박스의 속성
	      var chk_style = 'width:20px;height:20px;position:absolute;font-size:24px;'
	        + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00; line-height: 16px; border-radius: 5px';

	      btnAtt.onchange = function (e) {
	        var files = e.target.files;
	        var fileArr = Array.prototype.slice.call(files)
	        for (f of fileArr) {
	          imageLoader(f);
	        }
	      }


	      // 탐색기에서 드래그앤 드롭 사용
	      attZone.addEventListener('dragenter', function (e) {
	        e.preventDefault();
	        e.stopPropagation();
	      }, false)

	      attZone.addEventListener('dragover', function (e) {
	        e.preventDefault();
	        e.stopPropagation();

	      }, false)

	      attZone.addEventListener('drop', function (e) {
	        var files = {};
	        e.preventDefault();
	        e.stopPropagation();
	        var dt = e.dataTransfer;
	        files = dt.files;
	        for (f of files) {
	          imageLoader(f);
	        }

	      }, false)



	      /*첨부된 이미리들을 배열에 넣고 미리보기 */
	      imageLoader = function (file) {
	        sel_files.push(file);
	        var reader = new FileReader();
	        reader.onload = function (ee) {
	          let img = document.createElement('img')
	          img.setAttribute('style', img_style)
	          img.src = ee.target.result;
	          attZone.appendChild(makeDiv(img, file));
	        }

	        reader.readAsDataURL(file);
	      }

	      /*첨부된 파일이 있는 경우 checkbox와 함께 attZone에 추가할 div를 만들어 반환 */
	      makeDiv = function (img, file) {
	        var div = document.createElement('div')
	        div.setAttribute('style', div_style)

	        var btn = document.createElement('input')
	        btn.setAttribute('type', 'button')
	        btn.setAttribute('value', 'x')
	        btn.setAttribute('delFile', file.name);
	        btn.setAttribute('style', chk_style);
	        btn.onclick = function (ev) {
	          var ele = ev.srcElement;
	          var delFile = ele.getAttribute('delFile');
	          for (var i = 0; i < sel_files.length; i++) {
	            if (delFile == sel_files[i].name) {
	              sel_files.splice(i, 1);
	            }
	          }

	          dt = new DataTransfer();
	          for (f in sel_files) {
	            var file = sel_files[f];
	            dt.items.add(file);
	          }
	          btnAtt.files = dt.files;
	          var p = ele.parentNode;
	          attZone.removeChild(p)
	        }
	        div.appendChild(img)
	        div.appendChild(btn)
	        return div
	      }
	    }
	  )('att_zone', 'btnAtt')
	  
	  
	  function submitForm() {
		  
		  let fileNames = [];
		  let careFiles = document.getElementById('btnAtt').files;
		  for(let i = 0; i < careFiles.length; i++) {
			  fileNames.push(careFiles[i].name);
		  }
		  
		  // 서버로 전송할 데이터 생성
		  var formData = new FormData();
		  for (var i = 0; i < careFiles.length; i++) {
		    formData.append('files[]', careFiles[i]);
		  }

		  // 서버로 데이터 전송
		  var xhr = new XMLHttpRequest();
		  xhr.open('POST', '서버 URL');
		  xhr.onreadystatechange = function() {
		    if (xhr.readyState === XMLHttpRequest.DONE && xhr.status === 200) {
		      // 요청이 성공적으로 완료됨
		      console.log('파일 업로드 성공');
		    }
		  };
		  xhr.send(formData);
		  
		  // 선택한 파일 이름 출력
		  console.log(fileNames);
		  
	  }
	} 
 </script>
</body>
</html>