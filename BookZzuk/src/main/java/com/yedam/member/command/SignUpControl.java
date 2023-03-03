package com.yedam.member.command;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Calendar;

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

		
		
		String id = req.getParameter("mid");
		String pw = req.getParameter("mpw");
		String nm = req.getParameter("user_name");
		
		//int age = Integer.parseInt(req.getParameter("age"));
		String user_birthday = req.getParameter("user_age");
		int user_year = Integer.parseInt(user_birthday.substring(0,4));
		Calendar cal = Calendar.getInstance();
		int year = cal.get(Calendar.YEAR);
		int ag = year - user_year + 1;
	
		System.out.println(user_birthday);
		//yyyy-mm-dd -> subString , Calender
		//user_birthday.substring(0,4);
		//int year = calendar.get(Calendar.YEAR);
	
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
			resp.setContentType("text/html; charset=UTF-8");
			PrintWriter out = resp.getWriter();
			out.println("<script>alert('회원가입을 축하합니다.'); location.href='loginForm.do';</script>");
			out.flush();
			
		} else {
			//resp.sendRedirect("errorPage.do");
			//page = "redirect:errorPage.do";
			page = "redirect:errorPage";
		}

		return page + ".tiles";
	}

}
