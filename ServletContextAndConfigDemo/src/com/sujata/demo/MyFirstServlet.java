package com.sujata.demo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//Giving Comments for Demonstrating Git
public class MyFirstServlet extends HttpServlet {
	//Something else for commit
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		
		ServletContext context=getServletContext();
		String na=context.getInitParameter("name");
		String tec=context.getInitParameter("technology");
		
		request.getRequestDispatcher("./index.html").include(request, response);
		
		pw.println("<HTML>");
		pw.println("<BODY>");
		pw.println("<H3> First Context Parameter value : "+na+"</h3>");
		pw.println("<H3> Second Context Parameter value : "+tec+"</h3>");
		
		ServletConfig config=getServletConfig();
		pw.println("<H3> First Config Parameter value : "+config.getInitParameter("name")+"</h3>");
		pw.println("<H3> Second Context Parameter value : "+config.getInitParameter("location")+"</h3>");
		pw.println("</BODY>");
		pw.println("</HTML>");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doGet(request, response);
	}

}
