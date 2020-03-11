package com.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import java.util.Locale;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.model.MemberDAO;
import com.model.MemberDTO;

import front.ICommand;


public class IdCheckCon implements ICommand{
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL = null;
		String id = request.getParameter("id");
		

		MemberDTO dto = new MemberDTO(id);
		MemberDAO dao = MemberDAO.getDAO();
		IdCheckCon idcheck = new IdCheckCon();
		
		boolean ischeck = dao.joinCheck(dto);

		Gson gson = new Gson();
		String value = gson.toJson(ischeck);
		
		return value;
	}

}
