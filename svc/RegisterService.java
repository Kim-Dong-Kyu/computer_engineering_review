package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;

import dao.LoginDAO;


public class RegisterService {
	public int getRegisterMember(String id, String pw, String name,String grade,String gender) {
		// TODO Auto-generated method stub
		LoginDAO loginDAO = LoginDAO.getInstance();
		Connection con = getConnection();
		loginDAO.setConnection(con);
		int result = loginDAO.InsertMember(id,pw,name,grade,gender);
		close(con);
		return result;
	}
}
