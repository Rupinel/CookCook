<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.cookcook.model.CookCookDAO" %> 

<% 
 	request.setCharacterEncoding("UTF-8");

	String id = request.getParameter("id");
	String password = request.getParameter("password");
	
	CookCookDAO dao = CookCookDAO.getInstance();
	int result = dao.logincheck(id, password);
	
	if(result==1) {
		session.setAttribute("sessionID", id);
		session.setAttribute("sessionPW", password);
		response.sendRedirect("AdminPage.jsp");
	} else {
		out.println("ID 혹은 PW를 확인하세요.");
	}
%>
