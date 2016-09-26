package com.cookcook.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.cookcook.model.dbutil.CloseUtil;

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
		List list = null; // 글 목록 저장 변수;
		String sql;
		
		try {
			conn = getConnection();
			sql = "select cookname,url from cook";
			pstmt.executeQuery(sql);
			
			if(rs.next()) {
				do {
					CookCookVO vo = new CookCookVO();
					vo.setCookname(rs.getString("cookname"));
					vo.setUrl(rs.getString("url"));
					// list 객체에 데이터 저장빈인 CookCookVO 객체를 저장
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
	
	public int logincheck(String id, String password) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String dbid = "";
		String dbpassword = "";		
		int result = 0;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select id,password from userInfo where id = ? and password = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, password);
			rs = pstmt.executeQuery();
		
			if (rs.next()) {
				
				dbid = rs.getString("id");
				dbpassword = rs.getString("password");
				
				if ( dbid.equals(id) && dbpassword.equals(password) ) {
					result = 1;
				} 				
				else {
					result = 0;
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		return result;	
	}
	
	public int adminCheck(String id) {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String isadmin = "";		
		int result = 0;
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement("select isadmin from userInfo where id = ?");
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			
			if (rs.next()) {
				isadmin = rs.getString("isadmin");
				
				if (isadmin.equals("1")) {
					result = 1;
				} 				
				else
					result = 0;
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			CloseUtil.close(rs);
			CloseUtil.close(pstmt);
			CloseUtil.close(conn);
		}
		
		return result;
	}
}