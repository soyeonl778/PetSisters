window.onload = function () {
    /* att_zone : 이미지들이 들어갈 위치 id, btn : file tag id */
    var imageView = function imageView(att_zone, btn) {

      var attZone = document.getElementById(att_zone);
      var btnAtt = document.getElementById(btn)
      var sel_files = [];
      
      // 이미지와 체크 박스를 감싸고 있는 div 속성
      var div_style = 'display:inline-block;position:relative;'
        + 'width:150px;height:150px;margin:5px;z-index:1';
      // 미리보기 이미지 속성
      var img_style = 'width:100%;height:100%;z-index:none';
      // 이미지안에 표시되는 체크박스의 속성
      var chk_style = 'width:20px;height:20px;position:absolute;font-size:24px;'
        + 'right:0px;bottom:0px;z-index:999;background-color:rgba(255,255,255,0.1);color:#f00; line-height: 20px; border-radius: 5px';

      btnAtt.onchange = function (e) {
        var files = e.target.files;
        var fileArr = Array.prototype.slice.call(files)
        for(var i = 0; i < fileArr.length; i++) {
          imageLoader(fileArr[i]);
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
        e.preventDefault();
        e.stopPropagation();
        var dt = e.dataTransfer;
        files = dt.files;
        for (var i = 0; i < files.length; i++) {
          imageLoader(files[i]);
        }

      }, false)



      /*첨부된 이미지들을 배열에 넣고 미리보기 */
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
      var makeDiv = function (img, file) {
        var div = document.createElement('div');
        div.setAttribute('style', div_style);

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

          var dt = new DataTransfer();
          for (var i = 0; i < sel_files.length; i++) {
            var file = sel_files[i];
            dt.items.add(file);
          }
          btnAtt.files = dt.files;
          var p = ele.parentNode;
          attZone.removeChild(p)
        };

        div.appendChild(img)
        div.appendChild(btn)
        return div
      };

      // 파일 선택 버튼이 클릭될 때마다 숨겨진 파일 입력 요소(hidden file input element) 생성
      btnAtt.onclick = function () {
        var hiddenInput = document.createElement('input');
        hiddenInput.setAttribute('type', 'file');
        hiddenInput.setAttribute('hidden', 'true');
        hiddenInput.setAttribute('multiple', 'true');
        hiddenInput.onchange = function (e) {
          var files = e.target.files;
          var fileArr = Array.prototype.slice.call(files);
          for (var i = 0; i < fileArr.length; i++) {
            imageLoader(fileArr[i]);
          }
          hiddenInput.value = ""; // 파일 입력 값 초기화하여 동일한 파일을 선택할 수 있도록 함
        }
        attZone.appendChild(hiddenInput);
        hiddenInput.click();
      };
    }

  imageView('att_zone', 'btnAtt');
}