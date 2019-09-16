package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


public class JdbcUtil {
	public static Connection getConnection(){
		Connection con = null;
		try {
			String Url = "jdbc:mysql://localhost:3306/project?serverTimezone=UTC&useSSL=false";
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(Url,"root","java");
			return con;
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}		
	}
	
	public static void close(Connection con){
		try {
			con.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void close(Statement stmt){
		try {
			stmt.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void close(ResultSet rs){
		try {
			rs.close();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void commit(Connection con){
		try {
			con.commit();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
	
	public static void rollback(Connection con){
		try {
			con.rollback();
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}
}
