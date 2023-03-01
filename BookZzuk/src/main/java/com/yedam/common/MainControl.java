package com.yedam.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;
import com.yedam.member.vo.MemberVO;

public class MainControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookService service = new BookServiceImpl();
		HttpSession session = req.getSession();
		
		String uid = (String) session.getAttribute("uid");
		
		req.setAttribute("recomanList", service.recomanList(uid));
		req.setAttribute("muchSellList", service.muchSellList());
		req.setAttribute("newBookList", service.newBookList());
		req.setAttribute("review", service.getReview());
		
		req.setAttribute("main", "main");
		
		return "main/main.tiles";
	}

}
