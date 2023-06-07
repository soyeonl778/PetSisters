<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link rel="stylesheet"
	href="/resources/css/reservation/reservationListPetsiter.css">
<!-- dateRangePicker-->
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />

<!-- js -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<!-- 폰트어썸 -->
<script src="https://kit.fontawesome.com/bbeda4c5cf.js"
	crossorigin="anonymous"></script>

<script src="/resources/js/reservationListPetsiter.js"></script>
<title>내 예약 목록 조회</title>
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
									<li><a href="#">내 프로필 관리</a></li>
									<li><a href="#">정산 조회</a></li>
									<li class="on"><a href="petsitterRev">내 예약 관리</a></li>
									<li><a href="#">돌봄 일지 관리</a></li>
								</ul>
							</div>
						</div>
						<!-- 사이드 메뉴바 끝 -->

						<!-- 본문 영역-->
						<div id="viewOrderList" class="page_section section_orderlist">
							<div class="page_section section_destination">
								<!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
								<div>
									<div class="contentWrap">

										<div class="titleWrap">
											<h1 class="titTag">내 예약 목록</h1>
										</div>

										<form action="searchKeyword" method="post">
											<div class="payWrapper">
												<div class="dateSection">
													조회 기간 선택 : <input id="datepicker1" type="text" name="searchDate">
												</div>
												<div class="searchTag">
													<input type="text" name="keyword" placeholder="고객명을 입력해주세요" value="${ keyword }" required>
													<button id="search_icon" type="submit">
														<i class="fa-solid fa-magnifying-glass"
															style="color: #0888D0"></i>
													</button>
												</div>
											</div>
										</form>
										<div class="tableContainer">
											<table class="table table-hover">
												<thead>
													<tr>
														<th scope="col">No.</th>
														<th scope="col">예약번호</th>
														<th scope="col">예약상태</th>
														<th scope="col">예약자</th>
														<th scope="col">체크인/아웃</th>
														<th scope="col" style="text-align: center;">예약일</th>
														<th scope="col" style="text-align: center;">금액</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="r" items="${ rev }">
														<tr>
															<th scope="row">${ r.rowNum }</th>
															<td class="uniqeNo">${ r.resNo }</td>
															<c:choose>
																<c:when
																	test="${ r.status eq 'Y' and r.endDate > nowDate }">
																	<td class="specialTd">예약진행중</td>
																</c:when>
																<c:otherwise>
																	<td class="specialTd">예약종료</td>
																</c:otherwise>
															</c:choose>
															<td>${ r.userName }</td>
															<td class="spcDate" width="120">${ r.startDate } ${ r.endDate }</td>
															<td width="150" class="reserDate">${ r.registerDate.substring(0, 10) }</td>
															<c:if test="${ r.payPrice != 0 }">
																<td class="reserMonye">${ r.payPrice }</td>
															</c:if>
															<c:if test="${ r.payPrice == 0 }">
																<td class="reserMonye">결제대기중</td>
															</c:if>
														</tr>
													</c:forEach>
													<c:forEach var="w" items="${ word }">
														<tr>
															<th scope="row">${ w.rowNum }</th>
															<td class="uniqeNo">${ w.resNo }</td>
															<c:choose>
																<c:when
																	test="${ w.status eq 'Y' and w.endDate > nowDate }">
																	<td class="specialTd">예약진행중</td>
																</c:when>
																<c:otherwise>
																	<td class="specialTd">예약종료</td>
																</c:otherwise>
															</c:choose>
															<td>${ w.userName }</td>
															<td class="spcDate" width="120">${ w.startDate } ${ w.endDate }</td>
															<td width="150" class="reserDate">${ w.registerDate.substring(0, 10) }</td>
															<c:if test="${ w.payPrice != 0 }">
																<td class="reserMonye">${ w.payPrice }</td>
															</c:if>
															<c:if test="${ w.payPrice == 0 }">
																<td class="reserMonye">결제대기중</td>
															</c:if>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>
								</div>
								<!-- 페이지네이션-->
								<div id="pagination">
									<nav aria-label="Page navigation example">
										<ul id="pagiUl" class="pagination paginationUlTag">

											<c:choose>
												<c:when test="${ pi.currentPage eq 1 }">
													<li class="arrowTag disabled"><a href="">&lsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a
														href="petsitterRev?pPage=${ pi.currentPage - 1 }">&lsaquo;</a></li>
												</c:otherwise>
											</c:choose>

											<c:forEach var="p" begin="${ pi.startPage }"
												end="${ pi.endPage }" step="1">
												<li class="page-item active"><a class="page-link"
													href="petsitterRev?pPage=${p }">${ p }</a></li>
											</c:forEach>

											<c:choose>
												<c:when test="${ pi.currentPage eq pi.maxPage }">
													<li class="arrowTag disabled"><a
														href="javascript:void(0)">&rsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a
														href="petsitterRev?pPage=${pi.currentPage + 1}">&rsaquo;</a></li>
												</c:otherwise>
											</c:choose>

										</ul>
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
	$('#datepicker1').on('click', function(e) {
		console.log($('#datepicker1').val());
		console.log(e);
		let a = $('#datepicker1').val().slice(0, 10);
		let b = $('#datepicker1').val().slice(-10);
		console.log(a);
		console.log(b);

	});
	</script>
</body>
</html>