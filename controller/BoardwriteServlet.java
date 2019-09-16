package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.LoginService;
import svc.WriteService;
import vo.Board;
import vo.Member;

/**
 * Servlet implementation class BoardwriteServlet
 */
@WebServlet("/boardwrite")
public class BoardwriteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardwriteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		
		Board board = new Board();
		
		PrintWriter out = response.getWriter();
		board.setName(request.getParameter("name")); 
		board.setProname(request.getParameter("proname"));
		board.setYear(request.getParameter("year"));
		board.setSeason(request.getParameter("season"));
		board.setGrade(request.getParameter("grade"));
		board.setTextname(request.getParameter("textname"));
		board.setHakjum(request.getParameter("hakjum"));
		board.setText(request.getParameter("text"));
		
		WriteService WriteService = new WriteService();
		int result = WriteService.WriteMember(board);	
		
		if(result == 1){			
			out.println("<script>");
			out.println("alert('글이 작성되었습니다.')");
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("review.jsp");
			rd.forward(request, response);
		}
		else{			
			out.println("<script>");
			out.println("alert('작성 실패')");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}
