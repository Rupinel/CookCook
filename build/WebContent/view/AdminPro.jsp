<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.cookcook.model.CookCookDAO" %> 

<% 
 	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	CookCookDAO dao = CookCookDAO.getInstance();
	int loginresult = dao.logincheck(id, password);
	
	if(loginresult==1) {
		session.setAttribute("sessionID", id);
		session.setAttribute("sessionPW", password);
		
		int adminresult = dao.adminCheck(id);
		
		if(adminresult==1) {
			response.sendRedirect("AdminPage.jsp");			
		} else { 
			session.invalidate();
			response.sendRedirect("index.html");
		}				
 	} else { %>
	<script type="text/javascript">
		alert("ID 혹은 PW를 확인하세요.");
		history.go(-1);
	</script>
<% } %>