package com.yedam.common;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;

public class MainControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookService service = new BookServiceImpl();
		//req.setAttribute("list", service.getBookList());
		
		req.setAttribute("main", "main");
		
		return "main/main.tiles";
	}

}
