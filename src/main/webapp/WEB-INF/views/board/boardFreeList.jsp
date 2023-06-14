<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="java.util.Date"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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

<title>임보영 졸림</title>
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
									<li class="on"><a href="freelist.bo">자유게시판</a></li>
									<li><a href="mypetlist.bo">강아지 자랑</a></li>
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
											<h1 class="titTag">자유게시판</h1>
										</div>
										<!--
										<form action="#" method="post">
											<div class="payWrapper">
												<div class="dateWrapper">
													<div class="dateSection">
														조회 기간 선택 : <input id="datepicker1" type="text" name="searchDate"> 
													</div>
													<button class="dateBtn btn btn-primary" type="button">조회</button>
												</div>
												<div class="searchTag">
													<input type="text" name="keyword" placeholder="고객명을 입력해주세요" value="${ keyword }">
													<button id="search_icon" type="submit">
														<i class="fa-solid fa-magnifying-glass" style="color: #0888D0"></i>
													</button>
												</div>
												
											</div>
										</form>
										-->

										<div class="tableContainer">

                                            <c:if test="${ not empty loginUser }">
                                                <a id="writing-icon" class="btn btn-secondary" style="float:right;" href="freeEnrollForm.bo?categoryMain=1&categorySub=1">글쓰기</a>
                                            </c:if>

											<table id="boardList" class="table table-hover" align="center">
												<thead>
													<tr>
														<th scope="col">No.</th>
														<th scope="col">글번호</th>
														<th scope="col">제목</th>
														<th scope="col">작성자</th>
														<th scope="col">조회수</th>
														<th scope="col" style="text-align: center;">작성일</th>
														<th scope="col" style="text-align: center;">첨부파일</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="b" items="${ list }">
                                                        <tr>
                                                            <td></td>
                                                            <td class="bno">${ b.boardNo }</td>
                                                            <td>${ b.boardTitle }</td>
                                                            <td>${ b.userNo }</td>
                                                            <td>${ b.count }</td>
                                                            <td>${ b.createDate }</td>
                                                            <td> 
                                                            	<!--  
                                                                <c:if test="${ not empty b.originName }">
                                                                                                                                                                                                            ★
																 <div><img src="${ b.atFilePath.concat(changeName) }" >here</div>		                                                                                                                                                                                                            
                                                                </c:if>
                                                                -->
                                                                 
                                                                 
                                                                 <!--  
                                                                <c:if test="${ not empty b.originName }">
                                                                                                                                                                                                            ★
																 <div><img src="${ b.originName.toLowerCase() }" >here</div>		                                                                                                                                                                                                            
                                                                </c:if>
                                                                --> 
                                                                <c:if test="${ not empty b.originName }">
                                                                                                                                                                                                            ★
																 <div><img src="#" >here</div>		                                                                                                                                                                                                            
                                                                </c:if>
                                                            </td>
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
										<c:if test="${ pi.listCount != 0 }">
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

											<c:forEach var="p" begin="${ pi.startPage }" end="${ pi.endPage }" step="1">
												<li class="page-item active">
													<a class="page-link" href="petsitterRev?pPage=${ p }">${ p }</a>
												</li>
											</c:forEach>

											<c:choose>
												<c:when test="${ pi.currentPage eq pi.maxPage }">
													<li class="arrowTag disabled"><a
														href="javascript:void(0)">&rsaquo;</a></li>
												</c:when>
												<c:otherwise>
													<li class="arrowTag"><a
														href="petsitterRev?pPage=${pi.currentPage + 1}">&rsaquo;</a>
														</li>
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
		$(function() {
			$("#boardList>tbody>tr").click(function() {
				//let bno = $(this).children(".bno").text();
				//location.href = "detail.bo?bno=" + bno;
				location.href = "detail.bo";
			})
		});

	</script>	
</body>
</html>