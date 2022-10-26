<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>GuitarList</title>
<link rel="stylesheet" href="${path}/css/style.css">
<script src="${path}/a00_com/jquery.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$.ajax({
			url:"${path}/guitarReview.do",
			dataType: "html",
			data: "guitarid=${guitarid}",
			success: function(data){
				$("div.review").html($.parseHTML(data));
			}
		});
	});
</script>
<style>
.glist {
	display:flex;
	flex-flow: row wrap;
	justify-content: center;
}
.g_box {
	display: flex;
	flex-direction: column;
	width: 250px;
	height: 400px;
	padding: 10px;
}
img.guitar {
	max-width: 100%;
	max-height: 100%;
}
div.img {
	display:flex;
	align-items:center;
	width: 230px;
	height: 330px;
}
</style>
</head>
<body>
<h1>${gid }</h1>
    <div class="wrapper">
        <div id="header">
            <ul id="login">
                <li>로그인</li>
            </ul>
            <div class="logo">
                <img src="${path}/css/images/logo.png" alt="기타리스트 로고">
            </div>
            <nav class="main_nav">
                <ul id="main_menu">
                    <li><a href="${path}/eventList.do">이벤트</a></li>
                    <li><a href="">상품추천</a></li>
                    <li><a href="">상품비교</a></li>
                    <li><a href="">커뮤니티</a></li>
                </ul>
            </nav>
        </div>
        <hr>
        <div id="container" align="center">
        	<div>${guitar.guitarid }</div>
        	<div>${guitar.gname }</div>
        	<div><img src="${guitar.img}"/></div>
        	<div class="review">
        	</div>
        </div>
        
        <footer>
            <div class="footer_info">
                <span><img src="${path}/css/images/logo_white.png" alt="footer_logo" height="70"></span><br>
                <span>(주)기타리스트 | 대표자: 3조</span><br>
                <span>5차프로젝트: 2022-서울마포-0720 | 개인정보보호책임자: 3조 | 이메일: guitarlist@guitarlist.com</span><br>
                <span>주소: 서울시 마포구 서교동 447-5 풍성빌딩 2,3,4층</span><br>
                <span>@GUITARLIST.ALL RIGHTS RESERVED</span>
            </div>
        </footer>
    </div>
</body>
</html>