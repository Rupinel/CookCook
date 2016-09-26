package com.cookcook.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import dbclose.util.CloseUtil;

public class CookCookDAO { // Controller
	private static CookCookDAO instance = new CookCookDAO();

	public static CookCookDAO getInstance() {
		return instance;
	}

	public CookCookDAO() {
	}

	public Connection getConnection() throws Exception {
		InitialContext ctx = new InitialContext();
		// Context envContext = (Context) ctx.lookup("java:comp/env");
		DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc:CookCookDB");

		return ds.getConnection();
	} // getConnection() end
	
	public List<CookCookVO> getSelectAll() {
	
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		List<CookCookVO> list = null;
		StringBuffer sb = new StringBuffer();
		String sql = "select cookname, url from cook";

		try {
			conn = getConnection();
			

			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if (rs.next()) {
				list = new ArrayList();

				do {
					CookCookVO vo = new CookCookVO();
					vo.setCookname(rs.getString("cookname"));
					vo.setUrl(rs.getString("url"));

					list.add(vo);

				} while (rs.next());
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(conn);
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
		}

		return list;
	}

}