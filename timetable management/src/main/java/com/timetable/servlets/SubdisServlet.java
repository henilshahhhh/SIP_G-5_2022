package com.timetable.servlets;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.timetable.dao.SignupDao;
import com.timetable.dao.SubjectDao;
import com.timetable.helper.ConnectionProvider;

/**
 * Servlet implementation class SubdisServlet
 */

public class SubdisServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubdisServlet() {
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
		String subject = request.getParameter("choice");
		System.out.println(subject);
		SignupDao s = new SignupDao(ConnectionProvider.getConnection());
		ArrayList<String> se = s.getdata(subject);
		System.out.println("---"+se);
		SubjectDao sd = new SubjectDao(ConnectionProvider.getConnection());
		//sd.savestatus(subject);
		//response.sendRedirect("re-sub.jsp");
		
		doGet(request, response);
	}

}
