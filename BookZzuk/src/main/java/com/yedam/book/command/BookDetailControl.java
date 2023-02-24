package com.yedam.book.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;
import com.yedam.common.Command;

public class BookDetailControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sbid=req.getParameter("bid");
		int bid = Integer.parseInt(sbid) ;

		BookService service = new BookServiceImpl();

		req.setAttribute("book", service.getBook(bid));
		req.setAttribute("related", service.getRelatedBook(bid));
		return "book/bookDetail.tiles";
	}

}
