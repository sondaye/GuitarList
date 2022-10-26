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
	<c:forEach var="g" items="${glist}">
		<div class="g_box">
			<div class="g_item"><div class="img"><img class="guitar" src="${g.img}"/></div></div>
			<div class="g_item">${g.gname}</div>
			<div class="g_item"><span>최저가 </span><fmt:formatNumber type="currency">${g.minprice}</fmt:formatNumber>원 </div>
			<input type="hidden" name="gid" value="${g.guitarid}"/>
		</div>
	</c:forEach>
</body>
</html>