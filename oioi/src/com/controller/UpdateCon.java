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
		String moveURL = null;

		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
//		System.out.println("접속한 Email : " + info.getEmail());

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
		}

		moveURL = "Korea.jsp";
		return moveURL;
	}

}
