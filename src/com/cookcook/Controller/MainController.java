package com.cookcook.Controller;

import java.io.FileInputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

import com.cookcook.Action.CommandAction;

public class MainController extends HttpServlet {
	private Map commandMap = new HashMap();

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		process(request, response);
	}

	@Override // 초기화!!!
	public void init(ServletConfig config) throws ServletException {
		// web.xml의 설정파일을 읽어들인다.
		String props = config.getInitParameter("propertyConfig");

		Properties pr = new Properties();
		FileInputStream f = null;

		try {
			f = new FileInputStream(props);
			pr.load(f);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (f != null)
				try {
					f.close();
				} catch (Exception e) {
					e.printStackTrace();
				}
		}

		Iterator keyIter = (Iterator)pr.keySet().iterator();

		while (keyIter.hasNext()) {
			String command = (String) keyIter.next();

			// value : edu.kosta.boardAction.WriteFormAction
			String className = pr.getProperty(command);

			try {
				Class commandClass = Class.forName(className);
		        Object commandInstance = commandClass.newInstance();


				// (key 값, 명령처리 값)
		        commandMap.put(command, commandInstance);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
	}

	protected void process(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String view = null;
		CommandAction ca = null;
		System.out.println(commandMap);

		try {
			String command = request.getRequestURI();
			
			// /day52_boardMVC/writeForm.do ==>> 실행되는 파일 경로
			//System.out.println("command : " + command); 
			
			// /day52_boardMVC ==>> 프로젝트의 이름
			//System.out.println("request.getContextPath() : " + request.getContextPath());
			
			if(command.indexOf(request.getContextPath()) == 0) {
				command = command.substring(request.getContextPath().length() + 1);
				
				//writeForm.do ==>> 파일 이름
				//System.out.println("if command : " + command);
			}
			
			ca = (CommandAction)commandMap.get(command);
			//System.out.println("ca : " + ca);
			
			view = ca.process(request, response);
			//System.out.println("view : " + view);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		request.setAttribute("CONTENT", view);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/template/template.jsp");
		dispatcher.forward(request, response);
	}
}