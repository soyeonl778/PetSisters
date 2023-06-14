<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- header css -->
<link rel="stylesheet" href="/resources/css/board/boardMain.css">
<jsp:include page="../common/common.jsp" />

<title>Insert title here</title>
<!--폰트어썸-->
<script src="https://kit.fontawesome.com/d3eb8276e5.js" crossorigin="anonymous"></script>

<style>
	#enrollForm>table {width:30%;}
	#enrollForm>table * {margin:5px;}
    #enrollForm>table label { width: 70px; }
    #enrollbutton { margin-left: 70px; }
    .innerOuter { margin-top: 70px; }
    
   
	
</style>
</head>
<body>
    <!-- 헤더 영역 시작-->
    <jsp:include page="../common/header.jsp" />
    <!-- 헤더 영역 끝-->

    <div class="content" align="center">
        <br><br>
        <div class="innerOuter">
            <h2>게시글 작성하기</h2>
            <br>

            <form id="enrollForm" method="post" action="test" enctype="multipart/form-data">
            	<!--  
            	<input type="hidden" value="${ categoryMain }" name="categoryMain">
            	<input type="hidden" value="${ categorySub }" name="categorySub">
            	-->
            	
            	<input type="hidden" value="${ loginUser.userNo }" name="userNo">
            	<input type="hidden" value="${ b.categoryMain }" name="categoryMain">
            	<input type="hidden" value="${ b.categorySub }" name="categorySub">
            	
            	
                <table id="boardList" algin="center">
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td colspan="3"><input type="text" id="title" class="form-control" name="boardTitle" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer">작성자</label></th>
                        <td colspan="3"><input type="text" id="writer" class="form-control" value="${ loginUser.userId }" name="boardWriter" readonly></td>
                    </tr>
                    <tr>
                        <th>대표이미지</th>
                        <td colspan="3">
                            <img id="titleImg" width="250" height="170">
                        </td>
                    </tr>
                    <tr class="multImg-section">
                        <th>상세이미지</th>
                        <td>
                            <img id="contentImg1" width="150" height="120">
                            <img id="contentImg2" width="150" height="120">
                            <img id="contentImg3" width="150" height="120">
                        </td>
                    </tr>
                    <tr>
                        <th><label for="content">내용</label></th>
                        <td><textarea id="content" class="form-control" rows="10" style="resize:none;" name="boardContent" required></textarea></td>
                    </tr>
                    
                    <!-- <tr>
                        <th><label for="upfile">첨부파일</label></th>
                        <td><input type="file" id="upfile" class="form-control-file border" name="upfile"></td>
                    </tr> -->
                    
                </table>
                <br>

                <div id="file-area">
                    <input type="file" id="file1" name="upfileList" onchange="loadImg(this, 1);" required>
                    <input type="file" id="file2" name="upfileList" onchange="loadImg(this, 2);">
                    <input type="file" id="file3" name="upfileList" onchange="loadImg(this, 3);">
                    <input type="file" id="file4" name="upfileList" onchange="loadImg(this, 4);">
                </div>

                <div align="center">
                    <button type="submit" class="btn btn-primary" id="enrollbutton">등록하기</button>
                    <button type="reset" class="btn btn-danger">취소하기</button>
                </div>
            </form>
        </div>
        <br><br>

    </div>

    <!-- Footer 영역 시작 -->
    <jsp:include page="../common/footer.jsp" />
    <!-- Footer 영역 끝 -->
    <script>
         $(function() {

             $("#file-area").hide();  // input type="file" 요소들 숨김처리

             $("#titleImg").click(function() {
                 $("#file1").click();
             });

             $("#contentImg1").click(function() {
                 $("#file2").click();
             });

             $("#contentImg2").click(function() {
                 $("#file3").click();
             });

             $("#contentImg3").click(function() {
                 $("#file4").click();
             });

         });


         // 이미지 미리보기 기능
         function loadImg(inputFile, num) {

             if(inputFile.files.length == 1) { // 선택된 파일이 있을 경우

                 // 파일을 읽어들일 FileReader 객체 생성
                 let reader = new FileReader();

                 reader.readAsDataURL(inputFile.files[0]);

                 // 파일 읽기가 완료되었을 때 실행하게끔 처리
                 reader.onload = function(e) {
                     

                     // e 의 target.result 에 각 파일의 url 주소가 담겨있음
					 // e.target == this == reader

                     switch(num) {
                         case 1 : $("#titleImg").attr("src", e.target.result); break;
                         case 2 : $("#contentImg1").attr("src", e.target.result); break;
                         case 3 : $("#contentImg2").attr("src", e.target.result); break;
                         case 4 : $("#contentImg3").attr("src", e.target.result); break;
                     }

                 };
             } else { // 선택된 파일이 사라졌을 경우

                 // 미리보기 사라지게 하기
                 switch(num) {
                         case 1 : $("#titleImg").attr("src", null); break;
                         case 2 : $("#contentImg1").attr("src", null); break;
                         case 3 : $("#contentImg2").attr("src", null); break;
                         case 4 : $("#contentImg3").attr("src", null); break;
                } 
             }
         }
     </script>    
</body>
</html>