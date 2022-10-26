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
<style>    
	html,body{
	margin:0; 
    padding:0;
    height:100%;
    width: 100%;
    display: flex;
	}
	.wrapper{
		display: flex;
		height: 100%;
		width: 100%;
		flex-direction: column;
		align-items: center;
		padding: 20px;
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
   div{
   	padding:6px;
   }
	table {
	 width: 100%;
	 border-collapse: collapse;
	 background: white;
	 padding: 12px 18px 12px;
	 background: #000;
	 color:white;
	 font-size: 16px;
	}
	tr{
		
	}
	th{
	 font-weight:bold;
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
   #contents{
   	padding:20px;
   	background: #FFF;
   	border: 1px solid black;
   	margin-top: 24px;
   	margin-bottom: 24px;
   }
   	textarea {
		width: 100%;
		height: 100px;
		padding: 10px;
		box-sizing: border-box;
		border: solid 2px black;
		font-size: 12px;
		resize: none;
	}
	.subBtn{
		color:white;
		border-radius:2px;
		font-size:16px;
		font-weight:bold;
		background-color:black;
		width: 80px;
		height: 40px
	}
	.uptBtn{
		color:white;
		border-radius:2px;
		font-size:16px;
		font-weight:bold;
		background-color:#ffc107;
		border: 0.5px solid #e5e5e5;
		width: 80px;
		height: 40px;
	}
	.delBtn{
		color:white;
		border-radius:2px;
		font-size:16px;
		font-weight:bold;
		background-color:#dc3545;
		border: 0.5px solid #e5e5e5;
		width: 80px;
		height: 40px;
	}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script src="https://kit.fontawesome.com/29fd3243eb.js" crossorigin="anonymous" ></script>
<script type="text/javascript">
   $(document).ready(function(){
	 	  
   		$("#likeBtn").click(function() {
		   $.ajax({
    		  url:"${path}/ajaxLike.do",
    		  data:"id="+${param.id}+"&postId="+${param.postId}+"&userId="+${param.userId},
    		  dataType:"json",
    		  success:function(data){
    			  $("#rec").text(
    					  data.post.recommendation
    			  )
    			  data.likeVo.likeCheck == 1 ?
    			  $("#likeBtn").css("background-color", "#EBFF00") :
    			  $("#likeBtn").css("background-color", "white")
    		  }
    	  })
    	})
      
   });
</script>
<body>
<div class="wrapper">
	<%@include file="../a01_com/header.jsp"%>
<div id="container">
<div style="display:flex; width: 960px;flex-direction: column; justify-content: center; align-self: center;">
	<form method="get">	
	<input type="hidden" name="id" value="${param.id}">
	<input type="hidden" name="postId" value="${param.id}">
	<input type="hidden" name="userId" value="${param.userId}"/>
	
	<div style="display: flex;align-items: center;justify-content: space-between;">
	<span style="font-size: 40px; font-weight: bold;">${post.title}</span>
	<div>
	<button class="uptBtn" type="button" onclick="uptPost()">수정</button>
	<button class="delBtn" type="button" onclick="delPost()">삭제</button>	
	</div>
	</div>
	<div>
	   <table>
	       <tr>	
	       	<td>조회수:${post.views}</td>
	       	<td>추천수:${post.recommendation}</td>
	       	<td>최종 작성일:<fmt:formatDate value="${post.updatedAt}" pattern="yyyy-MM-dd HH:mm"/> </td>
	       	<td>작성자:${post.nick}</td>
	       </tr>
	   </table>
	</div>
	
  	 
   <div id="contents">
  	 ${post.content}
  	 <div align="center">
  	 	<button id="likeBtn" type="button" style="width: 40px; height: 40px;border-radius:20px;border: 1px solid black; background-color: white;">
  	 	<i class="fa-solid fa-thumbs-up"></i>
  	 	</button>
  	 </div>
  	 <div id="rec" align="center">
  	 ${post.recommendation}
  	 </div>
   </div>
   
	<div>
		<%@include file="./comments.jsp" %>
	</div>  
   
   </form>
 
	
   <%-- 
   <div>
      
       <div style="display: flex; flex-direction: column;">
       <div style="display: flex;flex-direction: row;justify-content: space-between;align-items: center;">
       <span>댓글 작성하기</span>
       <button class="subBtn" type="button" onclick="insComment('${param.id}')">작성</button>
       </div>
       <textarea rows="5" id="comments_text" placeholder="댓글 입력"></textarea>
       </div>
   </div>
   --%>
   
   </div>
</div>
	<%@include file="../a01_com/footer.jsp"%>
</div>

</body>
<script type="text/javascript">

	function delPost(){
		if(confirm("정말 삭제하시겠습니까?")) {
			$("form").attr("action","${path}/deletePost.do").submit();
		}
	}
	
	function uptPost(){
		if(confirm("수정하시겠습니까?")) {
			$("form").attr("action","${path}/update.do").submit();
		}
	}
</script>

</html>