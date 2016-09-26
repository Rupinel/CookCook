package com.cookcook.Action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cookcook.model.CookCookDAO;
import com.cookcook.model.CookCookVO;

public class ListAction implements CommandAction {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		CookCookDAO dao = CookCookDAO.getInstance();
		List<CookCookVO> list = dao.getSelectAll();
		
		request.setAttribute("list", list);

		return "/board/list.jsp";
	}
}
