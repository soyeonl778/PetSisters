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
									<li class="on"><a href="petsitterRev">내 예약 관리</a></li>
									<li><a href="#">정산 조회</a></li>
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

										<form action="petsitterRev" method="post">
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
															<th scope="row" class="liner">${ r.rowNum }</th>
															<td class="uniqeNo liner">${ r.resNo }</td>
															<c:choose>
																<c:when
																	test="${ r.status eq 'Y' and r.endDate > nowDate }">
																	<td class="specialTd liner">예약진행중</td>
																</c:when>
																<c:otherwise>
																	<td class="specialTd liner">예약종료</td>
																</c:otherwise>
															</c:choose>
															<td class="liner">${ r.userName }</td>
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
												</tbody>
											</table>
												<c:if test="${ rev.isEmpty() }">
													<div class="emptyData">
														아직 예약이 없어요..ㅠㅠ
													</div>
												</c:if>
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
	$(document).ready(function () {

		  // 예약상태에 따라 색상 변경
		  $("td.specialTd:contains('예약진행중')").css("color", "#0888D0");
		  $("td.specialTd:contains('예약종료')").css("color", "green");

		  // 예약번호 뽑아오기
		  $('tbody tr').click(function () {
		    var uniqeNo = $(this).find('.uniqeNo').text();
		    console.log(uniqeNo);
		  });

		  $(function () {
		    $('#datepicker1').daterangepicker({
		      beforeShowDay: function (date) {
		        return [(date.getDate() != 1)]
		      },
		      locale: {
		        "separator": " ~ ",
		        "format": 'YYYY-MM-DD',
		        "applyLabel": "확인",
		        "cancelLabel": "취소",
		        "weekLabel": "주",
		        "daysOfWeek": ["일", "월", "화", "수", "목", "금", "토"],
		        "monthNames": ["1월", "2월", "3월", "4월", "5월", "6월", "7월", "8월", "9월", "10월", "11월", "12월"],
		        "cancelLabel": "삭제"
		      },
		      ranges: {
		        '오늘': [moment(), moment()],
		        '어제': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
		        '지난 1주일': [moment().subtract(6, 'days'), moment()],
		        '최근 30일': [moment().subtract(29, 'days'), moment()],
		        '이번달': [moment().startOf('month'), moment().endOf('month')],
		        '저번달': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
		      },
		      "alwaysShowCalendars": true,
		      showDropdowns: true,
		      autoApply: true,
		      singleDatePicker: false,

		    }).on('cancel.daterangepicker', function (ev, picker) {
		      $(ev.currentTarget).val('');
		    });

		  });


		  $(document).on('focusout', '#datepicker1', function() {
			    var selectedDate = $(this).val();
			    let startDate = selectedDate.slice(0, 10);
			    let endDate = selectedDate.slice(-10);
			    console.log('변경된 날짜:', selectedDate);
			    
			  });
		  
		  $('.dateBtn').on('click', function () {
			  
			// String 타입의 값
			  var dateString = '6월 5, 2023';

			  // String을 Date 객체로 변환
			  var datee = new Date(dateString.replace(/(\d{1,2})월 (\d{1,2}), (\d{4})/, '$3-$1-$2'));

			  // Date 객체를 원하는 형식으로 포맷팅
			  var formattedDate = datee.toISOString().slice(0, 10); // '2023-06-05'

			  // 포맷팅된 값을 출력
			  console.log('이거맞아?', formattedDate);
			  
			    let date = $('#datepicker1').val();
			    let startDateStr = date.substr(0, 10);
			    let endDateStr = date.slice(-10);
			    
			    let dateData = {
			        startDate: startDateStr,
			        endDate: endDateStr
			    };
			    
			    $.ajax({
			        url: "dateFilter",
			        type: "POST",
			        data: dateData, 
			        success: function(res) {
			        	
			            let nowDate = new Date().toISOString().slice(0, 10);
			            console.log(res);
			            let rere = "";
			            let result = "";
			            $('.table>tbody').html(rere);
			            $('#pagiUl').css("display", "none");
			            
			            for(let i = 0; i < res.length; i++) {
			  			  
			    			  var startDate = res[i].startDate;
			    			  var endDate = res[i].endDate;

			    			  var startDate = new Date(startDate.replace(/(\d{1,2})월 (\d{1,2}), (\d{4})/, '$3-$1-$2'));
			    			  var endDate = new Date(endDate.replace(/(\d{1,2})월 (\d{1,2}), (\d{4})/, '$3-$1-$2'));

			    			  var start = startDate.toISOString().slice(0, 10); 
			    			  var end = endDate.toISOString().slice(0, 10);
			            	
			            	if(res[i].status === 'Y' && end >= nowDate) {
			            	
			            	result += "<tr>"
			            			+ "<th class='liner'>" + res[i].rowNum + "</th>"
			            			+ "<td class='liner revTh uniqeNo'>" + res[i].resNo + "</td>"
			            			+ "<td class='specialTd liner' style='color: #0888D0'>예약진행중</td>"
			            			+ "<td class='liner'>" + res[i].userName + "</td>"
			            			+ "<td class='checkIn'>" + start + "<br>" +  end + "</td>"
			            			+ "<td class='revDates'>" + res[i].registerDate.substring(0, 10) + "</td>"
			            			+ "<td class='revDates'>" + res[i].payPrice + "</td>"
			            			+ "</tr>"	
			            	} else {
				            	result += "<tr>"
			            			+ "<th class='liner'>" + res[i].rowNum + "</th>"
			            			+ "<td class='liner revTh uniqeNo'>" + res[i].resNo + "</td>"
			            			+ "<td class='specialTd liner' style='color: green'>예약종료</td>"
			            			+ "<td class='liner'>" + res[i].userName + "</td>"
			            			+ "<td class='checkIn'>" + start + "<br>" +  end + "</td>"
			            			+ "<td class='revDates'>" + res[i].registerDate.substring(0, 10) + "</td>"
			            			+ "<td class='revDates'>" + res[i].payPrice + "</td>"
			            			+ "</tr>"	
			            	}		
			            }
			            $('.table>tbody').html(result);
			            
			        },
			        error: function(e) {
			            console.log(e);
			        }
			    });
			});

		  
		});
	</script>
</body>
</html>