package thi.demo.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import thi.demo.Data.UserDAO;

import thi.demo.model.Users;


@WebServlet("/Registerservlet")
public class Registerservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private UserDAO userR;

    public void init() {
        userR = new UserDAO();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
       
        Users user = new Users();
        user.setFirstname(firstname);
        user.setLastname(lastname);	
        user.setUsername(username);
        user.setPassword(password);
      
        try {
            userR.insertUser(user);
        } catch (Exception e) {
         
            e.printStackTrace();
        }

        response.sendRedirect("login.jsp");
        
	}
 }

