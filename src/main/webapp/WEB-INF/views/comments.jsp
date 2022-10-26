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
<style>
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
	button {
		background-color: rgba( 255, 255, 255, 0);
		border: none;
	}
</style>
<script type="text/javascript">
   $(document).ready(function(){
	   
	   <%--
	  $("#comLikeBtn").click(function() {
		   $.ajax({
    		  url:"${path}/ajaxCommentLike.do",
    		  data:"id="+${param.id}+"&postId="+${param.postId}+"&userId="+${param.userId},
    		  dataType:"json",
    		  success:function(data){
    			  $("#rec").text(
    				    data.post.recommendation
    			  )
    		  }
    	  })
      })
      $("#comHateBtn").click(function() {
		   $.ajax({
    		  url:"${path}/ajaxLike.do",
    		  data:"id="+${param.id}+"&postId="+${param.postId}+"&userId="+${param.userId},
    		  dataType:"json",
    		  success:function(data){
    			  $("#rec").text(
    				    data.post.recommendation
    			  )
    		  }
    	  })
      })
      --%>
   });
</script>
</head>

<body>
      <div style="display: flex; flex-direction: column;">
      <div style="display: flex;flex-direction: row;justify-content: space-between;align-items: center;">
      <span>댓글 작성하기</span>
      <button class="subBtn" type="button" onclick="insComment()">작성</button>
      </div>
      <textarea rows="5" id="comments_text" name="com_content" placeholder="댓글 입력"></textarea>
      </div>
   <c:forEach var="comment" items="${comment}">
	   <div style="background: #e7e7e7; padding: 12px 8px">
	   	<div style="display: flex; flex-direction: row; justify-content: space-between;">
	   		<div style="display: flex; flex-direction: row;">
	   		<span>
	   		${comment.memberId}
	   		(${comment.nick})
	   		</span>
	   		<span>
	   		${comment.standard}
	   		</span>
	   		</div>
	   		<div>
	   		<fmt:formatDate value="${comment.createdAt}" pattern="yyyy-MM-dd HH:mm:ss"/>
	   		</div>
	   	</div>
	   	<div>
	   		${comment.com_content}
	   	</div>
	   	<div style="display: flex; flex-direction:row; justify-content:flex-end;">
	   		<button id="comLikeBtn" type="button">
	   		<i class="fa-solid fa-thumbs-up"></i>
	   		</button>
	   		${comment.recommendation}
	   		<button id="comHateBtn" type="button">
	   		<i class="fa-solid fa-thumbs-down"></i>
	   		</button>
	   		${comment.hates}
	   	</div>
	   </div>
   </c:forEach>
   
</body>
<script type="text/javascript">
	function insComment() {
		if(confirm("댓글을 등록하시겠습니까?")){
			if($("[name=com_content]").val() == "") {
				alert("댓글을 입력해주세요")
				$("[name=com_content]").focus()
				return false;
			}
			
			$("form").attr("action","${path}/post.do?").submit()
		}
	}

</script>
</html>