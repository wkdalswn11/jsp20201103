package chap17.sample2;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import chap05.Post;

/**
 * Servlet implementation class removeServlet
 */
@WebServlet("/sample2/remove")
public class removeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private List<Post> list;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public removeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    public void init() throws ServletException {
    	ServletContext application = getServletContext();
    	list = (List<Post>) application.getAttribute("posts");
    	// list = (List<Post>) getServletContext().getAttribute("posts");
    	super.init();
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String idx = request.getParameter("idx");
		int index = Integer.parseInt(idx);
		
		list.remove(index);
		
		response.sendRedirect(request.getContextPath() + "/sample2/list");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
	}

}
