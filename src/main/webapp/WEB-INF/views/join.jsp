<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>회원가입 - GuitarList</title>
<link rel="stylesheet" href="${path}/css/member/join.css">
<link rel="shortcut icon" href="${path}/css/images/logo.png">
<script src="${path}/a00_com/jquery.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   <%-- 
   
   --%>   
});
</script>
<script type="text/javascript">
function validate() {
    var idVal = /^[a-zA-Z0-9]{4,20}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
    var passVal = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,16}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
    var emailVal = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    // 이메일이 적합한지 검사할 정규식
    var id = document.getElementById("id");
    var pass = document.getElementById("pass");
    var email = document.getElementById("email");
    
    if(id.value=="") {
        alert("아이디를 입력해 주세요");
        id.focus();
        return false;
    }
    if(!check(idVal,id,"아이디는 4~20자의 영문 대소문자와 숫자로만 입력")) {
        return false;
    }
    if(pass.value=="") {
        alert("비밀번호를 입력해 주세요");
        pass.focus();
        return false;
    }
    if(!check(passVal,pass,"패스워드는 8~16자의 특수문자를 포함한 영문 대소문자와 숫자로만 입력")) {
        return false;
    }
    
    if(join.pass.value != join.ckPass.value) {
        alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
        join.ckPass.value = "";
        join.ckPass.focus();
        return false;
    }    
    if(email.value=="") {
        alert("이메일을 입력해 주세요");
        email.focus();
        return false;
    }

    if(!check(emailVal, email, "적합하지 않은 이메일 형식입니다.")) {
        return false;
    }

    if(join.name.value=="") {
        alert("이름을 입력해 주세요");
        join.name.focus();
        return false;
    }    
    alert("회원가입이 완료되었습니다.");
}    
</script>
</head>
<body>
    <div class="wrap">
		<form action="" id="join" name="join" method="post">
        <div class="join">
            <h2>JOIN</h2>
            <div class="email">
                <h4>이메일 주소</h4>
                <input type="email" name="email" id="email" placeholder="이메일 주소 입력">
            </div>
            <div class="id">
                <h4>아이디</h4>
                <input type="text" name="id" id="id" placeholder="영문 숫자 조합 4자 이상, 최대 20자" maxlength="20">
            </div>
            <span id="idcheck_blank" style="font-size: 3px"></span>
            <div class="password">
                <h4>비밀번호</h4>
                <input type="password" name="pass" id="pass" placeholder="숫자,영문,특수문자 포함 8자이상, 최대16자"  maxlength="16">
            </div>
             <span id="passcheck_blank1" style="font-size: 3px"></span>
            <div class="password_ck">
                <h4>비밀번호 확인</h4>
                <input type="password" name="ckPass" id="ckPass" placeholder="숫자,영문,특수문자 포함 8자이상, 최대16자"  maxlength="16">
            </div>    
            <span id="passcheck_blank2" style="font-size: 3px"></span>                                
            <div class="name">
                <h4>이름</h4>
                <input type="text" name="name" id="name" placeholder="이름을 입력하세요" maxlength="16">
            </div>
            <div class="nick">
                <h4>닉네임</h4>
                <input type="text" name="nick" id="nick" placeholder="닉네임을 입력하세요" maxlength="16">
            </div>      
            <div class="standard">
                <h4>나의 현재 LEVEL</h4>              
				<input type="radio" name="${member.standard}" value="입문">
				<input type="radio" name="${member.standard}" value="중급">
				<input type="radio" name="${member.standard}" value="고급">
            </div>             
                  
            <div class="join_button">
                <input type="button" onclick="validate()" class="join_button" id="join_button" value="회원가입"/>
            </div>            
        </div>
        </form>
    </div>
<script type="text/javascript">
var isInsert = "${isInsert}"
	if(isInsert=="Y"){
		if(confirm("회원가입이 완료되었습니다. 로그인 페이지로 이동합니다.")){
			location.href="${path}/login.do"
		}
	}
</script>
</body>
</html>