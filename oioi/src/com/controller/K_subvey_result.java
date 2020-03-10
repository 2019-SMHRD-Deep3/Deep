package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/K_subvey_result")
public class K_subvey_result extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setCharacterEncoding("euc-kr");
		request.setCharacterEncoding("euc-kr");
		
		PrintWriter out = response.getWriter();
		
		String month= request.getParameter("month");
		String gender= request.getParameter("gender");
		
		System.out.println(request.getParameter(month));
		System.out.println(request.getParameter(gender));
		
		out.print("<html>");
		out.print("<body>");

		out.print(month);
		out.print(gender);
		
		out.print("</body>");
		out.print("</html>");
	}

}
