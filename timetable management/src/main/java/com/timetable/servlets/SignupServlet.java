package com.timetable.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.timetable.dao.SignupDao;
import com.timetable.entity.Messages;
import com.timetable.entity.Users;
import com.timetable.helper.ConnectionProvider;

/**
 * Servlet implementation class SignupServlet
 */

public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = response.getWriter();
		String pas = request.getParameter("psw");
		String cpas = request.getParameter("cpsw");
		//out.println(pas + " "+cpas);
		
		if(pas.equals(cpas))
		{
			String name = request.getParameter("uname"); 
			String email = request.getParameter("eid");
			String desg = request.getParameter("Designation");
			//String[] subje = request.getParameterValues("subje");
			System.out.println("---"+ desg);
			if(desg.equals("faculty"))
			{
				
			//String subject = "";
			//for(String s:subje) {
				//subject = subject + s + " ";
			
			//}System.out.println(subject);
			Users users = new Users(name,email,pas,cpas,desg);
			SignupDao sd = new SignupDao(ConnectionProvider.getConnection());
			if(sd.insertData(users))
			{
				Messages msg = new Messages("You successfully Signup", "success", "success");
				HttpSession s = request.getSession();
				s.setAttribute("msg", msg);
				response.sendRedirect("login.jsp");
			}
			else {
				System.out.println("Invalid faculty");
				response.sendRedirect("signup.jsp");
			}
			}
			else
			{
				//String subject="";
				//subject = subject + "null";
				Users users = new Users(name,email,pas,cpas,desg);
			
				SignupDao sd = new SignupDao(ConnectionProvider.getConnection());
				if(sd.insertData(users))
				{
					Messages msg = new Messages("You successfully Signup", "success", "success");
					HttpSession s = request.getSession();
					s.setAttribute("msg", msg);
					response.sendRedirect("login.jsp");
				}
				else {
					System.out.println("Invalid lab");
					response.sendRedirect("signup.jsp");
				}
			}
			//create user object and set all data to the object
			
			//create user dao object
			
		}
		else {
			System.out.println("Invalid data");
			response.sendRedirect("signup.jsp");
		}
		
		doGet(request, response);
	}

}
