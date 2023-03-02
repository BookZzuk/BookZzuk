package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class FindIdControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String em = req.getParameter("email");
		String na = req.getParameter("name");
		String ph = req.getParameter("phone");
		
		MemberVO vo = new MemberVO();
		
		MemberService service = new MemberServiceImpl();
		vo.setName(em);
		vo.setName(na);
		vo.setName(ph);
		

		
		return null;
	}
}