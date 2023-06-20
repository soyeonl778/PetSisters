<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  
  <link rel="stylesheet" href="/resources/css/inquiry/inquiryDetail.css">
  <link rel="stylesheet" href="/resources/css/common/form.css">
  <jsp:include page="../common/common.jsp" />
  
  <title>1:1 문의 상세</title>
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
            	<jsp:include page="../common/csSidebar.jsp" />
            <!-- 사이드 메뉴바 끝 -->

            <!-- 본문 영역-->
            <div id="viewOrderList" class="page_section section_orderlist">
              <div class="page_section section_destination">
                <div class="title">
                    <h2>1:1 문의</h2>
                    <hr/>
                </div>
                
                <c:if test="${ (not empty loginUser) and ((loginUser.userNo eq i.userNo) or (loginUser.userName eq '관리자')) }">
                	<div align="right">
	                    <a class="btn btn-danger" onclick="postFormSubmit();">삭제하기</a>
                	</div>
                	<br/>
                	
                	<form id="postForm" action="" method="post">
                		<input type="hidden" name="userNo" value="${i.userNo}">
		            	<input type="hidden" name="inquiryNo" value="${i.inquiryNo}">
		            </form>
		            <script>
						function postFormSubmit() {
							$("#postForm").attr("action", "delete.in").submit();
						}
		            </script>
                </c:if>
                
                <div class="inquiryDetail">
                    <table id="inquiryDetail">
                        <tr>
                            <th>제목</th>
                            <td>
                                <div class="inquiry">${i.inquiryTitle}</div>
                            </td>
                        </tr>
                        <tr>
                            <th>작성일</th>
                            <td>
                                <div class="inquiry">${i.createDate}</div>
                            </td>
                        </tr>
                        <tr>
                            <th>내용</th>
                            <td>
                                <div class="inquiry inquiryContent">
									${i.inquiryContent}
                                </div>
                            </td>
                        </tr>
                        <tr>
						    <th>첨부파일</th>
						    <td class="attZone items">
						        <c:if test="${empty i.filePath}">
						            	첨부파일이 없습니다.
						        </c:if>
						        <c:if test="${not empty i.filePath}">
						            <img style="text-align:left;" id="imgView" src="${i.filePath}">
						        </c:if>
						    </td>
						</tr>
                    </table>
                    <br/>
                </div>
                <br/>
                
                <div class="replyDetail">
                <table id="replyArea" class="table" align="center">
                 	<thead>
                 		<tr>
                 			<th colspan="3">댓글(<span id="rcount">0</span>)</th>
                 		</tr>
                 		<tr>
                 			<th colspan="2">
                 				<textarea class="form-control" id="replyContent" style="resize:none;"></textarea>
                 			</th>
                 			<th>
								<button class="btn btn-secondary" onclick="addReply();" style="display: block; margin: 0 auto;">등록</button>
							</th>
                 		</tr>
                 	</thead>
                 	<tbody></tbody>
                 </table>
                 </div>
                
                <br/>
                <div style="text-align: right;">
                  <button type="button" onclick="history.back();" class="btn btn-outline-primary">목록으로</button>
                </div>
                
              </div>
            </div>
            <!-- 본문 영역 끝-->
          </div>
        </div>
      </div>

    </div>
  </div>
  
  <script>
  function backList() {
	  $(function() {
		 let userNo = "${loginUser.userNo}";
		 let  url = "list.in?userNo=" + userNo;
		 location.href = url;
	  });
  }
  
  $(function() {
		selectReplyList();
	});
  	
  function addReply() { // 댓글 작성용 ajax
		
		// form 태그 내에서는 required 속성이 적용되지만,
		// form 태그 밖에서는 required 속성이 소용없다!!
		// => 댓글 내용이 있는지 먼저 조건검사 진행 (추가적으로 공백과 관련한 로직까지 적용)
		
		if($("#replyContent").val().trim().length != 0) {
			
			$.ajax({
				url : "rinsert.in",
				data : {
					refIno : ${ i.inquiryNo },
					repContent : $("#replyContent").val(),
					userNo : "${ loginUser.userNo }"
				},
				type : "post", 
				success : function(result) {
					
					if(result == "success") {
						selectReplyList();
						$("#replyContent").val("");
					}
				},
				error : function() {
					console.log("댓글 작성용 ajax 통신 실패!");
				}
			});
			
		} else {
			alertify.alert("알림", "댓글 작성 후 등록 요청해주세요.");
		}
	}
	
	function selectReplyList() { // 해당 게시글에 딸린 댓글리스트 조회용 ajax
		
		$.ajax({
			url : "rlist.in",
			data : {inquiryNo : ${i.inquiryNo}},
			type : "get",
			success : function(result) {
				
				let resultStr = "";
				
				for(let i = 0; i < result.length; i++) {
					resultStr += "<tr>"
							   + 	"<td style='text-align: center; width:100px; height:50px;'>" + result[i].userNickname + "</td>"
							   + 	"<td style='width:600px'>" + result[i].repContent + "</td>"
							   + 	"<td style='width:120px;'>" + result[i].createDate + "</td>"
							   + "</tr>";
				}
				
				$("#replyArea>tbody").html(resultStr);
				$("#rcount").text(result.length);
			},
			error : function() {
				console.log("댓글리스트 조회용 ajax 통신 실패!");
			}
		});
	}
  </script>
  
  <!-- Footer 영역 시작 -->
  	<jsp:include page="../common/footer.jsp" />
  <!-- Footer 영역 끝 -->
  
</body>
</html>