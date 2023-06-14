<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/reservation/careJournalDetail.css">
<title>돌봄일지 상세보기</title>
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
                  <div class="contentContainer">
                  
                  <!-- 여긴 for 문 말고 받아온 값만 쓸 것 -->
                  
                    <c:forEach var="c" items="${ list }">
                    <div class="whoCareArea">
                      <div class="whoCare">
                        <span class="itsme">${ c.userName }</span>
                        <span>펫시터님의</span>
                      </div>
                      <div class="careJournal">
                 		 <div class="contentDate">${ c.create_date.substring(5, 10).replace('-', '월')}일</div>
                 		 &nbsp돌봄 일지
                 		 </div>
                    </div>
                    
                    
                    
                    <!-- 카드 하나 영역-->
                    <div class="fimg">
                      <div class="tetego">
                          <c:set var="imageArray" value="${fn:split(c.changeName, ',')}" />
						  <c:set var="firstImage" value="${fn:trim(imageArray[0])}" />
						 <img src="${c.filePath}${firstImage}" alt="">
                      </div>
                    </div>
                    
                    
                    <div class="contentMain">
                    
                    	<div>
                     	 <div class="contentHour">일지 작성 : ${ c.days.substring(0, 8).replace(':', '시')}분</div>
                     	 <div class="contentDesc">${ c.jcontent }</div>
                      </div>
                      
                      <div class="imgSections">
                      <c:forEach var="image" items="${fn:split(c.changeName, ',')}">
                       <c:set var="trimmedImage" value="${fn:trim(image)}" />
                        <img src="${c.filePath}${trimmedImage}" alt="" style="height: 150px;">
                        </c:forEach>
                      </div>
                    </div>
                 </c:forEach>   
                 
                 
                  </div>
                </div>
                    
                    
                    <!-- 카드 하나 영역-->
                    
                    
                    

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
</body>
</html>