package com.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class JoinCon implements ICommand {
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String num = request.getParameter("num");
		String moveURL = null;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		

		MemberDTO dto = new MemberDTO(id, pw, name, email);
		MemberDAO dao = MemberDAO.getDAO();
		IdCheckCon idcheck = new IdCheckCon();
		
		dao.join(dto);
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
		}else {
			
		}
		return moveURL;
	}
}
