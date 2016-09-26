<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<script src="../js/Login.js" type ="text/javascript"></script>
<%if (session.getAttribute("sessionID")==null) { %>
</head>
<body>
	<center>
		<font size="4" color="blue"><b>Admin Login</b></font>
		<hr>
		<table border="0">
			<form name="Loginform" action="AdminPro.jsp" method="post">
				<tr>
					<td>Admin ID : </td>
					<td><input type="text" name="id" id="id"></td>
				</tr>
				<tr>
					<td>Admin Password : </td>
					<td><input type="password" name="password" id="password"></td>
				</tr>
				
				<tr>
					<td colspan="2" align="center">
						<input type="submit" value="Login">
					</td>
				</tr>						
			</form>
		</table>
	</center>

<% } else { 
	session.getAttribute("sessionID"); 
	response.sendRedirect("AdminPage.jsp");
 	} 
%>	
</body>
</html>