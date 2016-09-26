<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>템플릿 페이지를 사용한 웹어플리케이션</title>
</head>
<body>
	<div align=center>
		<table width=700 border=1 cellpading=1 cellspacing=0>
			<tr>
				<td>
					<jsp:include page="top.jsp" />
				</td>
			</tr>
			
			<tr>	
				<td>
					<jsp:include page="${CONTENT}"/>
				</td>
			</tr>
			
			<tr>
				<td>
					<jsp:include page="bottom.jsp"/>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>