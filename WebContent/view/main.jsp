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
	<div class="container">
		<div class="top_left_bg"></div>
		<div class="content_wrap">
			<!--  헤더 영역 시작 -->
				<jsp:include page="include/top.jsp" />
			<!--  헤더 영역 끝 -->
			
			<!-- 컨텐츠 시작 -->
			<div class="contents" >
				<%-- <div class="includedContent">
					<c:import url="http://navercast.naver.com/magazine_contents.nhn?contents_id=119708" />
				</div>  --%>
				<jsp:include page="contents/main_contents.jsp" />
				<%-- <jsp:include page="contents/list.jsp" /> --%>
			</div>
			<!-- 컨텐츠 끝 -->
			
			<!-- 푸터영역 시작 -->
			<div class="footer">
				<jsp:include page="include/bottom.jsp" />
			</div>
			<!-- 푸터영역 끝 -->
		</div>
	</div>
	
</body>
</html>