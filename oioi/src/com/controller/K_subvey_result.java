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
		
		String age= request.getParameter("age");
		String month= request.getParameter("month");
		String nation= request.getParameter("nation");
		String gender= request.getParameter("gender");
		String trip_type= request.getParameter("trip");
		String item= request.getParameter("item");
		String stay= request.getParameter("stay");
		String act= request.getParameter("act");

		
		out.print("<html>");
		out.print("<body>");

		//out.print(month);
		out.print("<p>" + "나이  : " + age + "<p>"); 
		out.print("<p>" + "달  : " +month + "<p>");
		out.print("<p>" + "국가  : " +nation + "<p>");
		out.print("<p>" + "성별   : " +gender + "<p>");
		out.print("<p>" + "여행형태  : " +trip_type + "<p>");
		out.print("<p>" + "쇼핑품목  : " +item + "<p>");
		out.print("<p>" + "숙박시설  : " +stay + "<p>");
		out.print("<p>" + "활동  : " +act + "<p>");
		
		out.print("</body>");
		out.print("</html>");
		
		
		
		
		
		
		
		
	}

}
