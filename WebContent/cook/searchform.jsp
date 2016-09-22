<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>th125</title>
<script>
var mc = 3;
var tc = 0;

function cc(ff){
	if (ff.checked) tc++;
	else tc--;
	
	if(tc > mc){
		alert("3개만 선택하세요");
		ff.checked = false;
		tc--;
	}
	return tc;
}
function ResetCount(){ tc = 0; }
</script>
</head>
<body>

<form action="searchpro2.jsp" method="get">
	<input type="text" name="search" size="20">
	<input type="submit" value="검색">
</form> <br><br>

	<form action="searchpro.jsp" method="get">
	<font size="5" color="red"> 베이스 재료 </font><br>
		<input onclick="cc(this)" type="checkbox" name="str1" value="egg"> 달걀
		<input onclick="cc(this)" type="checkbox" name="str2" value="carrot"> 당근
		<input onclick="cc(this)" type="checkbox" name="str3" value="onion"> 양파
		<input onclick="cc(this)" type="checkbox" name="str4" value="potato"> 감자
		<input onclick="cc(this)" type="checkbox" name="str5" value="garlic"> 마늘
		<input onclick="cc(this)" type="checkbox" name="str6" value="mushroom"> 버섯
		<input onclick="cc(this)" type="checkbox" name="str7" value="pepper"> 고추
		<input onclick="cc(this)" type="checkbox" name="str8" value="daikon"> 무
		<input onclick="cc(this)" type="checkbox" name="str9" value="lettuce"> 양상추
		<input onclick="cc(this)" type="checkbox" name="str10" value="pumpkin"> 애호박 <br>
		<font size="5" color="red"> 주 재료 </font><br>
		<input onclick="cc(this)" type="checkbox" name="str11" value="pork"> 돼지고기
		<input onclick="cc(this)" type="checkbox" name="str12" value="beef"> 소고기
		<input onclick="cc(this)" type="checkbox" name="str13" value="chicken"> 닭고기 <br>
		<font size="5" color="red"> 가공식품 </font><br>
		<input onclick="cc(this)" type="checkbox" name="str14" value="sausage"> 소세지
		<input onclick="cc(this)" type="checkbox" name="str15" value="bacon"> 베이컨 <br>
		<font size="5" color="red"> 해산물 </font><br>
		<input onclick="cc(this)" type="checkbox" name="str16" value="mackerel"> 고등어
		<input onclick="cc(this)" type="checkbox" name="str17" value="squid"> 오징어
		<input onclick="cc(this)" type="checkbox" name="str18" value="saury"> 꽁치
		<input onclick="cc(this)" type="checkbox" name="str19" value="mussel"> 홍합 <br>
		<font size="5" color="red"> 유제품 </font><br>
		<input onclick="cc(this)" type="checkbox" name="str20" value="cheese"> 치즈 <br>
		
		<input type="submit" value="검색">
	</form>
	<a href="insert.jsp">추가하기</a>
</body>
</html>