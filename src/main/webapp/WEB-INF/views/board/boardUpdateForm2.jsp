<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8" />
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="viewport" content="width=device-width, initial-scale=1.0" />
      <!-- header css -->
      <link rel="stylesheet" href="/resources/css/board/boardMain.css">
      <jsp:include page="../common/common.jsp" />
      <link rel="stylesheet" href="/resources/css/board/boardEnrollForm.css">
      <!--  <link rel="stylesheet" href="/resources/css/board/tt.css">-->
      <!--<script src="/resources/js/tt.js"></script>-->
      
      
      <title>임보영 완전 졸림 이거 못봄</title>
      <!--폰트어썸-->
      <script src="https://kit.fontawesome.com/d3eb8276e5.js" crossorigin="anonymous"></script>
      <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css"> -->
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
              <div class="page_aticle aticle_type2" style="padding-top: 25px;">
                <!-- 본문 영역-->
                <div id="viewOrderList" class="page_section section_orderlist">
                  <div class="page_section section_destination">
                    <!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
                    <div style="height: 100%;">
                      
                      <section class="content-section">
                        <div class="content-header">
                          <div class="content-header-sub">
                            <div class="content-header-sub-a">
                              <img class="header-img" src="https://petplanet.co/static/images/reviews/like.png"></div>
                              <h2 class="header-title">커뮤니티 작성하기</h2>
                          </div>
                        </div>
    
                        <div>
                          <div class="main-card">
                              <div class="main-card-region">
                                
                                <!--게시글 메인페이지 시작-->
                                <div class="community-detail-board">
                                  
                                  <form id="enrollForm" method="post" action="insert.bo" enctype="multipart/form-data">
                                    	
                                      <input type="hidden" value="${b.categoryMain}" name="categoryMain">
                                      <input type="hidden" value="${b.categorySub}" name="categorySub">
                                      <input type="hidden" value="${loginUser.userNo}" name="userNo">
                                      <input type="hidden" value="${b.boardNo}" name="boardNo">
                                      <!--<input type="hidden" value="${at.fileNo}" name="fileNo">-->
                                      
									  <div>
									  <p class="text-review">제목</p>
									  <input type="text" class="boardTitle" name="boardTitle" placeholder="제목을 입력해주세요" required>
									  
									  </div>
	                                  <!-- 내용 -->
	                                  <p class="text-review">내용</p>
	                                  <a class="petsister-a">
	                                    <div class="petsister">
	                                        <textarea class="petsister-input" type="text" placeholder="내용을 입력해주세요"  name="boardContent" required></textarea>
	                                    </div>
	                                  </a>
	    								
	    							                <!-- 사진 -->
	                                  <p class="photo-img">
	                                    	사진
	                                  </p>
	    
	                                  <div class="file-upload-form">
	                                    <div class="file-upload-top">
	                                      <i id="plusIcon" class="fa-solid fa-square-plus fa-9x" style="color: #e6e6eb;" ></i>
                                          <div class="img_header" >
                                              <img id="contentImg1" width="150" height="120">
                                              <img id="contentImg2" width="150" height="120">
                                              <img id="contentImg3" width="150" height="120"> 
                                          </div>
                                      </div>
	                                    
                                      <div class="fileSection preview">
                                        <label for="btnAtt">첨부파일 : </label>
                                        <input type="file" name="upfile" id="btnAtt" onchange="loadImg(this, 1);"> <br>
                                        <label for="btnAtt">첨부파일 : </label>
                                        <input type="file" name="upfile" id="btnAtt" onchange="loadImg(this, 2);"> <br>
                                        <label for="btnAtt">첨부파일 : </label>
                                        <input type="file" name="upfile" id="btnAtt" onchange="loadImg(this, 3);">
                                      </div>  
	                                  </div>
	                                  
                                </div>
                                
                                
                                <!--게시글 메인페이지 끝-->
                              </div>
                              
                              
	                              <!--전체후기보기-버튼-->
	                             <button type="submit" class="main-card-bottom-button" onclick="location.href='update.bo'">
	                               		작성하기
	                             </button>
	                          </form>
		                               
                              
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
        function loadImg(inputFile, num) {
            
            // 태그설정
            let contentImg1 = document.getElementById("contentImg1");  
            let contentImg2 = document.getElementById("contentImg1");
            let contentImg3 = document.getElementById("contentImg1"); 

            // 플러스 아이콘 제거
            document.getElementById('plusIcon').style.display = 'none';

            if(inputFile.files.length == 1) { // 선택된 파일이 있을 경우

              let reader = new FileReader();
              reader.readAsDataURL(inputFile.files[0]);
              reader.onload = function(e) {
                switch(num) {
                    case 1: $("#contentImg1").css("display", "inline");
                            $("#contentImg1").attr("src", e.target.result); break;

                    case 2 : $("#contentImg2").attr("src", e.target.result);
                             $("#contentImg2").css("display", "inline"); break;

                    case 3 : $("#contentImg3").attr("src", e.target.result);
                             $("#contentImg3").css("display", "inline"); break;
                }   
                

              }

            } else { // 선택된 파일이 사라졌을 경우

              // 미리보기 사라지게 하기
              switch(num) {
                case 1 : $("#contentImg1").attr("src", null); $("#contentImg1").css("display", "none"); break;
                case 2 : $("#contentImg2").attr("src", null); $("#contentImg2").css("display", "none"); break;
                case 3 : $("#contentImg3").attr("src", null); $("#contentImg3").css("display", "none"); break;
              }
              
              // 모든 사진이 없을 경우, 플러스아이콘이 보여지도록 설정하기 
              if($("#contentImg1").css("display") === "none" &&
                 $("#contentImg2").css("display") === "none" &&
                 $("#contentImg3").css("display") === "none" ) {

                    document.getElementById('plusIcon').style.display = 'block';
                 }

            }

        }
      </script>
    </body>
    </html>