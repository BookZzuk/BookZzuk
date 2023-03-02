package com.yedam.member.command;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.member.service.MemberService;
import com.yedam.member.service.MemberServiceImpl;
import com.yedam.member.vo.MemberVO;

public class LoginControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("mid");
		String pw = req.getParameter("mpw");

		MemberVO vo = new MemberVO();
		vo.setUserId(id);
		vo.setUserPw(pw);

		MemberService service = new MemberServiceImpl();
		String page = "";
		if (service.login(vo) != null) {
			
			HttpSession session = req.getSession();
			MemberVO mvo = service.getMember(id);
			session.setAttribute("logName", mvo.getName());
			session.setAttribute("logId", mvo.getUserId());

			req.setAttribute("vo", mvo);
			
			page = "main/" + "main";
		} else {
			page = "member/" + "login";
			
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('아이디 또는 비밀번호를 잘못 입력했습니다.'); location.href='loginForm.do';</script>");
			out.flush();

		}
		return page + ".tiles";
	}

}