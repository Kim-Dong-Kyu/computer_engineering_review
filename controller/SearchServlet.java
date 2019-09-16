package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import svc.LoginService;
import svc.SearchService;
import vo.Board;
import vo.Member;
import vo.Search;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/search")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		ArrayList<Board> searchboard = new ArrayList<Board>();
		Search search = new Search();
		search.setSearch(request.getParameter("search"));				
		SearchService searchservice = new SearchService();
		searchboard = searchservice.search(search.getSearch());
		request.setAttribute("list", searchboard);
		request.setAttribute("search", search.getSearch());
		getServletConfig().getServletContext().getRequestDispatcher("/review.jsp").forward(request, response);
	}

}
