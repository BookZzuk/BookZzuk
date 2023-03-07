package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;


public class IdCheckControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("id");
		MemberService service = new MemberServiceImpl();
		System.out.println(service.getMember(id));
		if(service.getMember(id) == null) {
			return "{\"retCode\":\"Success\"}" + ".json";
		}else {		
		return "{\"retCode\":\"Fail\"}" + ".json";
		
		
	}

	}
}
