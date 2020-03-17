package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class LoginCon implements ICommand {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String num = request.getParameter("num");
		String moveURL = null;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		MemberDTO dto = new MemberDTO(id, pw);
//		MemberDAO dao = new MemberDAO();
		MemberDAO dao = MemberDAO.getDAO();

		MemberDTO info = dao.login(dto);

		if (info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			if(num.equals("1")) {
				moveURL = "Korea.jsp";
				
			}else if(num.equals("2")) {
				moveURL = "Japan.jsp";
				
			}else if(num.equals("3")) {
				moveURL = "China.jsp";
				
			}else if(num.equals("4")) {
				moveURL = "English.jsp";
				
			}else if(num.equals("5")) {
				moveURL = "French.jsp";
				
			}else if(num.equals("6")) {
				moveURL = "Spain.jsp";
			}
		}else {
			if(num.equals("1")) {
				moveURL = "Korea.jsp";
			}else if(num.equals("2")) {
				moveURL = "Japan.jsp";
			}else if(num.equals("3")) {
				moveURL = "China.jsp";
			}else if(num.equals("4")) {
				moveURL = "English.jsp";
			}else if(num.equals("5")) {
				moveURL = "French.jsp";
			}else if(num.equals("6")) {
				moveURL = "Spain.jsp";
			}
			
			
		}
		return moveURL;
	}
}

















