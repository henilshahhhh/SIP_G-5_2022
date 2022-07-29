package com.timetable.servlets;

import java.io.IOException;
import java.sql.Array;

import javax.servlet.ServletException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.timetable.dao.SignupDao;
import com.timetable.dao.SubjectDao;
import com.timetable.helper.ConnectionProvider;

/**
 * Servlet implementation class RemoveFac
 */

public class SelectFac extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public SelectFac() {
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
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String[] fnae=request.getParameterValues("val");
		String[] workloa = request.getParameterValues("wke");
		String[] workload = new String[workloa.length];
		//workload[0]="darshil";
		for(int i=0;i<fnae.length;i++)
		{
		System.out.println("fnae--"+fnae[i]);
		}for(int i=0;i<workload.length;i++)
		{
			System.out.println("workloa----"+workload[i]);
		}
		int j = 0;
		for(int i=0;i<workloa.length;i++) {
			System.out.println("workloa::"+ workloa[i]);

			if(workloa[i]!="") {
				workload[j] = workloa[i];
				j++;
			}
		}
		
		String sname=request.getParameter("snm");
		for(int i=0;i<workload.length;i++)
		{
			System.out.println("workload----"+workload[i]);
		}
		
		//System.out.println("val:"+fname+"work:"+workload1+"snm"+sname);
		SubjectDao sf = new SubjectDao(ConnectionProvider.getConnection());
		String fname = "";
		String workload1 = "";
	
		for(int i=0;i<fnae.length;i++) {
			 fname = fname+" "+fnae[i]+",";
			 workload1 =workload1+" "+ workload[i]+",";
		}
		boolean f=sf.savefac(fname,workload1,sname);
		if(f==true) {
			
			response.sendRedirect("showfac.jsp");
		}
		else {
			System.out.println("not execute");
		}
		
		doGet(request, response);
	}

}
