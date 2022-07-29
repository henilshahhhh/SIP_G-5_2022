package com.timetable.servlets;

import java.io.IOException;
import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.timetable.dao.SignupDao;

import com.timetable.entity.Users;
import com.timetable.helper.ConnectionProvider;

/**
 * Servlet implementation class SubchServlet
 */

public class SubchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubchServlet() {
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
		String subch = request.getParameter("sub");
		
		
		SignupDao dao = new SignupDao(ConnectionProvider.getConnection());
		System.out.println(subch);
		HttpSession s = request.getSession();

		Users users = (Users) s.getAttribute("currentUser");
	
		
		if (dao.savechoice(users.getuEmail(),subch)) {
			System.out.println("Done");
			response.sendRedirect("faculty.jsp");
		} else {
			System.out.println("error");
		}

		doGet(request, response);
	}

}
