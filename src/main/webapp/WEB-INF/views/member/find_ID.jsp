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
<link rel="stylesheet" href="${path}/css/member/find_ID.css">
<link rel="shortcut icon" href="${path}/css/images/logo.png">
</head>
<body>
    <div class="wrap">
        <div class="find_ID">
            <h2>아이디 찾기</h2>
            <div class="email">
                <input type="email" name="" id="" placeholder="이메일 주소 입력">
            </div>
            <div class="submit">
                <input type="submit" value="발송">
            </div>  
            <div class="submit">
                <input type="submit" value="로그인하기">
            </div>                        
        </div>
    </div>
</body>
</html>