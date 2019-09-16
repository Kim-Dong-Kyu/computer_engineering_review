package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;

import dao.LoginDAO;
import vo.Member;

public class LoginService {

	public Member getLoginMember(String id, String pw) {
		// TODO Auto-generated method stub
		LoginDAO loginDAO = LoginDAO.getInstance();
		Connection con = getConnection();
		loginDAO.setConnection(con);
		Member loginMember = loginDAO.selectLoginMember(id,pw);
		close(con);
		return loginMember;
	}
}
