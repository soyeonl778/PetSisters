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
      
      
      <title>커뮤니티 글작성</title>
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
              <div class="page_aticle aticle_type2">
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
	                                  <div class="selectCategory">
	                                    <label for="category">카테고리 :&nbsp;</label>
                                      <select id="category" name="category">
                                        <option value="option2">견종정보</option>
                                        <option value="option3">이야기방</option>
                                        <option value="option3">반려견 정보</option>
                                      </select>
	                                  </div>
	                                  
	                                  <!-- 내용 -->
	                                  <p class="text-review">내용</p>
	                                  <a class="petsister-a">
	                                    <div class="petsister">
	                                        <textarea class="petsister-input" type="text" placeholder="커뮤니티를 등록해주세요"  name="boardContent" required></textarea>
	                                    </div>
	                                  </a>
	    								
	    							  <!-- 사진 -->
	                                  <p class="photo-img">
	                                    	사진
	                                  </p>
	    
	                                  <div class="file-upload-form">
	                                    <div class="file-upload-top">
	                                      <i class="fa-solid fa-square-plus fa-9x" style="color: #e6e6eb;" ></i>
	                                    </div>
	    
                                      
	                                    <!--   
	                                   	<label for="upfile">첨부파일</label>
	                                   	<input type="file" id="upfile" class="" name="upfile">
	                                    -->
	                                    
	                                    <div class="fileSection preview">
					                      <label for="">첨부파일 : </label>
					                      <input type="file" name="" id="btnAtt" multiple="multiple">
					                      <div id="att_zone" data-placeholder='파일을 첨부 하려면 파일 선택 버튼을 클릭하거나 파일을 드래그앤드롭 하세요'></div>
					                    </div> 
	                                     
	                                  </div>
	                                  
	                                  
                                	</form>
                                  
                                </div>
                                
                                
                                <!--게시글 메인페이지 끝-->
                              </div>
                              
                              
                              <!--전체후기보기-버튼-->
                             <a class="main-card-bottom-button" href="">
                               <p class="all-community">작성하기</p>
                             </a>
		                               
                              
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
    </body>
    </html>