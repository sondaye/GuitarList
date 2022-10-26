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
<script type="text/javascript">
<script language="javascript">
////////아이디/////////
$("#id").blur(function() {
 	let idCheck = /^[a-zA-Z0-9]{4,20}$/;
 	
 	if ($("#id").val() == "") {
         $("#idcheck_blank").css("color", "red");
         $("#idcheck_blank").text("아이디를 입력해야 합니다.");
         id = false;
 	}else if(!idCheck.test($("#id").val())) {
         $("#idcheck_blank").css("color", "red");
         $("#idcheck_blank").text("영문과 숫자 조합하여 4~20자만 가능");
         id = false;
    }else {
    	$("#idcheck_blank").css("color", "blue");
    	$("#idcheck_blank").text("사용가능한 아이디입니다.");
    	id = true;
    }
 });
////////비밀번호/////////
$("#password").blur(function() {
	let pwdCheck= /^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,16}$/;
	
	if ($("#password").val() == "") {
        $("#passcheck_blank1").css("color", "red");
        $("#passcheck_blank1").text("비밀번호를 입력해야 합니다.");
        password = false;
     }	
     else if (!pwdCheck.test($("#password").val())) {
	  	 $("#passcheck_blank1").css("color", "red");
	     $("#passcheck_blank1").text("비밀번호는 영문+숫자+특수문자 조합하여 8~16자리를 사용해야 합니다");
	     password = false;
     }else {
   	  $("#passcheck_blank1").css("color", "blue");
		  $("#passcheck_blank1").text("안전한 비밀번호 입니다. 아래에 한번 더 입력하세요");
		  password = true;
     }
}); 
/////비밀번호 확인//////
$("#pass_ck").blur(function() {
	if($("#pass_ck").val() == "") {
		$("#passcheck_blank2").css("color", "red");
        $("#passcheck_blank2").text("비밀번호확인은 필수 입니다..");
        password_check = false;
	}
	else if(password == true && $("#password").val() == $("#pass_ck").val()) {
		$("#passcheck_blank2").css("color", "blue");
		$("#passcheck_blank2").text("비밀번호가 일치합니다");
		password_check = true;
	}else {
		$("#passcheck_blank2").css("color", "red");
		$("#passcheck_blank2").text("비밀번호를 다시 확인해주세요");
		$("#pass_ck").val("");
		password_check = false;
	}
});
/////이름///////
$("#name").blur(function() {
	if( $("#name").val == "" ) {
		name = false;
	}else {
		name = true;
	}	
});
$("#nick").blur(function() {
	if( $("#nick").val == "" ) {
		name = false;
	}else {
		name = true;
	}	
});
</script>
</head>
<body>
    <div class="wrap">
		<form action="" id="join_form" name="join_form" method="post">
        <div class="join">
            <h2>JOIN</h2>
            <div class="email">
                <h4>이메일 주소</h4>
                <input type="email" name="email" id="email" placeholder="이메일 주소 입력">
            </div>
            <div class="id">
                <h4>아이디</h4>
                <input type="text" name="id" id="" placeholder="영문 숫자 조합 4자 이상, 최대 20자" maxlength="20">
            </div>
            <span id="idcheck_blank" style="font-size: 3px"></span>
            <div class="password">
                <h4>비밀번호</h4>
                <input type="password" name="pass" id="password" placeholder="숫자,영문,특수문자 포함 8자이상, 최대16자"  maxlength="16">
            </div>
             <span id="passcheck_blank1" style="font-size: 3px"></span>
            <div class="password_ck">
                <h4>비밀번호 확인</h4>
                <input type="password" name="pass_ck" id="pass_ck" placeholder="숫자,영문,특수문자 포함 8자이상, 최대16자"  maxlength="16">
            </div>    
            <span id="passcheck_blank2" style="font-size: 3px"></span>                                
            <div class="name">
                <h4>이름</h4>
                <input type="text" name="name" id="" placeholder="이름을 입력하세요" maxlength="16">
            </div>
            <div class="nick">
                <h4>닉네임</h4>
                <input type="text" name="nick" id="" placeholder="닉네임을 입력하세요" maxlength="16">
            </div>            
            <div class="join_button">
                <input type="button" class="join_button" id="join_button" value="회원가입"/>
            </div>            
        </div>
        </form>
    </div>
<script>
$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".join_button").click(function(){
		if($("#id").val().trim() == ""){
			alert("id를 입력해 주십시오");
			$("#_id").focus();
		}
		else if($("#pass").val().trim() == ""){
			alert("패스워드를 입력해 주십시오");
			$("#pass").focus();
		}
		else{
			$("join_form").attr("action", "joinAf.do").submit();		
		}
	});
});

</script>  
</body>
</html>