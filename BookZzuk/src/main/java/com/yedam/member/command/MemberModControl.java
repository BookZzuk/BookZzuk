package com.yedam.member.command;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.yedam.common.Command;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class MemberModControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("logId");

		String userId = req.getParameter("userId");
		String userPw = req.getParameter("userPw");
		String userName = req.getParameter("userName");
		String userAddr = req.getParameter("userAddr");
		String userPhone = req.getParameter("userPhone");
		String userEmail = req.getParameter("userEmail");
		String userGrade = req.getParameter("userGrade");

		MemberVO vo = new MemberVO();

		vo.setUserId(userId);
		vo.setUserPw(userPw);
		vo.setName(userName);
		vo.setAddr(userAddr);
		vo.setPhone(userPhone);
		vo.setEmail(userEmail);
		vo.setGrade(userGrade);

		MemberService service = new MemberServiceImpl();

		service.modifyMember(vo);

		 MemberVO member = service.getMember(id);
		 req.setAttribute("vo", member);

	
		return "memberInfo.do";

	}

}
