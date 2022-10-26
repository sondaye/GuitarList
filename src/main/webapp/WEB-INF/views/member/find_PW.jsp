<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang = "ko">
<head>
<meta charset="UTF-8">
<title>아이디 찾기 - GuitarList</title>
<link rel="stylesheet" href="${path}/css/member/find_PW.css">
<link rel="shortcut icon" href="${path}/css/images/logo.png">
</head>
<body>
    <div class="wrap">
        <div class="find_PW">
            <h2>비밀번호 찾기</h2>
            <div class="id">
                <input type="text" name="" id="" placeholder="아이디 입력">
            </div>
            <div class="submit">
                <input type="submit" value="임시비밀번호 받기">
            </div>  
            <div class="submit">
                <input type="submit" value="임시비밀번호로 로그인">
            </div>                        
        </div>
    </div>
</body>
</html>