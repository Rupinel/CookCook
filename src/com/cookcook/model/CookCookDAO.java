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

}