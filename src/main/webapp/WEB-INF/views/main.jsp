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
<style type="text/css">
.sch {
	width:500px; 
	margin-top: 50px;
	margin-left: 50px; 
	margin-right:50PX;
	text-align: center;
    border: none;
}
.sch td {
  text-align: center;
      border: none;
}
.sch th {
  text-align: center;
      border: none;
}
#allCk1{
  width: 100%;
  background-color: black;
  color: white;
  padding: 14px 20px;

  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.search1 {
  width: 80%;
  border: 1px solid #bbb;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 14px;
}
</style>
</head>
<body>
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
                    <li><a href="${path}/community.do">커뮤니티</a></li>
                </ul>
            </nav>
        </div>
        <hr>
        <div id="container">
            <h2>main content</h2>
            <p>
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Temporibus asperiores aliquid consequatur eum illo ut excepturi ullam! Quibusdam distinctio magni hic veritatis, eaque placeat numquam et velit similique aut omnis!
            </p>
            <p>
                Lorem ipsum, dolor sit amet consectetur adipisicing elit. Temporibus asperiores aliquid consequatur eum illo ut excepturi ullam! Quibusdam distinctio magni hic veritatis, eaque placeat numquam et velit similique aut omnis!
            </p>
        <div id="serarch">
		<form action="${path}/schList.do" id = "form1" method="post">
	        <div align="center">
			<table class="sch"> 
				<tr>
					<td><input name= "gname" class="search1" value="${param.gname }" placeholder="검색어를 입력하세요" size="50"></td>
					<td><button id="allCk1" type="submit">검색</button></td>
				</tr>
			</table>
	        </div>
		</form> 
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