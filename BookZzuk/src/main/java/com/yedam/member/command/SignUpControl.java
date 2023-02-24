package com.yedam.member.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class SignUpControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub

		String id = req.getParameter("user_id"); //jsp에 name이랑 같아야함
		String pw = req.getParameter("user_pw");
		String nm = req.getParameter("user_name");
		String ad = req.getParameter("user_addr");
		String em = req.getParameter("user_email");
		String ph = req.getParameter("user_phone");
		String gr = req.getParameter("user_grade");
		

		MemberVO vo = new MemberVO();
		vo.setUserId(id);
		vo.setUserPw(pw);
		vo.setName(nm);
		vo.setAddr(ad);
		vo.setEmail(em);
		vo.setPhone(ph);
		vo.setGrade(gr);

		MemberService service = new MemberServiceImpl();
		String page = "";
		if (service.addMember(vo) > 0) {
			resp.sendRedirect("loginForm.do");
		} else {
			resp.sendRedirect("errorPage.do");
		}

		return "member/" + page + ".tiles";
	}

}
