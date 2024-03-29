package com.yedam.book.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;
import com.yedam.common.Command;

public class BookDeleteControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String sbid=req.getParameter("bid");
		int bid = Integer.parseInt(sbid) ;
		BookService service = new BookServiceImpl();
		service.remBook(bid);
		return "bookList.do";
	}

}
