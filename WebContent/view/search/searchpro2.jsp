<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dbclose.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="dbconn.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
	String search = request.getParameter("search");
%>

<!DOCTYPE html>
<html>
<head>
<title>검색</title>
</head>
<body>
	<table style="border: 1px solid; width: 400px;">
		<tr>
			<td><font color="red">음식이름</font></td>
		</tr>
		<%
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection conn = null;

			try {
				
				String sql = "select * from cook where cookname like ?";


				conn = ConnectionUtil.getConnection("oracle");

				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, "%"+search+"%");
				ResultSet rs = pstmt.executeQuery();

				while (rs.next()) {
		%>
		<tr>
			<td><%=rs.getString("cookname")%></td>
			<td><a href=<%=rs.getString("url")%>> 링크타기 </a> </td>
		</tr>

		<%
			} // while end
			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
	<a href="searchform.jsp">메인으로</a>
</body>
</html>