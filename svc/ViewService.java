package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.LoginDAO;
import vo.Board;

public class ViewService {
	
	public ArrayList<Board> viewservice() {
	LoginDAO loginDAO = LoginDAO.getInstance();
	ArrayList<Board> boardlist = new ArrayList<Board>();
	Connection con = getConnection();
	loginDAO.setConnection(con);
	boardlist = loginDAO.ViewBoard();
	close(con);	
	return boardlist;
	}
}
