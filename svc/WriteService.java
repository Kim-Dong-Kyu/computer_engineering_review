package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;

import dao.LoginDAO;
import vo.Board;

public class WriteService {

	public int WriteMember(Board board) {
		// TODO Auto-generated method stub
		Board board1 = new Board();
		board1 = board;
		LoginDAO loginDAO = LoginDAO.getInstance();
		Connection con = getConnection();
		loginDAO.setConnection(con);
		int result = loginDAO.BoardWriteMember(board1);
		close(con);
		return result;		
	}

}
