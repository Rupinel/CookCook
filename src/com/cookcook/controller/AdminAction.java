package com.cookcook.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AdminAction extends HttpServlet{	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) {
		try {
			process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {		
		return "/view/AdminLogin.jsp";		
	}
}
