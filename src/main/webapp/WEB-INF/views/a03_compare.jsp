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
                    <li><a href="">커뮤니티</a></li>
                </ul>
            </nav>
        </div>
        <hr>
        <div id="container">
			     <table style="border">
      <col width="10%">
      <col width="10%">
      <col width="10%">
      <col width="10%">
      <col width="10%">
      <col width="10%">
      <col width="10%">
      <col width="10%">
      <col width="10%">
      <col width="10%">
      
    <thead>
    
      <tr class="table-success text-center">
        <th>이미지</th>
        <th>아이디</th>
        <th>브랜드</th>
        <th>기타 이름</th>
        <th>색</th>
        <th>넥 종류</th>
        <th>브릿지 종류</th>
        <th>실력?</th>
        <th>가격</th>
        <th>비교하기</th>
      </tr>
      
          <!-- String guitarid, String brand, String gname, String color, String neck, String bridge,
			String standard, int price, String img -->
    </thead>   
    	
		<c:forEach var="gu1" items="${comlist}">
       <tr>
       <td><img src="${gu1.img }"></td><td>${gu1.guitarid }</td><td>${gu1.brand }</td><td>${gu1.gname }</td>
       <td>${gu1.color }</td><td>${gu1.neck }</td><td>${gu1.bridge }</td><td>${gu1.standard }</td>
      </tr>
       	</c:forEach>
   </table>	
   		       	<button type="button" onclick="goMain()" class="btn btn-success">메인</button>
            
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
    <script type="text/javascript">
 	function goMain(){
		location.href="${path}/main.do";
	}
    </script>
</body>
</html>