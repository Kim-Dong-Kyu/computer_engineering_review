package dao;

import static db.JdbcUtil.close;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.Board;
import vo.Member;

public class LoginDAO {
	private static LoginDAO loginDAO;
	private Connection con;
	
	public LoginDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public static LoginDAO getInstance(){
		if(loginDAO == null){
			loginDAO = new LoginDAO();
		}
		return loginDAO;
	}
	
	public void setConnection(Connection con){
		this.con = con;
	}
	
	public Member selectLoginMember(String id, String pw) {
		// TODO Auto-generated method stub
		Member loginMember = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			pstmt = con.prepareStatement("SELECT * FROM user WHERE id = ? AND pw = ?");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = pstmt.executeQuery();
			if(rs.next()){
				loginMember = new Member();
				loginMember.setId(rs.getString("id"));
				loginMember.setPw(rs.getString("pw"));
				loginMember.setGender(rs.getString("gender"));
				loginMember.setGrade(rs.getString("grade"));
				loginMember.setName(rs.getString("name"));					
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			try {
				close(rs);
				close(pstmt);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return loginMember;
	}
	public ArrayList<Board> ViewBoard() {		// TODO Auto-generated method stub
	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Board> viewboard = new ArrayList<Board>();
		try {
			pstmt = con.prepareStatement("SELECT * FROM board");
			rs = pstmt.executeQuery();
			while(rs.next()){
				Board board = new Board(
				rs.getString(1),
				rs.getString(2),
				rs.getString(3),
				rs.getString(4),
				rs.getString(5),
				rs.getString(6),
				rs.getString(7),
				rs.getString(8)				
						);			
				viewboard.add(board);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			try {
				close(rs);
				close(pstmt);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return viewboard;
	}
	public int BoardWriteMember(Board board) {	
		PreparedStatement pstmt = null;			
		try {
			pstmt = con.prepareStatement("insert into board values(?,?,?,?,?,?,?,?)");
			pstmt.setString(1, board.getName());
			pstmt.setString(2, board.getProname());
			pstmt.setString(3, board.getYear());
			pstmt.setString(4, board.getSeason());
			pstmt.setString(5, board.getGrade());
			pstmt.setString(6, board.getTextname());
			pstmt.setString(7, board.getHakjum());
			pstmt.setString(8, board.getText());
			pstmt.executeUpdate();	
			return 1;			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		finally{
			try {				
				close(pstmt);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
	}
	public int InsertMember(String id, String pw, String name,String grade,String gender) {
		// TODO Auto-generated method stub
	
		PreparedStatement pstmt = null;					
		try {
			pstmt = con.prepareStatement("insert into user values(?,?,?,?,?)");
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			pstmt.setString(3, grade);
			pstmt.setString(4, gender);
			pstmt.setString(5, name);
			pstmt.executeUpdate();	
			return 1;
			
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return 0;
		}
		finally{
			try {				
				close(pstmt);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		
	}

	public ArrayList<Board> search(String search) {
		// TODO Auto-generated method stub
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Board> viewboard = new ArrayList<Board>();
		try {
			pstmt = con.prepareStatement("SELECT * FROM board where name like ?");
			pstmt.setString(1, search);
			rs = pstmt.executeQuery();
			while(rs.next()){
				Board board = new Board(
				rs.getString(1),
				rs.getString(2),
				rs.getString(3),
				rs.getString(4),
				rs.getString(5),
				rs.getString(6),
				rs.getString(7),
				rs.getString(8)				
						);			
				viewboard.add(board);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			try {
				close(rs);
				close(pstmt);
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
			}
		}
		return viewboard;
	}
}
