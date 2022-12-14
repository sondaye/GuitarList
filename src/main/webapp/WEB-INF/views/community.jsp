<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath }"/>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>GuitarList</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
html,body{
	margin:0; 
    padding:0;
    height:100%;
    width: 100%;
    display: flex;
    justify-content: center;
	}
	.wrapper{
		display: flex;
		height: 100%;
		width: 100%;
		flex-direction: column;
		align-items: center;
		background-color: #FFF;
	}
	#container{
        display: flex;
	    flex: 1;
	    flex-direction: column;
	    width: 100%;
	    padding: 20px;
	    background-color: #e5e5e5;
	    align-items: center;
	}
	a{
	    text-decoration: none;
	    color: black;
	}
	table {
	 width: 100%;
	 border-collapse: collapse;
	 background: white;
	 padding: 12px 18px 12px;
	 background: #000;
	 color:white;
	}
	tr{
	}
	th{
	 font-weight:bold;
	 padding : 4px;
	}
   td{
   	text-align:center;
   	background: #fff;
   	border: 1px solid #fff;
   	color: black;
   }
   div{
   	padding:6px;
   }
   .schBtn {
   	
   }
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>

<script type="text/javascript">
   $(document).ready(function(){
	   <%--
	    
	   --%>
   });
</script>
</head>
<body>

<div class="wrapper">
	<%@include file="../a01_com/header.jsp"%>
<div id="container">
	<div style="display:flex; width: 960px;flex-direction: column; justify-content: center; align-self: center;">
	
  <div style="display:flex;width:100%;flex-direction: row;justify-content: space-between;">
  	<h2>????????????</h2>
  </div>
  <div>
    <form action="board.do">
  	<table>
  		<tr>
	  		<th><a style="color:white;" href="/5th_project/community.do">Hot10/??????</a></th>
	  		<c:forEach var="board" items="${boardList}">
	  			<th><button name="boardId" value="${board.id}" style="background-color:#000;border: none;width: 100px; height: 60px;font:bold;font-size:16px;color:white;">${board.boardName}</button></th>
	  		</c:forEach>
  		</tr>
  	</table>
	</form>
  </div>
  <div>
    <h3>????????? Hot 10</h3>
   <table class="table table-hover table-striped">
    <thead>
      <tr class="table-success text-center">
        <th>????????? ??????</th>
        <th>??????</th>
        <th>?????????</th>
        <th>?????????</th>
        <th>??????</th>
      </tr>
    </thead>
    <tbody>
    	<c:forEach var="hotPost" items="${hotPostList}">
	       	<tr>
	       		<td>${hotPost.boardName}</td>
	       		<td><a href="/5th_project/post.do?id=${hotPost.id}&postId=${hotPost.id}&userId=${member.userId}">
	       		${hotPost.title} [${hotPost.reply_cnt}] 
	       		????????? ${hotPost.recommendation} </a></td>
	       		<td>${hotPost.nick}</td>
	       		<td><fmt:formatDate value="${hotPost.createdAt}" pattern="MM-dd"/></td>
	       		<td>${hotPost.views}</td>
	       	</tr>
    	</c:forEach>
    </tbody>
   </table>
   
	<h3>?????? ???</h3>
   <table class="table table-hover table-striped">
	<thead>
	  <tr class="table-success text-center">
	    <th>????????? ??????</th>
	    <th>??????</th>
	    <th>?????????</th>
	    <th>?????????</th>
	    <th>??????</th>
	  </tr>
	</thead>   
	
	<tbody >
		<c:forEach var="latestPost" items="${latestPostList}">
		  	<tr>
		  		<td>${latestPost.boardName}</td>
		  		<td><a href="/5th_project/post.do?id=${latestPost.id}">
		  		${latestPost.title} [${latestPost.reply_cnt}] 
		  		????????? ${latestPost.recommendation}</a></td>
		  		<td>${latestPost.nick}</td>
		  		<td><fmt:formatDate value="${latestPost.createdAt}" pattern="MM-dd"/></td>
		  		<td>${latestPost.views}</td>
		  	</tr>
		</c:forEach>
	</tbody>
   </table>  
  </div>
   
   <%@include file="../component/searchBar.jsp"%>
   </div>
</div>
	<%@include file="../a01_com/footer.jsp"%>
</div>
</body>

</html>