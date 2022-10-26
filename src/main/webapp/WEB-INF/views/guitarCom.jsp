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
<style>
a { color:black; text-decoration:none }
a:hover{background-color:#EBFF00;}
img{width:250px; height: 320px;}
body{width:960px; margin:auto; background-color:#f5f5f5;}
button{cursor : pointer; background-color: gray; color: white; border-radius: 12px; border-color: gray; }
button:hover{background-color: black; }
.compare{margin:auto;}
.comparetable{border: 1px solid #444444; width:100%}
.comparetable th{background-color: black; color:white; border: 1px solid #444444;}
.comparetable tr{height: 50px; border-color: black; border: 1px solid #444444;}
.comparetable td{height: 50px; border-color: black; border: 1px solid #444444;}

.w3-modal{z-index:3;display:none;padding-top:100px;
	position:fixed;left:0;top:0;width:100%;height:100%;
	overflow:auto;background-color:rgb(0,0,0);
	background-color:rgba(0,0,0,0.4)}
.w3-modal-content{margin:auto;background-color:#fff;position:relative;
	padding:0;outline:0;width:600px;height:400px;}
.close{position:absolute;right:0;top:0;
	font-size: 30px;}
.close:hover {
  font-weight: bold;
  cursor : pointer;
}
.resetbtn {align : center;
    }
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${path}/a00_com/bootstrap.min.css" >
<link rel="stylesheet" href="${path}/a00_com/jquery-ui.css" >
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR&display=swap" rel="stylesheet">
<style>
   td{text-align:center;}
</style>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
<script src="https://developers.google.com/web/ilt/pwa/working-with-the-fetch-api" type="text/javascript"></script>
<script type="text/javascript">
 function option_open(){
	 document.getElementById('id01').style.display='block'
 }
 function option_close(){
	 document.getElementById('id01').style.display='none' 
 } 
</script>
</head>

<body>
<div style="width:960px; background-color: black; height: 50px">
  <h2 style="color:white; font-size: 40px; font-family: fantasy; text-align: center;">상품비교</h2>
</div>
  <hr>
<div>
	<button onclick="option_open()">▼옵션</button> 
	<div id="id01" class="w3-modal">
    	<div class="w3-modal-content">
      		<div class="w3-container">
        		<span onclick="option_close()" class="close">&times;</span> 
        		<h3>옵션선택</h3>	
        		<hr>
        		<div onclick="chkclick()">
        			<div style="width: 400; margin: auto;">
	        		<p><input type="checkbox" id="chk01" name="chklist">		    
	        		<label for="chk01">브랜드</label></p>
	        		<p><input type="checkbox" id="chk02" name="chklist">		    
	        		<label for="chk02">색상</label></p>
	        		<p><input type="checkbox" id="chk03" name="chklist">		    
	        		<label for="chk03">넥</label></p>
	        		<p><input type="checkbox" id="chk04" name="chklist">		    
	        		<label for="chk04">브릿지</label></p>
	        		<p><input type="checkbox" id="chk05" name="chklist">		    
	        		<label for="chk05">구 분</label></p>
	        		<p><input type="checkbox" id="chk06" name="chklist">		    
	        		<label for="chk06">가 격</label></p>
	        		</div>
	        		<div style="text-align: center;">
	        		<button class="resetbtn" onclick="reset()">초기화</button>
	        		</div>
	        	</div>	
	
	        	
 
      		</div>
    	</div>
  	</div>
	<button id="empha" onclick="emphasis()" ondblclick="emphasis2()" title="초기화 하시려면 더블클릭 하세요">차이점강조</button>
</div>
<hr>
<div class="compare">
<!-- 
	<table class="comparetable">	
		<tr class="imgtr">
		<th>이미지</th><td><img src="${glist.img}"></td><td><img src="${glist.img}"></td><td><img src="${glist.img}"></td></tr>
		<tr id="brandid"><th>브랜드</th><td>${glist.brand}</td><td>${glist.brand}</td><td>${glist.brand}</td></tr>
		<tr><th>이름</th><td>${glist.gname}</td><td>${glist.gname}</td><td>${glist.gname}</td></tr>
		<tr id="colorid"><th>색상</th><td>${glist.color}</td><td>${glist.color}</td><td>${glist.color}</td></tr>
		<tr id="neckid"><th>넥</th><td>${glist.neck}</td><td>${glist.neck}</td><td>${glist.neck}</td></tr>
		<tr id="bridgeid"><th>브릿지</th><td>${glist.bridge}</td><td>${glist.bridge}</td><td>${glist.bridge}</td></tr>
		<tr id="standardid"><th>구분</th><td>${glist.standard}</td><td>${glist.standard}</td><td>${glist.standard}</td></tr>
		<tr id="priceid"><th>가격</th><td>11번가 3150000원<br>쿠팡 3200000원</td><td>11번가 4650000원<br>쿠팡 4890000원</td><td>11번가 2560000원<br>쿠팡 2780000원</td></tr>
	</table>
	-->
	<table class="comparetable">
	<col width="7%">
	<col width="31%">
	<col width="31%">
	<col width="31%">
		<tr class="imgtr"><th>이미지</th>
		<c:forEach var="glist" items="${comlist}">
		<td><a href="${path}/guitarDetail.do?gid=${glist.guitarid}"><img src="${glist.img}"></a></td>
		</c:forEach>
		</tr>	
			
		<tr id="brandid"><th>브랜드</th>
		<c:forEach var="glist" items="${comlist}">
		<td><a href="${path}/schList.do?gname=${glist.brand}" target="_self">${glist.brand}</a></td>
		</c:forEach>
		</tr>
		
		<tr><th>이름</th>
		<c:forEach var="glist" items="${comlist}">
		<td>${glist.gname}</td>
		</c:forEach>
		</tr>
				
		<tr id="colorid"><th>색상</th>
		<c:forEach var="glist" items="${comlist}">
		<td>${glist.color}</td>
		</c:forEach>
		</tr>
		
		<tr id="neckid"><th>넥</th>
		<c:forEach var="glist" items="${comlist}">
		<td><a href="${path}/schList.do?gname=&standard=undefined&standard1=undefined&standard2=undefined&neck=${glist.neck}&neck1=undefined&neck2=undefined&brand=undefined&brand1=undefined&brand2=undefined&brand3=undefined&brand4=undefined&brand5=undefined">${glist.neck}</a></td>
		</c:forEach>
		</tr>
		
		<tr id="bridgeid"><th>브릿지</th>
		<c:forEach var="glist" items="${comlist}">
		<td>${glist.bridge}</td>
		</c:forEach>
		</tr>
		
		<tr id="standardid"><th>구분</th>
		<c:forEach var="glist" items="${comlist}">
		<td><a href="${path}/http://localhost:7080/5th_project/schList.do?gname=&standard=${glist.standard}&standard1=undefined&standard2=undefined&neck=undefined&neck1=undefined&neck2=undefined&brand=undefined&brand1=undefined&brand2=undefined&brand3=undefined&brand4=undefined&brand5=undefined">${glist.standard}</a></td>
		</c:forEach>
		</tr>
				
		<tr id="priceid"><th>최소가격</th>
		<c:forEach var="glist" items="${comlist}">
		<td>11번가 ${glist.price}</td>
		</c:forEach>
		</tr>
	</table>
</div>
<script type="text/javascript">
$("[name='chklist']").prop('checked',true);
function reset(){
	$("[name='chklist']").prop('checked',true);
}
function chkclick(){
	if($('#chk01').is(':checked') == false){
		document.getElementById("brandid").style.display='none'
	}else{
		document.getElementById("brandid").style.display=''
	}
	if($('#chk02').is(':checked') == false){
		document.getElementById("colorid").style.display='none'
	}else{
		document.getElementById("colorid").style.display=''
	}
	if($('#chk03').is(':checked') == false){
		document.getElementById("neckid").style.display='none'
	}else{
		document.getElementById("neckid").style.display=''
	}
	if($('#chk04').is(':checked') == false){
		document.getElementById("bridgeid").style.display='none'
	}else{
		document.getElementById("bridgeid").style.display=''
	}
	if($('#chk05').is(':checked') == false){
		document.getElementById("standardid").style.display='none'
	}else{
		document.getElementById("standardid").style.display=''
	}
	if($('#chk06').is(':checked') == false){
		document.getElementById("priceid").style.display='none'
	}else{
		document.getElementById("priceid").style.display=''
	}
}
function emphasis(){
	if($('#brandid').children().eq(1).text() != $('#brandid').children().eq(2).text() || $('#brandid').children().eq(2).text() != $('#brandid').children().eq(3).text() || $('#brandid').children().eq(1).text() != $('#brandid').children().eq(3).text()){
		$('#brandid').css("background-color","#EBFF00");
	}
	if($('#colorid').children().eq(1).text() != $('#colorid').children().eq(2).text() || $('#colorid').children().eq(2).text() != $('#colorid').children().eq(3).text() || $('#colorid').children().eq(1).text() != $('#colorid').children().eq(3).text()){
		$('#colorid').css("background-color","#EBFF00");
	}
	if($('#neckid').children().eq(1).text() != $('#neckid').children().eq(2).text() || $('#neckid').children().eq(2).text() != $('#neckid').children().eq(3).text() || $('#neckid').children().eq(1).text() != $('#neckid').children().eq(3).text()){
		$('#neckid').css("background-color","#EBFF00");
	}
	if($('#bridgeid').children().eq(1).text() != $('#bridgeid').children().eq(2).text() || $('#bridgeid').children().eq(2).text() != $('#bridgeid').children().eq(3).text() || $('#bridgeid').children().eq(1).text() != $('#bridgeid').children().eq(3).text()){
		$('#bridgeid').css("background-color","#EBFF00");
	}
	if($('#standardid').children().eq(1).text() != $('#standardid').children().eq(2).text() || $('#standardid').children().eq(2).text() != $('#standardid').children().eq(3).text() || $('#standardid').children().eq(1).text() != $('#standardid').children().eq(3).text()){
		$('#standardid').css("background-color","#EBFF00");
	}
	if($('#priceid').children().eq(1).text() != $('#priceid').children().eq(2).text() || $('#priceid').children().eq(2).text() != $('#priceid').children().eq(3).text() || $('#priceid').children().eq(1).text() != $('#priceid').children().eq(3).text()){
		$('#priceid').css("background-color","#EBFF00");
	}
}function emphasis2(){
	$('#brandid').css("background-color","#f5f5f5");
	$('#colorid').css("background-color","#f5f5f5");
	$('#neckid').css("background-color","#f5f5f5");
	$('#bridgeid').css("background-color","#f5f5f5");
	$('#standardid').css("background-color","#f5f5f5");
	$('#priceid').css("background-color","#f5f5f5");
}
</script>
</body>
</html>