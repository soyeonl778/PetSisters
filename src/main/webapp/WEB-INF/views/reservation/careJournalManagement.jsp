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
<title>돌봄일지 관리</title>
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
							<h2 class="tit_snb">예약 관리</h2>
							<div class="inner_sub">
								<ul class="list_menu">
									<li><a href="petsitterRev">내 예약 관리</a></li>
									<li><a href="payList">정산 조회</a></li>
									<li class="on"><a href="journalManager">돌봄 일지 관리</a></li>
								</ul>
							</div>
						</div>
						<!-- 사이드 메뉴바 끝 -->

						<!-- 본문 영역-->
						<div id="viewOrderList" class="page_section section_orderlist">
							<div class="page_section section_destination">
								<!-- 이 영역 안에서 페이지 작업 하시면 됩니다 -->
								<div>
									<form id="journalForm" action="journalManager" method="post">

										<div class="topTitWrap">
											<div class="titDescs">돌봄 일지 관리</div>
											<div class="searchWrapper" style="display: block; width: unset">
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
											<c:set var="fileName"
												value="${ fn:indexOf(l.filePath.concat(l.changeName), ',')}" />

											<div class="col">
												<div class="card">
													<c:if test="${ fileName != -1 }">
														<div onclick="careDetail(${l.jno})">
															<img
																src="${ l.filePath.concat(l.changeName).substring(0, fileName) }"
																class="card-img-top" alt="...">
														</div>
													</c:if>

													<c:if test="${fileName == -1 }">
														<img src="/resources/img/main/첨부파일없음.png"
															class="card-img-top" alt="..."
															onclick="careDetail(${l.jno})">

													</c:if>
													<div class="card-body" onclick="petsitterLink(${l.pno})">
														<h5 class="card-title">일지 작성일 : ${ l.create_date.substring(0, 10) }</h5>
														<h5 class="card-titles">예약일 : ${ l.startDate }~${ l.endDate }</h5>
														<input type="hidden" id="hiddenName"
															value="${l.petistterName}">
														<div style="display: flex;">
														<p style="font-weight: 900;">예약 :</p> 
														<p class="card-text" style="margin-left: 5px;">${ l.userName }</p> 
														<p style="font-size: larger;"> 님</p>
														</div>
													</div>
													
													
													<div class="btnSection">
													<a href="updateJournal?jNo=${l.jno}" class="careBtn updateBtn">돌봄일지 수정</a>
													<a href="#" class="careBtn deleteBtn">돌봄일지 삭제</a>
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
																href="journalManager?cPage=${ pi.currentPage - 1 }">&lsaquo;</a></li>
														</c:if>
														<c:if test="${ not empty options }">
															<li class="arrowTag"><a
																href="journalManager?cPage=${ pi.currentPage - 1 }&options=${options}">&lsaquo;</a></li>
														</c:if>
														</c:otherwise>
													</c:choose>

													<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
													<c:choose>
													<c:when test="${ empty options }">
														<li class="page-item active"><a class="page-link"
															href="journalManager?cPage=${p }">${ p }</a></li>
													</c:when>
													<c:otherwise>
													<li class="page-item active"><a class="page-link"
															href="journalManager?cPage=${p }&options=${options}">${ p }</a></li>
													</c:otherwise>		
													</c:choose>
													</c:forEach>

													<c:choose>
														<c:when test="${ pi.currentPage eq pi.maxPage }">
															<li class="arrowTag disabled"><a
																href="javascript:void(0)">&rsaquo;</a></li>
														</c:when>
														<c:otherwise>
														<c:if test="${ empty options }">
															<li class="arrowTag"><a
																href="journalManager?cPage=${pi.currentPage + 1}">&rsaquo;</a></li>
														</c:if>		
														<c:if test="${ not empty options }">
														<li class="arrowTag"><a
																href="journalManager?cPage=${pi.currentPage + 1}&options=${options}">&rsaquo;</a></li>
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