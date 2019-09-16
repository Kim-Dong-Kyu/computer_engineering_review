package controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import svc.RegisterService;
import vo.Member;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String grade = request.getParameter("grade");
		String gender = request.getParameter("gender");		
		RegisterService RegisterService = new RegisterService();
		int result = RegisterService.getRegisterMember(id,pw,name,grade,gender);	
		
		if(result == 1){			
			out.println("<script>");
			out.println("alert('회원가입 성공')");
			out.println("</script>");
			RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
			rd.forward(request, response);
		}
		else{			
			out.println("<script>");
			out.println("alert('회원가입실패')");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}
