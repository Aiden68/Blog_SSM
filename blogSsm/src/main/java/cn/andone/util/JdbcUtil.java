package cn.andone.util;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * 1. �������� 2. �ر�
 * 
 * @author AndOne
 * 
 */
public class JdbcUtil {
	
	private static ComboPooledDataSource dataSource = new ComboPooledDataSource();

	/**
	 * �������Ӷ���
	 */
	public static Connection getConnection() {
		try {
			return dataSource.getConnection();
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * �ر�
	 */
	public static void closeAll(Connection con, Statement stmt, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();  // �����쳣���� Alt + shift + z 
				rs = null;   // �������������ڻ�����Դ
			}
			if (stmt != null) {
				stmt.close();
				stmt = null;
			}
			if (con != null && !con.isClosed()) {
				con.close();
				con = null;
			}
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}
}










