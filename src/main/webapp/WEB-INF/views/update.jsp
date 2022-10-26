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
<title>guitarList</title>
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<style>
	html,body{
	margin:0; 
    padding:0;
    height:100%;
    display: flex;
    justify-content: center;
	}
	.wrapper{
		width: 960px;
		height: 100%;
		display: flex;
		background-color: #FFF;
	}
	#container{
	    flex:1;
	    margin-bottom: 20px;
	}
   td{text-align:center;}
   .ck-editor__editable { height: 560px; }
   .ck-content { font-size: 12px; }
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>

</head>

<body>
<div class="wrapper">

<div id="container">
	<%-- 
		INSERT INTO post(id,userno,boardId,title,content,createdAt,updatedAt) 
		VALUES (post_seq.nextval, #{userno},#{boardId}, #{title}, #{content}, sysdate, sysdate);
	--%>
	<form method="get" action="${path}/updatePost.do">
	<div>
		<h2>글쓰기</h2>
	</div>
	<input type="hidden" name="id" value="${param.id}">
	<div style="display:flex;flex: 1; flex-direction: row; align-items: center; justify-content: space-between;">
		<div style="display:flex; flex-direction: row; align-items:center; padding : 4px;" >
			<span style="font:400; font-size:40px;font-weight:bold;margin-right: 20px;font-size:16px">제목</span>
			<input type="text" name="title" class="title" value="${post.title}" style="width:300px;height: 34px">
		</div>
		
		<button
		style="color:white;border-radius:2px;font-size:16px;font-weight:bold;background-color:black;width: 80px; height: 40px"
		>
		수정
		</button>	
	
	</div>
	<textarea name="content" id="kt-editor">${post.content}</textarea>
	<script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/classic/ckeditor.js"></script>
	<script src="https://cdn.ckeditor.com/ckeditor5/34.2.0/classic/translations/ko.js"></script>
	<script>
	var KTCkeditorDocument = function () {
	    // Private functions
	    var demo = function () {
	        ClassicEditor
	            .create( document.querySelector( '#kt-editor' ),{
	                    mediaEmbed: {
	                        previewsInData:true
	                    },
	                }
	             )
	            .then( editor => {
	                // console.log( editor );
	            } )
	            .catch( error => {
	                // console.error( error );
	                Swal.fire("Info !", error, "error");
	            } );
	    }

	    return {
	        // public functions
	        init: function() {
	            demo();
	        }
	    };
	}();

	jQuery(document).ready(function() {
	    KTCkeditorDocument.init();
	});
	</script>
	</form>
	
</div>
	<%@include file="../a01_com/footer.jsp"%>
</div>
</body>
<script type="text/javascript">
   $(document).ready(function(){
	   $("[name='save']").click(function() {
		   var title = $("[name='title']")
		   if(title.val().trim() == "") {
			alert("제목을 입력해주세요.");
			title.focus()
			return false;
		   }
		   });
	});
</script>
</html>