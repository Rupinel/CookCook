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
	<div class="recipe_list_wrap">
		<span class="recipe_result_txt">총 3개의 레시피가 검색되었습니다.</span>
		<!-- 리스트 시작 -->
		<ul class="recipe_list">
		
			<li>
				<div class="recipe">
					<div class="recipe_content">
						<a href="#">
							<p class="recipe_title"><span>애호박 무침</span> </p>
							<p class="recipe_material"><span>애호박</span></p>
							<p class="recipe_img">							
								<img src="http://ncc.phinf.naver.net/20160530_222/1464576801203l7Pt7_JPEG/image.JPEG?type=f240_240" />
							</p>
							<p class="detail_view">
								<i class="fa fa-search" aria-hidden="true"></i> &nbsp; 상세보기
							</p>
						</a>
					</div>
				</div>
			</li>
			
			<li>
				<div class="recipe">
					<div class="recipe_content">
						<a href="#">
							<p class="recipe_title"><span>애호박 무침</span> </p>
							<p class="recipe_material">
								<span>애호박</span>
								<p class="recipe_img">							
									<img src="http://ncc.phinf.naver.net/20160530_222/1464576801203l7Pt7_JPEG/image.JPEG?type=f240_240" />
								</p>
							</p>
							<p class="detail_view">
								<i class="fa fa-search" aria-hidden="true"></i> &nbsp; 상세보기
							</p>
						</a>
					</div>
				</div>
			</li>
			<li>
				<div class="recipe">
					<div class="recipe_content">
						<a href="#">
							<p class="recipe_title"><span>애호박 무침</span> </p>
							<p class="recipe_material">
								<span>애호박</span>
								<p class="recipe_img">							
									<img src="http://ncc.phinf.naver.net/20160530_222/1464576801203l7Pt7_JPEG/image.JPEG?type=f240_240" />
								</p>
							</p>
							<p class="detail_view">
								<i class="fa fa-search" aria-hidden="true"></i> &nbsp; 상세보기
							</p>
						</a>
					</div>
				</div>
			</li>
		</ul>
		<!-- 리스트 끝 -->
	</div>
	</body>
</html>