<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang = "ko">
<head>
<style>
img {
	width: 200px;
    height: 200px;
}
.schInput{
	background-color: #c0c0c0;
	color:black; 
   border-radius: 10px;
   text-align: center;
    height: 20px;
	}
table, td, th {
    border-collapse : collapse;
    border : 1px solid black;
}
th{
background-color : black;
color : white;
  height: 70px;
}
table {
  position: relative;
 width:1200px; 
  border-collapse: collapse;
     margin-top: 50px;

}

td {
  text-align: center;
}
#btn01{
	width:100px;
}
.sch {
	width:500px; 
	margin-top: 50px;
	margin-left: 50px; 
	margin-right:50PX;
	text-align: center;
    border: none;
}
.sch {
  border: none;
}

.sch td {
  text-align: center;
      border: none;
}
.sch th {
  text-align: center;
      border: none;
}
#com{
  width: 10%;
  background-color: black;
  color: white;
  padding: 14px 20px;
  margin-top : 10px;


  border: none;
  border-radius: 4px;
  cursor: pointer;
}
#com1{
  width: 10%;
  background-color: black;
  color: white;
  padding: 14px 20px;
    margin-top : 10px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
#allCk{
  width: 10%;
  background-color: black;
  color: white;
  padding: 14px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}
#allCk1{
  width: 100%;
  background-color: black;
  color: white;
  padding: 14px 20px;

  border: none;
  border-radius: 4px;
  cursor: pointer;
}
.input1{
  position: relative;
  width: px;

}
.search {
  position: relative;
  width: 500px;

}

.search1 {
  width: 80%;
  border: 1px solid #bbb;
  border-radius: 8px;
  padding: 10px 12px;
  font-size: 14px;
}
</style>
<script src="${path}/a00_com/jquery.min.js"></script>
<script src="${path}/a00_com/popper.min.js"></script>
<script src="${path}/a00_com/bootstrap.min.js"></script>
<script src="${path}/a00_com/jquery-ui.js"></script>
<meta charset="UTF-8">
<title>GuitarList</title>
<link rel="stylesheet" href="${path}/css/style.css">
<script type="text/javascript">


</script>
</head>
<body>
<div id="txt"></div>
    <div class="wrapper">
        <div id="header">
            <ul id="login">
                <li>로그인</li>
            </ul>
            <div class="logo">
                <a href="${path}/main.do"><img src="${path}/css/images/logo.png" alt="기타리스트 로고"></a>
            </div>
            <nav class="main_nav">
                <ul id="main_menu">
                    <li><a href="${path}/eventList.do">이벤트</a></li>
                    <li><a href="">상품추천</a></li>
                    <li><a href="">상품비교</a></li>
                    <li><a href="">커뮤니티</a></li>
                </ul>
            </nav>
        </div>
        <hr>
        			           <div id="container">
   	   <form id="form" method="get">
		
        <div align="center">
		<table class="sch"> 
			<tr>
				<td><input name= "gname" class="search1" value="${param.gname }" placeholder="검색어를 입력하세요" size="50"></td>
				<td><button id="allCk1" type="submit">검색</button></td>
			</tr>
		</table>
        </div>
        </form>
        <form id="form1" method="get">
        <div align="center">
			<table>
       		<tr><th colspan="7">원하는 검색 정보</th></tr>
       		<tr><th>실력</th><td colspan="2"><input type="checkbox" name="standard" id="standard1" value="입문">입문</td>
       		<td colspan="2"><input type="checkbox" name="standard" id="standard2" value="중급">중급</td>
       		<td colspan="2"><input type="checkbox" name="standard" id="standard3" value="고급">고급</td>
			</tr>
       		
       		<tr><th>넥</th><td colspan="2"><input type="checkbox" name="neck"  value="로즈우드">로즈우드</td>
       		<td colspan="2"><input type="checkbox" name="neck"  value="메이플">메이플</td>
       		<td colspan="2"><input type="checkbox" name="neck"  value="인디안로렐">인디안로렐</td></tr>
       		
       		<tr><th>브랜드</th><td><input type="checkbox" name="brand"  value="깁슨">깁슨</td>
       		<td><input type="checkbox" name="brand"  value="펜더">펜더</td>
       		<td><input type="checkbox" name="brand"  value="스털링">스털링</td>
       		<td><input type="checkbox" name="brand"  value="에피폰">에피폰</td>
       		<td><input type="checkbox" name="brand"  value="스콰이어">스콰이어</td>
       		<td><input type="checkbox" name="brand"  value="바커스">바커스</td></tr>
       		
       		<tr><td colspan="7"><button type="button" id="allCk" class="buttonSch" onclick="goStandard()">검색</button></td></tr>
       	</table>
       	</div>
<script type="text/javascript">
function goStandard(){
	let standard = document.getElementsByName("standard");
	let neck = document.getElementsByName("neck");
	let brand = document.getElementsByName("brand");
	let standardArray = [];
	let neckArray = [];
	let brandArray = [];
		for(let i=0; i<standard.length; i++){
			if(standard[i].checked){
				standardArray.push(standard[i].value);
			}
		}
		for(let i=0; i<neck.length; i++){
			if(neck[i].checked){
				neckArray.push(neck[i].value);
			}
		}
		for(let i=0; i<brand.length; i++){
			if(brand[i].checked){
				brandArray.push(brand[i].value);
			}
		}
		$("#form1").attr("action", "schList.do").submit()
}
</script>


<div align="center">
	 <table>
      <tr>
        <th>이미지</th>
        <th>아이디</th>
        <th>브랜드</th>
        <th>기타 이름</th>
        <th>색</th>
        <th>넥 종류</th>
        <th>브릿지 종류</th>
        <th>실력?</th>
        <th>비교하기</th>
      </tr>
      
          <!-- String guitarid, String brand, String gname, String color, String neck, String bridge,
			String standard, int price, String img -->
 
		<c:forEach var="gu" items="${sclist}">
       <tr><td><img src="${gu.img }"></td><td>${gu.guitarid }</td><td>${gu.brand }</td><td>${gu.gname }</td>
       <td>${gu.color }</td><td>${gu.neck }</td><td>${gu.bridge }</td><td id="standard">${gu.standard }</td>
       <td><input type="checkbox" name="guitarid"  value="${gu.guitarid }"></td></tr>
       	</c:forEach>
   </table>
		       	<button type="button" id="com" onclick="goSchMain()" class="btn btn-success">메인</button>
		       	<button type="button" id="com1" value="compare" onclick="goCompare()">비교하기</button>
		       	</div>
		</form>
        </div>
        <footer>
            <div class="footer_info">
                <span><img src="${path}/css/images/logo_white.png" alt="footer_logo" height="70"></span><br>
                <span>(주)기타리스트 | 대표자: 3조</span><br>
                <span>5차프로젝트: 2022-서울마포-0720 | 개인정보보호책임자: 3조 | 이메일: guitarlist@guitarlist.com</span><br>
                <span>주소: 서울시 마포구 서교동 447-5 풍성빌딩 2,3,4층</span><br>
                <span>@GUITARLIST.ALL RIGHTS RESERVED</span>
            </div>
        </footer>
    </div>

 <script type="text/javascript">
	function goCompare(guitarid){
 		let compare = document.getElementsByName("guitarid");
 		let compare_items = [];
 		if($("input:checkbox[name=guitarid]:checked").length>=4){
 			alert("비교는 3개까지 가능합니다");
 			return;
 		}else{
 		for(let i=0; i<compare.length; i++){
 			if(compare[i].checked){
 				compare_items.push(compare[i].value);
 			}
 		}
 			location.href="${path}/compare.do?guitarid="+compare_items[0]+"&guitarid1="+compare_items[1]+"&guitarid2="+compare_items[2];
 	}
 	}
 	
 	function goSchMain(){
			location.href="${path}/schMain.do";
 	}

 </script>
</body>
</html>