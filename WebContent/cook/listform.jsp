<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>th125</title>
</head>
<body>
	<form>
		<table border="1">
			<tr>
				<td>이름</td>
				<td>링크</td>
			</tr>

			<tr>
				<td>${vo.cookname}</td>
				<td><a href="${vo.url}">링크타기</a></td>
			</tr>
		</table>
	</form>
</body>
</html>