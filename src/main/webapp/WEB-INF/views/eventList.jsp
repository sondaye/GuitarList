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
<link rel="stylesheet" href="${path}/css/eventList.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
</style>
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
                    <a href="${path}/eventList.do">이벤트</a>
                    <a href="">상품추천</a>
                    <a href="">상품비교</a>
                    <a href="">커뮤니티</a>
            </nav>
        </div>
        <hr>
        <h1 style="text-align:center; padding-bottom:30px;">이벤트</h1>
        <div id="container">
            <ul>
                <li class="item">
                    <img src="${eventList[0].image}" alt="이벤트이미지">
                    <div class="cont">
                    <strong>${eventList[0].evname}</strong>
                    <p>당첨상품: ${eventList[0].prize}</p>
                    </div>
                    <button onclick="goDetail('${eventList[0].evname}')">상세보기</button>
                </li>
                <li class="item">
                    <img src="${eventList[1].image}" alt="이벤트이미지">
                    <div class="cont">
                    <strong>${eventList[1].evname}</strong>
                    <p>당첨상품: ${eventList[1].prize}</p>
                    </div>
                    <button onclick="goDetail('${eventList[1].evname}')">상세보기</button>
                </li>
                <li class="item">
                    <img src="${eventList[2].image}" alt="이벤트이미지">
                    <div class="cont">
                    <strong>${eventList[2].evname}</strong>
                    <p>당첨상품: ${eventList[2].prize}</p>
                    </div>
                    <button onclick="goDetail('${eventList[2].evname}')">상세보기</button>
                </li>
                <li class="item">
                    <img src="${eventList[3].image}" alt="이벤트이미지">
                    <div class="cont">
                    <strong>${eventList[3].evname}</strong>
                    <p>당첨상품: ${eventList[3].prize}</p>
                    </div>
                     <button onclick="goDetail('${eventList[3].evname}')">상세보기</button>
                </li>
                <li class="item">
                    <img src="${eventList[4].image}" alt="이벤트이미지">
                    <div class="cont">
                    <strong>${eventList[4].evname}</strong>
                    <p>당첨상품: ${eventList[4].prize}</p>
                    </div>
                    <button onclick="goDetail('${eventList[4].evname}')">상세보기</button>
                </li>
                <li class="item">
                	<img src="${eventList[5].image}" alt="이벤트이미지">
                    <div class="cont">
                    <strong>${eventList[5].evname}</strong>
                    <p>당첨상품: ${eventList[5].prize}</p>
                    </div>
                    <button onclick="goDetail('${eventList[4].evname}')">상세보기</button>
                </li>        
            </ul>
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
function goDetail(evname){
	location.href="${path}/eventDetail.do?evname="+evname;
}
</script>
</body>
</html>