package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class JoinCon implements ICommand{
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");

		MemberDTO dto = new MemberDTO(id, pw, name, email);
//		MemberDAO dao = new MemberDAO();
		MemberDAO dao = MemberDAO.getDAO();
		dao.join(dto);
		
		moveURL= "Korea.jsp"; // 내가 이동할 주소를 다시 담아준다.
		
		return moveURL;
		}
}
