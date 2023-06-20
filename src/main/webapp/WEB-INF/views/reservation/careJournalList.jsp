<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<jsp:include page="../common/common.jsp" />
<link rel="stylesheet"
	href="/resources/css/reservation/careJournalList.css">
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/bbeda4c5cf.js"
	crossorigin="anonymous"></script>
<title>돌봄일지 목록</title>
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
									<li class="myProfile.me"><a href="myProfile.me">내 프로필</a>
									</li>
									<li class="petList.me"><a href="petList.me">반려동물 프로필</a></li>
									<li class="petsiterLike.me"><a href="petsiterLike.me">펫시터
											찜</a></li>
									<li class="myBoard.me"><a href="myBoard.me">내 게시글</a>
									</li>
									<li class="reservationList"><a href="reservationList">예약
											조회</a></li>
									<li class="journalList on"><a href="journalList">돌봄 일지</a>
									</li>
								</ul>
							</div>
						</div>
						<!-- 사이드 메뉴바 끝 -->

						<!-- 본문 영역-->
						<div id="viewOrderList" class="page_section section_orderlist">
							<div class="page_section section_destination">
								<!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
								<div>
									<form id="journalForm" action="journalList" method="get">

										<div class="topTitWrap">
											<div class="titDescs">돌봄일지 목록</div>
											<div class="searchWrapper">
												<div class="searchTag">
													<input type="text" name="keyword" value="${ keyword }"
														placeholder="펫시터 이름 검색..">
													<button id="search_icon" type="submit">
														<i class="fa-solid fa-magnifying-glass"
															style="color: #0888D0"></i>
													</button>
												</div>
												<div class="selectbox">
													<select id="ex_select" name="options">
														<option value="new">최신순</option>
														<option value="old">오래된순</option>
													</select>
												</div>
											</div>
										</div>
									</form>
									<c:if test="${ not empty options }">
										<script>
											$(function() {
												$('.selectbox option[value=${options}]').attr("selected", true);
											});
										</script>
									</c:if>
									<br>
									<!-- 카드 영역-->
									<div class="row row-cols-1 row-cols-md-2 g-4">
										<c:if test="${ empty list }">
											<div class="nothing">조회된 목록이 없어요!</div>
										</c:if>
										<c:forEach var="l" items="${ list }">

											<div class="col">
												<div class="card">
													<c:set var="imageArray"
														value="${fn:split(l.changeName, ',')}" />
													<c:set var="firstImage" value="${fn:trim(imageArray[0])}" />
													<c:if test="${ not empty l.changeName}">

														<div onclick="careDetail(${l.jno})">
															<img src="${ l.filePath }${firstImage}"
																class="card-img-top" alt="...">
														</div>
													</c:if>

													<c:if test="${ empty l.changeName }">
														<img src="/resources/img/main/첨부파일없음.png"
															class="card-img-top" alt="..."
															onclick="careDetail(${l.jno})">

													</c:if>
													<div class="card-body" onclick="petsitterLink(${l.pno})">
														<h5 class="card-title">일지 작성일 : ${ l.create_date.substring(0, 10) }</h5>
														<h5 class="card-titles">${ l.startDate }~${ l.endDate }</h5>
														<input type="hidden" id="hiddenName"
															value="${l.petistterName}">
														<p class="card-text">${ l.petistterName }</p>
													</div>
												</div>
											</div>

										</c:forEach>

									</div>
									<!-- 카드 영역-->
									<!-- 페이지네이션-->
									<div id="pagination">
										<nav aria-label="Page navigation example">
											<c:if test="${ pi.listCount != 0 }">
												<ul id="pagiUl" class="pagination paginationUlTag">

													<c:choose>
														<c:when test="${ pi.currentPage eq 1 }">
															<li class="arrowTag disabled"><a href="">&lsaquo;</a></li>
														</c:when>
														<c:otherwise>
															<c:if test="${ empty options }">
																<li class="arrowTag"><a
																	href="journalList?cPage=${ pi.currentPage - 1 }">&lsaquo;</a>
																</li>
															</c:if>
															<c:if test="${ not empty options }">
																<li class="arrowTag"><a
																	href="journalList?cPage=${ pi.currentPage - 1 }&options=${options}&keyword=${keyword}">&lsaquo;</a>
																</li>
															</c:if>
														</c:otherwise>
													</c:choose>

													<c:forEach var="p" begin="${ pi.startPage }"
														end="${ pi.endPage }" step="1">
														<c:if test="${empty options}">
															<li class="page-item active"><a class="page-link"
																href="journalList?cPage=${p }">${ p }</a></li>
														</c:if>
														<c:if test="${not empty options}">
															<li class="page-item active"><a class="page-link"
																href="journalList?cPage=${p }&options=${options}&keyword=${keyword}">${ p }</a></li>
														</c:if>
													</c:forEach>

													<c:choose>
														<c:when test="${ pi.currentPage eq pi.maxPage }">
															<li class="arrowTag disabled"><a
																href="javascript:void(0)">&rsaquo;</a></li>
														</c:when>
														<c:otherwise>
															<c:if test="${ empty options }">
																<li class="arrowTag"><a
																	href="journalList?cPage=${pi.currentPage + 1}">&rsaquo;</a></li>
															</c:if>
															<c:if test="${ not empty options }">
																<li class="arrowTag"><a
																	href="journalList?cPage=${pi.currentPage + 1}&options=${options}&keyword=${keyword}">&rsaquo;</a></li>
															</c:if>
														</c:otherwise>
													</c:choose>
												</ul>
											</c:if>
										</nav>
									</div>
									<!-- 페이지네이션-->
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
	
	document.getElementById("ex_select").addEventListener("change", function() {
		  document.getElementById("journalForm").submit();
		});
	
	function petsitterLink(pno) {
		
		location.href = 'detail.pe?pno=' + pno;

	}
	
	function careDetail(jno) {
		
		location.href = 'careDetail?jno=' + jno;

	}
	</script>
</body>
</html>