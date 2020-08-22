package thi.demo.controller;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thi.demo.Data.UserDAO;

@WebServlet(name="Loginservlet",urlPatterns= {"/login"})
public class Loginservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Loginservlet() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
//		String username=request.getParameter("username");
//		String password=request.getParameter("password");
//		
//	
//		Users users= new Users("admin","1");
//		response.setContentType("text/html");  
//		PrintWriter out = response.getWriter();
//		
//        request.setAttribute("us", users);
//         out.println("<html><body>");
//        if(username.equals(users.getUsername())&&password.equals(users.getPassword()))
//        	 {
//           getServletContext().getRequestDispatcher("/home.jsp").forward(request, response);	
//           	
//        }
//        else if (!username.equals("")&&password.equals(users.getPassword()))
//        {
//        	out.println("<p>Please enter your name!</p>");  
//            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//            rd.include(request,response);  
//        }else if (!password.equals("")&&username.equals(users.getUsername())) {
//        	out.println("<p>Please enter your password!</p>");  
//            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//            rd.include(request,response);  
//        }
//        else
//        {
//        	 out.println("<p>Sorry username or password error</p>");  
//             RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
//             rd.include(request,response);  
//         }
//        out.println("</body></html>");
//        out.close();
//	}

      
		    response.setContentType("text/html");  
		    PrintWriter out = response.getWriter(); 
		    out.println("<html>");
		    out.println("<head>");
		    out.println("<style>"); 
		    out.println("h2 {"+"color:red;");
		    out.println(" text-align: center;");
//		    out.println("position: absolute;"+"top:500px;"+"left:465px;");
		    out.println("margin-bottom:20px;");
	    	out.println("}");
	        out.println("</style>");
	        out.println("</head>");
	      
		    String username=request.getParameter("username");  
		    String password=request.getParameter("password");  
		        
		   
		    if(UserDAO.checklogin(username, password)){  
		    	
		        RequestDispatcher rd=request.getRequestDispatcher("home.jsp");  
		        rd.forward(request,response);  
		    }  
		    else{  

		        out.print("<h3>Sorry username or password error</h3>");  
		        RequestDispatcher rd=request.getRequestDispatcher("login.jsp");  
		        rd.include(request,response);  
		    }       
		    out.close();  
		    }  

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
