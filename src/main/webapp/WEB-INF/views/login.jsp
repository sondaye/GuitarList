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
<script src="${path}/a00_com/jquery.min.js"></script>
<script type="text/javascript">
   $(document).ready(function(){
      <%-- 
      
      --%>   
   });
</script>
</head>
<body>


<form method="get">
    <div class="wrap">
   		
        <div class="login">
            <h2>Login</h2>
            <div class="login_id">
                <h4>ID</h4>
                <input type="text" name="id" id="id" placeholder="아이디">
            </div>
            <div class="login_pw">
                <h4>PASSWORD</h4>
                <input type="password" name="pass" id="pass" placeholder="비밀번호">
            </div>
            <div class="login01">
                <button type="button" class="login-btn" onclick="loginChk()">로그인</button>
            </div>            
            <div class=join>
                <button type="button" class="join-btn" onclick="goJoin()">회원가입</button>
            </div>  
        </div>
    </div>
</form>

<script type="text/javascript">
var msg = "${msg}"
var proc = "${proc}"

function goJoin(){
	location.href="${path}/join.do";
}

function loginChk() {
	if($("#id").val().trim() == ""){
		alert("id를 입력해 주십시오");
		$("#id").focus();
		return ;
	}
	if($("#pass").val().trim() == ""){
		alert("패스워드를 입력해 주십시오");
		$("#pass").focus();
		return;
	}
	
	

	
	$("form").attr("action","${path}/loginCheck.do").submit();
	
};
if(proc == "Y") {
	if(msg!="") {
		alert(msg)
	}
	
	location.href="${path}/a01_main.do"
	
}
if (proc == "N") {
	if(msg!="") {
		alert(msg)
	}
	location.href="${path}/login.do"
}
</script>
    
</body>
</html>