<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
a{
    text-decoration: none;
    color: black;
}
#header {
	width:100%
}
#header #login{
    border-bottom: 1px solid #e6e8eb;
    list-style: none;
    display: flex;
    justify-content: right;
    padding-right: 5em;
}

/*logo 영역*/
.logo{
    margin-top: 3em;
    text-align: center;
}

/*Main menu*/
#main_menu{
    list-style: none;
    display: flex;
    justify-content: center;
    border-bottom: 1px solid #e6e8eb;
    margin-top: 50px;
    padding: 0;
}
#main_menu li{
    padding: 16px 50px;
}
</style>
</head>
<body>
	<div id="header">
		<ul id="login">
			<a href="${path}/login.do"><li>로그인</li></a>
		</ul>
		<div class="logo">
			<a href="${path}/main.do">
			<img src="${path}/css/images/logo.png" alt="기타리스트 로고">
			</a>
		</div>
		<nav class="main_nav">
			<ul id="main_menu">
			    <li><a href="${path}/eventList.do">이벤트</a></li>
			    <li><a href="${path}/recommend.do">상품추천</a></li>
			    <li><a href="">상품비교</a></li>
			    <li><a href="${path}/community.do">커뮤니티</a></li>
			</ul>
		</nav>
	</div>
</body>
</html>