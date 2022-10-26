<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*"
    %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<fmt:requestEncoding value="utf-8"/>     
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<form id="frm01" class="form-inline"  method="get" action="${path}/searchPost.do">
	<div style="display: flex;justify-content: center;">
		<input class="schBtn" name="title" placeholder="제목" />
		<button class="btn btn-info" type="submit">Search</button>
	</div>
</form>
</body>
</html>