<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<%--


 --%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/css/reviewInsert.css">
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
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
        <div class="container">
            <form id="frm01" enctype="multipart/form-data" action="${path}/reviewInsert.do" class="form"  method="post">
                <div class="input_cont">
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span>상품을 구매하셨나요?</span>
                    </div>
                    <input name="rctid" class="form-control" 
                        value="" placeholder="영수증 번호를 입력하세요" />	
                </div>  
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span>상품은 만족하셨나요?</span>
                    </div>
                    <input name="star" class="form-control" 
                        value="" placeholder="별점을 입력해주세요 (1~5)" />	
                </div> 	
                <div class="input-group">
                    <div class="input-group-prepend">
                        <span class="text-center input-group-text">어떤 점이 좋았나요?</span>
                    </div>
                    <textarea name="rcont" rows="10" class="form-control"  
                        placeholder="내용을 입력하세요"></textarea>	
                </div>
                <div class="input-group">
                	<div class="input-group-prepend">
                		<span>리뷰 사진을 등록해주세요</span>
                	</div>
                	<input class="review_file" type="file" name="report" placeholder="리뷰 사진을 첨부해주세요"/>
                </div>
                </div>
                <div class="text-right">
                    <button type="button" onclick="insertProc()" class="btn btn-success">등록</button>
                    <button type="button" onclick="goMain()" class="btn btn-info">취소</button>
                </div>		
            </form>
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
var isInsert = "${isInsert}"
	if(isInsert=="Y"){
		if(alert("등록 성공했습니다.")){
			location.href="${path}/reviewList.do"
		}
	}
function goMain(){
	location.href="${path}/reviewList.do";
}
function insertProc(){
	if(confirm("등록하시겠습니까?")){
		var receiptVal = $("[name=rctid]").val();
		if(	receiptVal == ""){
			alert("영수증 번호를 입력하세요");
			$("[name=rctid]").focus();
			return; // 프로세스를 중단 처리
		}	
		var starVal = $("[name=star]").val();		
		if(	starVal == null){
			alert("별점을 등록하세요");
			$("[name=star]").focus();
			return; // 프로세스를 중단 처리
		}	
		var rcontVal = $("[name=rcont]").val();		
		if(	rcontVal == ""){
			alert("내용을 입력하세요");
			$("[name=rcont]").focus();
			return; // 프로세스를 중단 처리
		}
		document.querySelector("form").submit();
	}
}

</script>
</body>
</html>