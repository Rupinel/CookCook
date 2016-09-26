<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="dbclose.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="dbconn.util.*"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	int count = 0;
	String[] str = new String[20];
	String[] sele = new String[3];

	str[0] = request.getParameter("str1");
	str[1] = request.getParameter("str2");
	str[2] = request.getParameter("str3");
	str[3] = request.getParameter("str4");
	str[4] = request.getParameter("str5");
	str[5] = request.getParameter("str6");
	str[6] = request.getParameter("str7");
	str[7] = request.getParameter("str8");
	str[8] = request.getParameter("str9");
	str[9] = request.getParameter("str10");
	str[10] = request.getParameter("str11");
	str[11] = request.getParameter("str12");
	str[12] = request.getParameter("str13");
	str[13] = request.getParameter("str14");
	str[14] = request.getParameter("str15");
	str[15] = request.getParameter("str16");
	str[16] = request.getParameter("str17");
	str[17] = request.getParameter("str18");
	str[18] = request.getParameter("str19");
	str[19] = request.getParameter("str20");

	for (int i = 0; i < str.length; i++) {
		if (str[i] != null) {
			count++;
		}
	}
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
				String sql = "";

				for (int i = 0; i < sele.length; i++) {
					for (int j = 0; j < str.length; j++) {
						if (str[j] != null) {
							sele[i] = str[j];
							i++;
						}
					}
				}

				if (count == 0) {
					sql = "select * from cook";
				} else if (count == 1) {
					sql = "select * from cook where " + sele[0] + "='1'";
				} else if (count == 2) {
					sql = "select * from cook where " + sele[0] + "='1' and " + sele[1] + "='1'";
				} else if (count == 3) {
					sql = "select * from cook where " + sele[0] + "='1' and " + sele[1] + "='1' and " + sele[2]
							+ "='1'";
				} else sql = "select * from cook";

				conn = ConnectionUtil.getConnection("oracle");

				PreparedStatement pstmt = conn.prepareStatement(sql);

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