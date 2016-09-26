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
	<script type="text/javascript">
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
		<!--  헤더 영역 시작 -->
		<div class="top_wrap">
			<div class="top">
				<div class="top_inner_wrap">
					<!--  로고 시작 -->
					<h1 class="logo"><a href="#"><img src="img/logo.png" alt="CookCook"></a></h1>
					<img src="img/kitchen_tool.png" class="kitchen_tool">
					<!--  로고 끝 -->
																								
					<!-- 냉장고 재료 선택 결과 영역 시작-->
					<div class="choice_result"><i class="fa fa-chevron-right" aria-hidden="true"></i> 냉장고 속 재료를 선택해주세요 (최대 3개)
					</div>
					<!-- 냉장고 재료 선택 결과 영역 끝-->
		
					<!--  검색 영역 시작 -->
					<form action="searchpro.jsp" method="get">
					<div class="search_wrap">
						<div class="search">
							<input type="search" class="input_search" placeholder="요리명을 검색해 주세요"> <input type="button" value="검색" class="btn_search">
							<%-- <jsp:include page="../search/searchform.jsp" /> --%>
						</div>
					<!--  검색 영역 끝 -->
					</div>
				</div>
			
			<!-- 메뉴 시작 -->
		
			<ul class="menu">
				<li>
					<a href="#" class="menu_over"><span class="white" id="bigMenu"><i class="fa fa-bars" aria-hidden="true"></i>&nbsp; <span id="selectIcon">&nbsp;</span>전체보기</span></a>
					<!--  서브메뉴 시작 -->
					<ul class="sub_menu all">
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/egg.png" alt="달걀" class="sub_menu_img gray">
							<span class="sub_menu_txt">달걀</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str1" value="egg" class="check"> 
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/carrot.png" alt="당근" class="sub_menu_img gray">
							<span class="sub_menu_txt">당근</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str2" value="carrot" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/onion.png" alt="양파" class="sub_menu_img gray">
							<span class="sub_menu_txt">양파</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str3" value="onion" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/potato.png" alt="감자" class="sub_menu_img gray">
							<span class="sub_menu_txt">감자</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str4" value="potato" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/garlic.png" alt="마늘" class="sub_menu_img gray">
							<span class="sub_menu_txt">마늘</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str5" value="garlic" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/mushroom.png" alt="버섯" class="sub_menu_img gray">
							<span class="sub_menu_txt">버섯</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str6" value="mushroom" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/pepper.png" alt="고추" class="sub_menu_img gray">
							<span class="sub_menu_txt">고추</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str7" value="pepper" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/daikon.png" alt="무" class="sub_menu_img gray">
							<span class="sub_menu_txt">무</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str8" value="daikon" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/lettuce.png" alt="양상추" class="sub_menu_img gray">
							<span class="sub_menu_txt">양상추</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str9" value="lettuce" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/pumpkin.png" alt="애호박" class="sub_menu_img gray">
							<span class="sub_menu_txt">애호박</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str10" value="pumpkin" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/pork.png" alt="돼지고기" class="sub_menu_img gray">
							<span class="sub_menu_txt">돼지고기</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str11" value="pork" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/beef.png" alt="소고기" class="sub_menu_img gray">
							<span class="sub_menu_txt">소고기</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str12" value="beef" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/chicken.png" alt="닭고기" class="sub_menu_img gray">
							<span class="sub_menu_txt">닭고기</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str13" value="chicken" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/sausage.png" alt="소세지" class="sub_menu_img gray">
							<span class="sub_menu_txt">소세지</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str14" value="sausage" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/bacon.png" alt="베이컨" class="sub_menu_img gray">
							<span class="sub_menu_txt">베이컨</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str15" value="bacon" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/mackerel.png" alt="고등어" class="sub_menu_img gray">
							<span class="sub_menu_txt">고등어</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str16" value="mackerel" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/squid.png" alt="오징어" class="sub_menu_img gray">
							<span class="sub_menu_txt">오징어</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str17" value="squid" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/saury.png" alt="꽁치" class="sub_menu_img gray">
							<span class="sub_menu_txt">꽁치</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str18" value="saury" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/mussel.png" alt="홍합" class="sub_menu_img gray">
							<span class="sub_menu_txt">홍합</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str19" value="mussel" class="check">
							</div>
						</li>
						<li>
							<a href="#" class="sub_menu_over"><img src="img/thumb/bacon.png" alt="치즈" class="sub_menu_img gray">
							<span class="sub_menu_txt">치즈</span></a>
							<div class="checkbox_wrap">
								<input onclick="cc(this)" type="checkbox" name="str20" value="cheese" class="check">
							</div>
						</li>
					</ul>
					<!--  서브메뉴 끝 -->
					</li>
					<li>
						<a href="#" class="menu_over"><span class="white" id="bigMenu"><i class="fa fa-paw" aria-hidden="true"></i>&nbsp; <span id="selectIcon"></span>고기류</span></a>
						<!--  서브메뉴 시작 -->
						<ul class="sub_menu second">
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/pork.png" alt="돼지고기" class="sub_menu_img gray">
								<span class="sub_menu_txt">돼지고기</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str11" value="pork" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/beef.png" alt="소고기" class="sub_menu_img gray">
								<span class="sub_menu_txt">소고기</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str12" value="beef" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/chicken.png" alt="닭고기" class="sub_menu_img gray">
								<span class="sub_menu_txt">닭고기</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str13" value="chicken" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/sausage.png" alt="소세지" class="sub_menu_img gray">
								<span class="sub_menu_txt">소세지</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str14" value="sausage" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/bacon.png" alt="베이컨" class="sub_menu_img gray">
								<span class="sub_menu_txt">베이컨</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str15" value="bacon" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/mackerel.png" alt="고등어" class="sub_menu_img gray">
								<span class="sub_menu_txt">고등어</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str16" value="mackerel" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/squid.png" alt="오징어" class="sub_menu_img gray">
								<span class="sub_menu_txt">오징어</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str17" value="squid" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/saury.png" alt="꽁치" class="sub_menu_img gray">
								<span class="sub_menu_txt">꽁치</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str18" value="saury" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/mussel.png" alt="홍합" class="sub_menu_img gray">
								<span class="sub_menu_txt">홍합</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str19" value="mussel" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/bacon.png" alt="치즈" class="sub_menu_img gray">
								<span class="sub_menu_txt">치즈</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str20" value="cheese" class="check">
								</div>
							</li>
						</ul>
						<!--  서브메뉴 끝 -->
					</li>
					<li><a href="#" class="menu_over"><span class="white" id="bigMenu"><i class="fa fa-leaf" aria-hidden="true"></i>&nbsp; <span id="selectIcon">&nbsp;</span>야채류</span></a>
						<!--  서브메뉴 시작 -->
						<ul class="sub_menu third">
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/egg.png" alt="달걀" class="sub_menu_img gray">
								<span class="sub_menu_txt">달걀</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str1" id="str1" value="egg" class="check"> 
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/carrot.png" alt="당근" class="sub_menu_img gray">
								<span class="sub_menu_txt">당근</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str2" value="carrot" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/onion.png" alt="양파" class="sub_menu_img gray">
								<span class="sub_menu_txt">양파</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str2" value="onion" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/potato.png" alt="감자" class="sub_menu_img gray">
								<span class="sub_menu_txt">감자</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str4" value="potato" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/garlic.png" alt="마늘" class="sub_menu_img gray">
								<span class="sub_menu_txt">마늘</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str5" value="garlic" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/mushroom.png" alt="버섯" class="sub_menu_img gray">
								<span class="sub_menu_txt">버섯</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str6" value="mushroom" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/pepper.png" alt="고추" class="sub_menu_img gray">
								<span class="sub_menu_txt">고추</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str7" value="pepper" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/daikon.png" alt="무" class="sub_menu_img gray">
								<span class="sub_menu_txt">무</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str8" value="daikon" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/lettuce.png" alt="양상추" class="sub_menu_img gray">
								<span class="sub_menu_txt">양상추</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str9" value="lettuce" class="check">
								</div>
							</li>
							<li>
								<a href="#" class="sub_menu_over"><img src="img/thumb/pumpkin.png" alt="애호박" class="sub_menu_img gray">
								<span class="sub_menu_txt">애호박</span></a>
								<div class="checkbox_wrap">
									<input onclick="cc(this)" type="checkbox" name="str10" value="pumpkin" class="check">
								</div>
							</li>
						</ul>
						<!--  서브메뉴 끝 -->
					</li>
				</ul>
			</form>
			<!--  메뉴 끝 -->
		</div>
	</div>
</body>
</html>