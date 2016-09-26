package com.cookcook.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cookcook.model.CookCookDAO;

public class ListAction implements CommandAction {
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
	    List list = null;	      
	    CookCookDAO dao = CookCookDAO.getInstance();  //db 연결 
	    
	    list = dao.getSelectAll();
	    
	    request.setAttribute("list", list);
		
		return "/view/list.jsp"; // 목록을 뿌려줄 페이지 이름 
	}
}
