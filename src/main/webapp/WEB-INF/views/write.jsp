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
<%@include file="../a01_com/header.jsp"%>
<div id="container">
	<div style="display:flex; width: 960px;flex-direction: column; justify-content: center; align-self: center;">
	<form method="get" action="insertProc.do">
	<div>
		<h2>글쓰기${member.userId}</h2>
	</div>
	<input type="hidden" name="userId" value="${member.userId}">
	<input type="hidden" name="boardId" value="${param.boardId}">
	
	<div style="display:flex;flex: 1; flex-direction: row; align-items: center; justify-content: space-between;">
		<div style="display:flex; flex-direction: row; align-items:center; padding : 4px;" >
			<span style="font:400; font-size:40px;font-weight:bold;margin-right: 20px;font-size:16px">제목</span>
			<input type="text" name="title" class="title" value="${post.title}" style="width:300px;height: 34px">
		</div>
		
		<button
		style="color:white;border-radius:2px;font-size:16px;font-weight:bold;background-color:black;width: 80px; height: 40px"
		>
		저장
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