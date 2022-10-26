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
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	.input-group-text{width:100%;background-color:#cfffdf;color:black;font-weight:bolder;}
	.input-group-prepend{width:20%;}
</style>
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
%>
<div class="jumbotron text-center">
  <h2>응모하기</h2>
</div>
<h1>이벤트이름: <%=evname%></h1>
<div class="container">
	<form id="frm01" action="${path}/draw.do" class="form"  method="post">
		<div class="input-group mb-3">
			<div class="input-group-prepend">
				<span class="text-center input-group-text">아이디</span>
			</div>
			<input name="user_id" class="form-control" 
				value="" placeholder="아이디를 입력하세요" />	
		</div>	
		<input type="hidden" name="event_id" class="form-control" value="<%=evname%>">  	
		<div class="text-right">
			<button type="button" onclick="insertDraw()" class="btn btn-success">응모하기</button>
			<button type="button" onclick="goMain()" class="btn btn-info">이벤트 목록</button>
		</div>		
	</form>
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