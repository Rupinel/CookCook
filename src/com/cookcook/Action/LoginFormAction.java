package com.cookcook.Action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cookcook.model.CookCookDAO;
import com.cookcook.model.CookCookVO;

public class LoginFormAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		
		try {			
			CookCookDAO dao = CookCookDAO.getInstance();
			int result = dao.logincheck(id, password);
	
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return "/view/LoginForm.jsp";
	}

}
