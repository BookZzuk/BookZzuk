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
		int ag = 0; //현재날짜 - 입력한 날짜를 연도만 표기 (또는 +1)
		String ad = req.getParameter("user_addr");
		String em = req.getParameter("user_email");
		String ph = req.getParameter("user_phone");

		MemberVO vo = new MemberVO();
		vo.setUserId(id);
		vo.setUserPw(pw);
		vo.setName(nm);
		vo.setAge(ag);
		vo.setAddr(ad);
		vo.setEmail(em);
		vo.setPhone(ph);

		MemberService service = new MemberServiceImpl();
		String page = "";
		if (service.addMember(vo) > 0) {
			//resp.sendRedirect("loginForm.do");
			//page = "redirect:loginForm.do";
			//page = "redirect:login";
			page = "member/" + "login";
		} else {
			//resp.sendRedirect("errorPage.do");
			//page = "redirect:errorPage.do";
			page = "redirect:errorPage";
		}

		return page + ".tiles";
	}

}
