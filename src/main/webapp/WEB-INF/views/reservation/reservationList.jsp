<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<c:set var="now" value="<%=new java.util.Date()%>" />
<c:set var="nowDate">
	<fmt:formatDate value="${now}" pattern="yyyy-MM-dd" />
</c:set>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet" href="/resources/css/common/form.css">
<link rel="stylesheet"
	href="/resources/css/reservation/reservationList.css">
<title>예약조회 목록</title>
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<div id="Container-Wrapper">
		<!-- 페이지 영역 시작 -->
		<div id="container">
			<div id="main">
				<div id="content">
					<div class="page_aticle aticle_type2">
						<!-- 사이드 메뉴바 -->
						<div id="snb" class="snb_my" style="position: absolute;">
							<img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
							<h2 class="tit_snb">My Page</h2>
							<div class="inner_sub">
								<ul class="list_menu">
									<li><a href="myProfile.me">내 프로필</a></li>
									<li><a href="petProfile.me">반려동물 프로필</a></li>
									<li><a href="petsiterLike.me">펫시터 찜</a></li>
									<li><a href="myBoard.me">내 게시글 및 댓글</a></li>
									<li class="on"><a href="reservationList">예약 조회</a></li>
									<li><a href="journalList">돌봄 일지</a></li>
								</ul>
							</div>
						</div>
						<!-- 사이드 메뉴바 끝 -->

						<!-- 본문 영역-->
						<div id="viewOrderList" class="page_section section_orderlist">
							<div class="page_section section_destination">
								<!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
								<div id="bodyContentHead">
									<h2 class="firstTit">예약 조회</h2>
								</div>
								<c:if test="${list.isEmpty()}">
								<div class="emptyData">
									아직 예약이 없으시네요!
								</div>
								</c:if>
								<c:forEach var="r" items="${list}">
									<div class="mainBodyWrapper">
										<div class="dateWorking">
											<div class="cardDate">${r.startDate } ~ ${r.endDate }</div>
											<c:if test="${ r.endDate < nowDate }">
												<div class="itsdone">진행 완료</div>
											</c:if>
											<c:if test="${ r.endDate > nowDate }">
												<div class="workingon">진행중</div>
											</c:if>
										</div>
										<div class="cardSection">
											<div class="cardContainer" onclick="location.href='#'">
										  <input class="selectPno" type="hidden" value="${ r.pno }">	
												<div class="cardImage">
													<img src="${r.petFile.concat(r.originName) }" alt="coshong"
														class="cardMainImg">
												</div>
												<div class="cardTextContainer">
													<div class="cardTitDesc">
														<h4>${ r.address }</h4>
														<c:if test="${r.caStatus != 'N' }">
														<p class="proPet">* 프로펫시터</p>
														</c:if>
													</div>
													<h3 class="cardTitContent">${r.ptitle }</h3>
													<div class="borderLine"></div>
													<p class="cardHash">${ r.pcareList.replaceAll(",", " *") }</p>
													<div class="linkRe">
														<a href="" class="reviewLink">후기  ${ r.reviewCount } 개</a>
													</div>
												</div>
											</div>

											<div class="cardBtn">
											<input class="writeReviewNo" name="revNo" type="hidden" value="${r.resNo}">
												<a class="cardDetail" href="reservationDetail?rNo=${r.resNo}">상세 조회</a> 
												<c:if test="${ r.checkReview == 0 }">
												<a class="cardReview" href="getReviewDate?rNo=${ r.resNo }">후기 작성</a> 
												</c:if>
												<c:if test="${ r.checkReview == 1 }">
												<a class="checkReview" href="reviewUpdate?rNo=${ r.resNo }">후기 수정</a> 
												</c:if>
												<a class="cardDelete" href="deleteReservation?rNo=${ r.resNo }">삭제</a>
											</div>
										</div>
									</div>

								</c:forEach>


								<!-- 페이지네이션-->
								<div id="pagination">
									<nav aria-label="Page navigation example">
									<c:if test="${ pi.listCount != 0 }">
										<ul id="pagiUl" class="pagination paginationUlTag">
										
										<c:choose>
										  <c:when  test="${ pi.currentPage eq 1 }">
											<li class="arrowTag disabled"><a href="">&lsaquo;</a></li>
										  </c:when>
										  <c:otherwise>
											<li class="arrowTag"><a href="reservationList?rPage=${ pi.currentPage - 1 }">&lsaquo;</a></li>
										  </c:otherwise>
									    </c:choose>
										  
										<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">  
											<li class="page-item active">
												<a class="page-link" href="reservationList?rPage=${p }">${ p }</a>
											</li>
										</c:forEach>		
										
										<c:choose>	
											<c:when test="${ pi.currentPage eq pi.maxPage }">
												<li class="arrowTag disabled"><a href="javascript:void(0)">&rsaquo;</a></li>
											</c:when>
											<c:otherwise>
												<li class="arrowTag"><a href="reservationList?rPage=${pi.currentPage + 1}">&rsaquo;</a></li>
											</c:otherwise>
										</c:choose>	
										</ul>
										</c:if>
									</nav>
								</div>
								<!-- 페이지네이션-->
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
		$(document).ready(function() { 
			  
			// 게시글 카드 클릭하면 해당 펫시터 번호 추출함	  
		  $(document).on('click', '.cardContainer', function() {
		    var sv = $(this).find('.selectPno').val();
		    let selectPnoValue = Number(sv);
			console.log(selectPnoValue);
		  });
		});
		
	</script>
</body>
</html>