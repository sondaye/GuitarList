<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    import="java.text.SimpleDateFormat"
    import="java.io.Date"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${path}/css/draw.css">
<style>
@import url('https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap');
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
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
<%
String evname = request.getParameter("evname");
String span3 = request.getParameter("span3");
%>
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
                  <a href="">커뮤니티</a>
            </nav>
        </div>
        <hr>
        <div class="main-content">
            <div class="container">
                <div id="form_cont">
                <form id="frm01" action="${path}/draw.do" class="form"  method="post">
                    <div class="event_cont">
                        <span style="display:inline-block; font-size:20px; font-weight: bold; margin:20px 0px 10px 10px;"><%=evname%></span><br>
                    </div>
                    <div class="id_input_div">
                        <div class="input">
                            <span id="id_txt" class="text">아이디</span>
                        </div>
                        <input name="user_id" class="form-control" 
                            value="" placeholder="아이디를 입력하세요" />	
                    </div>
                    <p style="font-size:12px; text-align: center; margin-top: 20%; color:#bfbfbf">당첨자 발표일은 <%=span3%> 입니다.</p>
                    <div class="button1">
                        <button type="button" onclick="insertDraw()" class="btn btn-success">응모하기</button>
                    </div>
                    <div class="button2">
                        <button type="button" onclick="goMain()" class="btn btn-info">이벤트 목록</button>
                    </div>		
                </form>
                </div>
            </div>
        </div>
        <footer>
            <div class="footer_info">
                <div class="footer_text">
                    <span><img src="${path}/css/images/logo_white.png" alt="footer_logo" height="70"></span><br>
                    <span>(주)기타리스트 | 대표자: 3조</span><br>
                    <span>5차프로젝트: 2022-서울마포-0720 | 개인정보보호책임자: 3조 | 이메일: guitarlist@guitarlist.com</span><br>
                    <span>주소: 서울시 마포구 서교동 447-5 풍성빌딩 2,3,4층</span><br>
                    <span>@GUITARLIST.ALL RIGHTS RESERVED</span>
                </div>
            </div>
        </footer>
    </div>
    
<script type="text/javascript">
var isApply = "${isApply}"
	if(isApply=="Y"){
		alert("응모가 정상적으로 완료되었습니다.")
		location.href="${path}/eventList.do";
	}
function goMain(){
	location.href="${path}/eventList.do";
}

function insertDraw(){
	if(confirm("등록하시겠습니까?")){
		var userVal = $("[name=user_id]").val();
		if(	userVal == ""){
			alert("아이디를 입력하세요");
			$("[name=user_id]").focus();
			return; // 프로세스를 중단 처리
		}
		var eventVal = $("[name=event_id]").val();
		document.querySelector("form").submit();
	}
}
</script>
</body>
</html>