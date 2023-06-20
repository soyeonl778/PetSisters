<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    <head>
    	<link rel="stylesheet" href="/resources/css/common/csSidebar.css">
    </head>
	<c:if test="${not empty message}">
		<script>
			alertify.alert('알림', '${message}',
			function() {
				alertify.success('서비스 굿!');
			});
		</script>
		<c:remove var="message" scope="session" />
	</c:if>
    
	<!-- 사이드 메뉴바 -->
	<div id="snb" class="snb_my" style="position: absolute;">
    	<img src="/resources/img/main/사이드바이미지.png" alt="sideBarImg">
        <h2 class="tit_snb">고객센터</h2>
    	<div class="inner_sub">
        	<ul class="list_menu">
                <li>
                	<a href="list.no">공지사항</a>
                </li>
                <li>
                	<a href="/showFaq">자주하는 질문</a>
                </li>
                <li class="inquiryCenter">
                	<a onclick="inquiry();">1:1 문의</a>
            	</li>
        	</ul>
    	</div>
    </div>
	<!-- 사이드 메뉴바 끝 -->
	
<script>
  	$(function() {
		$("#noticeTable>tbody>tr").click(function() {
			let noticeNo = $(this).children().eq(0).text();
			/* console.log(noticeNo); */
			location.href = "detail.no?noticeNo=" + noticeNo;
		});
  	});
</script>	
<script>
    function inquiry() {
        $(function() {
            $("li.inquiryCenter > a").click(function(e) {
                let userNo = "${loginUser.userNo}";
                if(userNo === "1") {
                let url = "all.in?userNo=" + userNo + "&cPage=1";
                location.href = url;
                } else {
                let url = "list.in?userNo=" + userNo + "&cPage=1";
                location.href = url;
                }
            });
        });
    }
</script>
<script>
  	$(function() {
		$(".inquiry-row").click(function() {
			let inquiryNo = $(this).children().eq(0).text();
			if (!$(this).hasClass("empty-row")) {
			/* console.log(inquiryNo); */
				location.href = "detail.in?inquiryNo=" + inquiryNo;
			}
		});
  	});
</script>