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
</head>
<body>
<div class="jumbotron text-center">
  <h2 >리뷰 목록</h2>

</div>
<div class="container">
   <table class="table table-hover table-striped">
   	<col width="50%">
   	<col width="50%">
    <thead>
    
      <tr class="table-success text-center">
        <th>유저아이디</th>
        <th>별점</th>
        <th>내용</th>

      </tr>
    </thead>	
 	<tbody>
		<c:forEach var="r" items="${reviewList}">
			<tr><td>${r.userid}</td><td>${r.stars}</td><td>${r.usercomment}</td></tr>
		</c:forEach>
	</tbody>
</table> 
	
    
</div>
</body>
</html>