<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
<title>CookCook</title>
	<link rel="stylesheet" href="/CookCook/view/css/reset.css" type="text/css" />
	<link rel="stylesheet" href="/CookCook/view/css/font-awesome.min.css" type="text/css"  />
	<link rel="stylesheet" href="/CookCook/view/css/cook_style.css" type="text/css" />
	<script src="/CookCook/view/js/jquery-1.11.3.min.js"></script>
	<script src="/CookCook/view/js/jquery-ui.min.js"></script>
	<script src="/CookCook/view/js/swipe.js"></script>
	<script src="/CookCook/view/js/common.js"></script>
</head>
<body>	
			<div class="material_table_wrap">
				<!-- 고기류 테이블 시작-->
				<div class="material_title"><i class="fa fa-paw" aria-hidden="true"></i>&nbsp; 고기류</div>
				<table class="material_table">
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str11" value="pork" class="check">돼지고기</td>
						<td><input onclick="cc(this)" type="checkbox" name="str12" value="beef" class="check"> 소고기</td>
					</tr>
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str13" value="chicken" class="check"> 닭고기</td>
						<td><input onclick="cc(this)" type="checkbox" name="str14" value="sausage" class="check"> 소세지</td>
					</tr>
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str15" value="bacon" class="check"> 베이컨</td>
						<td><input onclick="cc(this)" type="checkbox" name="str16" value="mackerel" class="check"> 고등어</td>
					</tr>
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str17" value="squid" class="check"> 오징어</td>
						<td><input onclick="cc(this)" type="checkbox" name="str18" value="saury" class="check"> 꽁치</td>
					</tr>
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str19" value="mussel" class="check"> 홍합</td>
						<td><input onclick="cc(this)" type="checkbox" name="str20" value="cheese" class="check"> 치즈</td>
					</tr>
				</table>
				<!-- 고기류 테이블 끝-->
			
				<!-- 야채류 테이블 시작-->
				<div class="material_title"><i class="fa fa-leaf" aria-hidden="true"></i>&nbsp;야채류</div>
				<table class="material_table">
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str1" value="egg" class="check"> 달걀</td>
						<td><input onclick="cc(this)" type="checkbox" name="str2" value="carrot" class="check"> 당근</td>
					</tr>
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str3" value="onion" class="check"> 양파</td>
						<td><input onclick="cc(this)" type="checkbox" name="str4" value="potato" class="check"> 감자</td>
					</tr>
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str5" value="garlic" class="check"> 마늘</td>
						<td><input onclick="cc(this)" type="checkbox" name="str6" value="mushroom" class="check"> 버섯</td>
					</tr>
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str7" value="pepper" class="check"> 고추</td>
						<td><input onclick="cc(this)" type="checkbox" name="str8" value="daikon" class="check">  무</td>
					</tr>
					<tr>
						<td><input onclick="cc(this)" type="checkbox" name="str9" value="lettuce" class="check"> 양상추</td>
						<td><input onclick="cc(this)" type="checkbox" name="str10" value="pumpkin" class="check"> 애호박</td>
					</tr>
				</table>
				<!-- 야채류 테이블 끝-->
			<input type="button" value=" 요리 찾기 " class="btn_recipe">
		</div>
	</body>
</html>