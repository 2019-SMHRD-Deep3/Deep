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
		
		response.setCharacterEncoding("EUC-KR");
		request.setCharacterEncoding("EUC-KR");
		
		PrintWriter out = response.getWriter();
		
		String radioValue= request.getParameter("mon");

		
		System.out.println(request.getParameter(radioValue));
		
		out.print("<html>");
		out.print("<body>");

		out.print(radioValue);
		
		out.print("</body>");
		out.print("</html>");
	}

}
