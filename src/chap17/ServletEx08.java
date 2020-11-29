package chap17;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ServletEx08
 */
@WebServlet(value = "/ex08", loadOnStartup = 1)
public class ServletEx08 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   //private int i = 0; 여기에 변수를 쓰는건 위험한일임 변수가필요하다면 메소드안에서 생성해쓸것.
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletEx08() {
        super();
    }

    @Override
    public void init() throws ServletException {
    	// 가장먼저 실행시켜야할것들을 넣음
    	// 얘는 한번만 실행됨.
    	System.out.println("init method 실행");
    	
    	super.init();
    }
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("ex08 doget method");
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
