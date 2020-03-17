package com.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;

public class UpdateCon implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String num = request.getParameter("num");
		String moveURL = null;

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
//		System.out.println("접속한 Id : " + info.getId());

		String id = info.getId();
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");

		MemberDTO dto = new MemberDTO(id, pw, name, email);
//		MemberDAO dao = new MemberDAO();
		MemberDAO dao = MemberDAO.getDAO();
		int cnt = dao.update(dto); // 몇줄의 정보가 생겼는지 확인하면 되므로 int형

		if (cnt > 0) {
			session.setAttribute("info", dto);
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
