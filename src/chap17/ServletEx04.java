package chap17;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ServletEx04
 */
@WebServlet("/ex04")
public class ServletEx04 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx04() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// jsp의 기본 객체 (114쪽)
		// request, session, application, config
		// response, out
		// pageContext, page (Servlet에서는 꺼낼수없음)
		
		HttpSession session = request.getSession(); // session 은 request로 부터 받아와서 씀
		ServletContext application = request.getServletContext(); //application의 다른이름이 getServletContext임 
		application = getServletContext();  // 39번 줄이랑 같은거임
		ServletConfig config = getServletConfig();  // config는 이렇게 받아와서 쓰면됨
		
		PrintWriter out = response.getWriter(); // 문자단위로쓸거면 writer
		
		
		System.out.println("ex04 servlet doGet method");
		System.out.println(request.getParameter("id"));
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
