<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>로그인 - GuitarList</title>
<link rel="stylesheet" href="${path}/css/member/login.css">
<link rel="shortcut icon" href="${path}/css/images/logo.png">
</head>
<body>
<form method="get">

    <div class="wrap">
        <div class="login">
            <h2>Login</h2>
            <div class="login_id">
                <h4>ID</h4>
                <input type="text" name="" id="" placeholder="아이디">
            </div>
            <div class="login_pw">
                <h4>PASSWORD</h4>
                <input type="password" name="" id="" placeholder="비밀번호">
            </div>
            <div class="submit">
                <input type="submit" id="login" value="LOGIN">
            </div>            
            <div class="login_etc">
                <div class="find_ID">
                	<a href="location.href=find_ID" id="forgot_id">아이디 찾기</a>
            	</div>
                <div class="find_PW">
                	<a href="location.href=find_PW" id="forgot_pw">비밀번호 찾기</a>
            	</div>
                <div class="join">
                	<a href="location.href=join" id="join">회원가입</a>
            	</div>            	
            </div>
        </div>
    </div>
</form>
<script type="text/javascript">
$("#join").click(function () {
	location.href = "join.do";
})
$("#forgot_id").click(function () {
	location.href = "find_ID.do";
});
$("#forgot_pw").click(function () {
	location.href = "find_PW.do";
});
$("#login").click(function () {
	
	if($("#_userid").val().trim() == ""){
		alert("id를 입력해 주십시오");
		$("#_userid").focus();
	}else if($("#_pwd").val().trim() == ""){
		alert("패스워드를 입력해 주십시오");
		$("#_pwd").focus();
	}else{
		$("#_frmForm").submit();
	}
	
});
</script>
    
</body>
</html>