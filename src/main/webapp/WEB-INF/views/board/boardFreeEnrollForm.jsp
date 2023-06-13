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
	#enrollForm>table {width:50%;}
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

            <form id="enrollForm" method="post" action="insert.bo" enctype="multipart/form-data">
                <table algin="center">
                    <tr>
                        <th><label for="title">제목</label></th>
                        <td><input type="text" id="title" class="form-control" name="boardTitle" required></td>
                    </tr>
                    <tr>
                        <th><label for="writer">작성자</label></th>
                        <td><input type="text" id="writer" class="form-control" value="${ loginUser.userId }" name="boardWriter" readonly></td>
                    </tr>
                    <tr>
                        <th><label for="upfile">첨부파일</label></th>
                        <td><input type="file" id="upfile" class="form-control-file border" name="upfile"></td>
                    </tr>
                    <tr>
                        <th><label for="content">내용</label></th>
                        <td><textarea id="content" class="form-control" rows="10" style="resize:none;" name="boardContent" required></textarea></td>
                    </tr>
                </table>
                <br>

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
</body>
</html>