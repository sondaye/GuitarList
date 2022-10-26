<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuitarList</title>
<link rel="stylesheet" href="${path}/css/eventDetail.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
</style>
<style>
   td{text-align:center;}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
</script>
</head>
<body>
    <div class="wrapper">
        <div id="header">
            <ul id="login">
                <li>로그인</li>
            </ul>
            <div class="logo">
                 <a href="${path}/main.do"><img src="${path}/css/images/logo.png" alt="기타리스트 로고"></a>
            </div>
            <nav class="main_nav">
                    <a href="${path}/eventList.do" style="font-weight:bold">이벤트</a>
                    <a href="">상품추천</a>
                    <a href="">상품비교</a>
                    <a href="${path}/community.do">커뮤니티</a>
            </nav>
        </div>
        <hr>
        <div id="container">
            <div class="cont">
            <div class="cont_image">
                <img src="${event.image}" alt="이벤트 이미지">
            </div>
            <div class="box">
            	<div class="box_info">
                <ul>
                    <li style="font-family:'Noto Sans KR',sans-serif; font-weight:bold; font-size:20px;" >${event.evname}</li>
                    <li style="font-family:'Noto Sans KR',sans-serif;">당첨상품: ${event.prize}</li>
                    <li style="font-family:'Noto Sans KR',sans-serif;">응모기간:<br><fmt:formatDate value="${event.span1}" pattern="yyyy-MM-dd"/> ~ <fmt:formatDate value="${event.span2}" pattern="yyyy-MM-dd"/></li>
                    <li style="font-family:'Noto Sans KR',sans-serif;">당첨자 발표일: <fmt:formatDate value="${event.span3}" pattern="yyyy-MM-dd"/></li>
                </ul>
                <p style="font-family:'Noto Sans KR',sans-serif;">${event.contents}</p>
                <div class="apBtn">
                <form action="${path}/drawForm.do" method="post">
                <input type="hidden" name="evname" value="${event.evname}"/>
                <input type="hidden" name="span3" value="${event.span3}"/>
                <button style="font-family:'Noto Sans KR',sans-serif;" onclick="goDraw()">응모하기</button>
                </form>
                </div>
                </div>
            </div>
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
<script>
function goDraw(){
	document.querySelector("form").submit();
}
</script>
</body>
</html>