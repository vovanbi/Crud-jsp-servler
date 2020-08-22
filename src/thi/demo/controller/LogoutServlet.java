package thi.demo.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/logout")
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LogoutServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		Cookie cUserName = new Cookie("cookuser", null);
//		Cookie cPassword = new Cookie("cookpass", null);
//		Cookie cRemember = new Cookie("cookrem", null);
//		cUserName.setMaxAge(0);
//		cPassword.setMaxAge(0);
//		cRemember.setMaxAge(0);
//		response.addCookie(cUserName);
//		response.addCookie(cPassword);
//		response.addCookie(cRemember);
		HttpSession httpSession = request.getSession();
		httpSession.invalidate();
		request.setAttribute("msg", "You have successfully logged out.");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/login.jsp");
		requestDispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
