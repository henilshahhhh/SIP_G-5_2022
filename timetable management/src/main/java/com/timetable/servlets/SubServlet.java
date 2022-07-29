package com.timetable.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.timetable.dao.SubjectDao;
import com.timetable.entity.Subject;
import com.timetable.helper.ConnectionProvider;

/**
 * Servlet implementation class SubServlet
 */

public class SubServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SubServlet() {
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

		String sname = request.getParameter("sname");
		int sem = Integer.valueOf(request.getParameter("sem"));
		int scredit = Integer.valueOf(request.getParameter("credit"));
	
		
	

		Subject subject = new Subject(sname, sem, scredit);
		System.out.println(subject);
		SubjectDao dao = new SubjectDao(ConnectionProvider.getConnection());
		System.out.println(sname + "henil" + sem + "---" + scredit );

		if (dao.saveSub(subject)) {
			System.out.println("Done");
			response.sendRedirect("re-sub.jsp");
		} else {
			System.out.println("error");
		}
		doGet(request, response);
	}

}
