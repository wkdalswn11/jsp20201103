package chap17;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx11
 */
@WebServlet("/ex11")
public class ServletEx11 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx11() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("servelt 11 doget method");
		// curPath = "localhost:8080/myjsp/ex11"
		//     jsp = "localhost:8080/myjsp/chap17/lecture/servletEx11View.jsp"
		String path="/chap17/lecture/servletEx11View.jsp";  // 절대경로로 했을때
		//String path="chap17/lecture/servletEx11View.jsp"; // 상대경로로 했을대 현재 요청온 기준이므로 / 빼면 상대경로다.
		
		//같은 프로젝트 , 어플리케이션안에서만 forward할수있음
		RequestDispatcher dispatcher = request.getRequestDispatcher(path);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
