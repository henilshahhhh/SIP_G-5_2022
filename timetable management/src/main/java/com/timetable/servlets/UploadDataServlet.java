package com.timetable.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.timetable.dao.FileuploadDao;
import com.timetable.entity.Messages;
import com.timetable.helper.ConnectionProvider;
import com.timetable.helper.Helper;

import java.io.File;

import java.io.PrintWriter;
import java.nio.file.Paths;

@MultipartConfig
/**
 * Servlet implementation class UploadDataServlet
 */
@WebServlet("/UploadDataServlet")
public class UploadDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UploadDataServlet() {
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
		
		String date = request.getParameter("date");
		String desc = request.getParameter("desc");
		String file = request.getParameter("file");
		System.out.println("hiii"+file);
		Part part = request.getPart("file");
        
        String fileName = part.getSubmittedFileName();
		  
		// TODO Auto-generated method stub
				
		
		System.out.println("The selected file name is : "+fileName);
		FileuploadDao mu = new FileuploadDao(ConnectionProvider.getConnection());
		boolean f = mu.uploadMyData(date,desc,fileName);

		if(f == true) 
		{
			//System.out.println("GET REAL PATH : "+request.getRealPath("/"));
			//String path = request.getRealPath("/") + "uploads" + File.separator + part.getSubmittedFileName();
			String path = "C:\\Users\\DHRUVIL\\eclipse-workspace\\timetable management\\src\\main\\webapp\\upload" + File.separator + part.getSubmittedFileName();
            Helper.saveFile(part.getInputStream(), path);
            System.out.println("done");
			//out.println("We Successfully Upload Data to server...");
			//System.out.println("message", fileName + " File uploaded successfully!");
			

			response.sendRedirect("home.jsp");
			
		}
		else
		{
			System.out.println("error");
			System.out.println("Opps something went wrong...!");
		}

		doGet(request, response);
	}

}
