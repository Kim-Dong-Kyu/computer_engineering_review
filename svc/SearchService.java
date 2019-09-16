package svc;

import static db.JdbcUtil.close;
import static db.JdbcUtil.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import dao.LoginDAO;
import vo.Board;
import vo.Search;

public class SearchService {

	public ArrayList<Board> search(String search) {
		// TODO Auto-generated method stub
		ArrayList<Board> search1 = new ArrayList<Board>();
		LoginDAO loginDAO = LoginDAO.getInstance();
		Connection con = getConnection();
		loginDAO.setConnection(con);
		search1= loginDAO.search(search);
		close(con);
		return search1;
	}

}
