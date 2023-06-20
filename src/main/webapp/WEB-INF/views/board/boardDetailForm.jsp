<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <!-- header css -->
  <jsp:include page="../common/common.jsp" />
  <link rel="stylesheet" href="/resources/css/board/boardDetailFormSub.css">
  <link rel="stylesheet" href="/resources/css/board/boardDetailForm.css">
  
  <title>커뮤니티 상세페이지</title>
  <!-- 슬라이더 CDN-->
  <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
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
                <!-- 본문 영역-->
                <div id="viewOrderList" class="page_section section_orderlist">
                  <div class="page_section section_destination">
                    <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                    <div style="height: 100%;">
                      
                      <section class="content-section">
                        <div class="content-header">
                          <div class="content-header-sub" style="position: relative;">
                          <div class="this" style="position: absolute; right: 1px;">
                          </div>
                            <div class="content-header-sub-a">
                              <h2 class="header-title">${ b.userName }님</h2>
                              <div class="here" onclick="location.href='/createChat.do?masterNo=${b.userNo}'" style="display: flex;align-items: center;justify-content: space-evenly;
                              bottom: -22px;position: absolute;right: 20px;color: #381B1B;background-color: #ECD500;
                              width: 103px;height: 37px;border-radius: 8px;box-shadow: 2px 2px 3px black;">
                              <div>
                              <svg style="color: #381B1B;" xmlns="http://www.w3.org/2000/svg" width="20" height="25" fill="currentColor" class="bi bi-chat-dots-fill" viewBox="0 0 16 16">
								  <path d="M16 8c0 3.866-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.584.296-1.925.864-4.181 1.234-.2.032-.352-.176-.273-.362.354-.836.674-1.95.77-2.966C.744 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7zM5 8a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
								</svg>
								</div>
                              <div>채팅요청</div>
								</div>
                          </div>
                        </div>

                          <div class="main-card">
                              <div id="mainWrapper" class="main-card-region">

                                <div class="community-detail-board">
                                  
                                  <div id="carouselExampleControls" class="subWrapper carousel slide" data-bs-ride="carousel">
                                  	
                                  	<div class="subContainer carousel-inner">
                                  		<c:if test="${ empty b.changeName }">
	                                  	<div class="imgSection carousel-item active">
	                                  		<img class="mainImg d-block w-100" src="/resources/img/main/첨부파일없음.png">
	                                  	</div>
	                                  	</c:if>
	                                  	
	                                  	<c:if test="${not empty b.changeName }">
	                                  	
	                                  	<c:set var="changeName" value="${ b.changeName }" />
	                                  	<c:set var="nameList" value="${fn:split(changeName, ',')}" />
	                                  	
	                                  	<c:forEach items="${nameList}" var="name">
	                                  	<c:set var="currentName" value="${name}" />
	                                  	<div class="imgSection carousel-item active">
	                                  		<img class="mainImg d-block w-100" src="${ b.filePath }${currentName}.jpg">
	                                  	</div>
	                                  	</c:forEach>
	                                  	
	                                  	</c:if>
	           
	                                  	  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
										    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
										    <span class="visually-hidden">Previous</span>
										  </button>
										  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
										    <span class="carousel-control-next-icon" aria-hidden="true"></span>
										    <span class="visually-hidden">Next</span>
										  </button>
	                                  	
	                                  	
	                                  	<div class="topTitle">
	                                  		<div class="topCount">
	                                  			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
												  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
												  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
												</svg>
	                                  		</div>
	                                  	</div>
                                  	</div>
                                  	
                                  	
                                  	<div class="contentWrapper">
                                  	
	                                  	<div style="display: flex;justify-content: space-between;">
		                                  	<div class="bottomTit">
		                                  		${b.boardTitle}
		                                  	</div>
		                                  	<div class="bottomTit">
		                                  	게시일 : ${ b.createDate.substring(0, 10) }
		                                  	</div>
	                                  	</div>
	                                  	<div class="bottomDesc">
	                                  		${b.boardContent}
	                                  	</div>
                                  	
                                  	
	                                  	<div class="petInfo">
	                                  		이 회원님의 반려동물이 궁금하다면?
	                                  	</div>
	                                  	
	                                  	<div class="petInfomation">
	                                  	<c:if test="${ empty dog.filePath }">
	                                  		<img src="/resources/img/main/첨부파일없음.png">
	                                  	</c:if>
	                                  	<c:if test="${ not empty dog.filePath }">
	                                  		<img src="/${ dog.filePath }">
	                                  	</c:if>
	                                  	
	                                  		<div>
	                                  			<div class="petName">
	                                  				${dog.dogName}
	                                  			</div>
	                                  			<div class="petBirth">
	                                  				${ dog.dogBreed } / ${ dog.dogGender }
	                                  			</div>
	                                  		</div>
	                                  	</div>
                                  	
                                  	</div>
                                  	
                                  	<div class="reply">
                                  	
                                  		<div class="replySection">
	                                  			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-eye-fill" viewBox="0 0 16 16">
												  <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
												  <path d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
												</svg>
											<div class="like fontDiv">
												 ${ b.count }
											</div>
                                  			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-chat" viewBox="0 0 16 16">
											  <path d="M2.678 11.894a1 1 0 0 1 .287.801 10.97 10.97 0 0 1-.398 2c1.395-.323 2.247-.697 2.634-.893a1 1 0 0 1 .71-.074A8.06 8.06 0 0 0 8 14c3.996 0 7-2.807 7-6 0-3.192-3.004-6-7-6S1 4.808 1 8c0 1.468.617 2.83 1.678 3.894zm-.493 3.905a21.682 21.682 0 0 1-.713.129c-.2.032-.352-.176-.273-.362a9.68 9.68 0 0 0 .244-.637l.003-.01c.248-.72.45-1.548.524-2.319C.743 11.37 0 9.76 0 8c0-3.866 3.582-7 8-7s8 3.134 8 7-3.582 7-8 7a9.06 9.06 0 0 1-2.347-.306c-.52.263-1.639.742-3.468 1.105z"/>
											</svg>
											<div class="fontDiv countReply">
												
											</div>
                                  		</div>
                                  		
                                  		<c:if test="${not empty loginUser.userNo }">
                                  		<input class="userNo" type="hidden" value="${loginUser.userNo}">
	                                  		<div style="margin-left: 20px;margin-top: 9px;display: flex;">
	                                  			<textarea class="replyDesc" name="replyDesc" style="resize: none;border-radius: 8px;border: none;
	                                  			width: 85%;height: 80px; padding:8px;"></textarea>
	                                  			<button onclick="goReply()" class="btn btn-primary">등록</button>
	                                  		</div>
                                  		</c:if>
                                  		<div class="rere">
											댓글                                  		
                                  		</div>
                                  		<div class="replyWrapper">
	   
                                  		</div>
                                  	</div>
                                  	
                                  	
                                  </div>
                                
	                                <div class="btnArea">
	                                	<button class="btn btn-info" onclick="window.history.go(-1)">목록으로</button>
	                                	<c:if test="${ not empty loginUser }">
                                        	<a id="update-icon" class="btn btn-secondary" style="" href="updateForm.bo?bno=${b.boardNo}">수정하기</a>
                                        	<a id="delete-icon" class="btn btn-secondary" style="" href="delete.bo?bno=${b.boardNo}">삭제하기</a>
                                        </c:if>
	                                </div>
                                </div>
                                
                                <!-- 여기까지 임보영 -->
                          </div>
                        </div>
                      </section>
                    
                    
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
      <!-- Footer 영역 시작 -->
      <jsp:include page="../common/footer.jsp" />
      <!-- Footer 영역 끝 -->
       <script>
       window.onload = function() {
    	   rere();
       }
    	   
       function rere() {
       $.ajax({
    	   
    	   url:'addReply',
    	   method: 'post',
    	   data: {
    		   bno: ${b.boardNo} 
    	   },
    	   success: function(res) {
    		   console.log(res);
    		   var replyWrapperElement = document.querySelector(".replyWrapper");
    		   var countReply = document.querySelector(".countReply");
    		   var resultText = "";
    		   var counts = 0; 
    		   for(let i = 0; i < res.length; i++) {
    			   var userImg = "";
    			   if(res[i].userFile == null) {
    				   userImg = '/resources/img/main/첨부파일없음.png';
    			   } else {
    				   userImg = res[i].userFile
    			   }
    			   
    			   if(res[i].replyUserNo == ${loginUser.userNo}) {
    			   
    		        resultText += '<div class="reCont">'
    		        	+ '<div class="replys">'
                        + '<img src="' + userImg + '">'
                        + '<div class="replyName">'
                        + '<div class="reName">' + res[i].userNickName + '</div>'
                        + '<div class="replyDesc">' + res[i].repContent + '</div>'
                        + '</div>'
                        + '</div>'
                        + '<div class="reBtn">'
                        + '<button class="deleteRe rereBtn" onclick="replyDelete(' + res[i].repNo + ')">' + '삭제' + '</button>'
                        + '</div>'
                        + '</div>';
                        
    			   } else {
    				   resultText += '<div class="replys">'
                           + '<img src="' + userImg + '">'
                           + '<div class="replyName">'
                           + '<div class="reName">' + res[i].userNickName + '</div>'
                           + '<div class="replyDesc">' + res[i].repContent + '</div>'
                           + '</div>'
                           + '</div>';
    				   
    			   }
    		   }
    		   
    		   replyWrapperElement.innerHTML += resultText;
    		   countReply.innerText = res.length;
    	   },
    	   error: function(err) {
    		   console.log(err);
    	   }
       });
       }

       
       function goReply() {
    	   
    	   let replyDesc = document.querySelector(".replyDesc").value;
    	   let userNo = document.querySelector(".userNo").value;
    	   
    	   $.ajax({
    		   url: 'writeReply',
    		   method: 'post',
    		   data: {
    			   replyDesc: replyDesc,
    			   userNo: userNo,
    			   bNo: ${b.boardNo}
    		   },
    		   success: function(res) {
    			   console.log(res);
    			   document.querySelector(".replyDesc").value = "";
    			   location.reload();
    		   },
    		   error: function(err) {
    			   console.log(err);
    		   }
    	   })
       }
       
       
       function replyDelete(repNo){
			$.ajax({
				url: 'replyDelete',
				method: 'post',
				data: {
					repNo: repNo
				},
				success: function(e) {
					location.reload();
					console.log(e);
				},
				error: function(e) {
					console.log(e);
				}
			});
       }
       
       </script>
    </body>
    </html>