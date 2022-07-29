package com.timetable.servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.timetable.dao.SignupDao;
import com.timetable.entity.Messages;
import com.timetable.entity.Users;
import com.timetable.helper.ConnectionProvider;



public class LoginServlet extends HttpServlet {
	

	private static final long serialVersionUID = 1L;

	/**
		 * @see HttpServlet#HttpServlet()
		 */
		public LoginServlet() {
			super();
			// TODO Auto-generated constructor stub
		}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		// login
		// fetch username and password from request
		//int userId = Integer.valueOf(request.getParameter("uname"));
		String userEmail = request.getParameter("email");
		String userPassword = request.getParameter("password");
		String userDesg = request.getParameter("Desg");
		
		SignupDao dao = new SignupDao(ConnectionProvider.getConnection());

		Users u = dao.getUserByEmailAndPassword(userEmail,userPassword,userDesg);
		
		//System.out.println(userEmail+userPassword+userDesg);
		
		if (u == null) {
			// login.................
			// error///
			System.out.println("Invalid Details..try again");
			
			Messages msg = new Messages("Invalid Details..try again", "error", "error");
			HttpSession s = request.getSession();
			s.setAttribute("msg", msg);
			response.sendRedirect("login.jsp");

		} else {
			// ......
//	          login success
			HttpSession s = request.getSession();
			s.setAttribute("currentUser", u);
			System.out.println("Done By loginServlet");
			if(userDesg.equals("faculty")) 
			{
				String id = u.getuEmail();
				if(dao.subchoice(id)==true) {
				response.sendRedirect("faculty.jsp");
				System.out.println("done");}
				else {
					response.sendRedirect("subch.jsp");

				}
			
					

				
			}
			else if(userDesg.equals("admin"))
			{
				response.sendRedirect("admin.jsp");
			}
			else if(userDesg.equals("laboperator"))
			{
				response.sendRedirect("lab.jsp");
			}
			else
			{
			response.sendRedirect("home.jsp");
			}
		}
	}

}
