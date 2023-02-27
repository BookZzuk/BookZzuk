package com.yedam.book.command;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;
import com.yedam.book.vo.BookVO;
import com.yedam.common.Command;
import com.yedam.notice.service.NoticeService;
import com.yedam.notice.service.NoticeServiceImpl;

public class BookListControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookService service = new BookServiceImpl();
		HashMap<String, Object> map = new HashMap<String, Object>();
		String page = req.getParameter("page");
		String sortCol = req.getParameter("sortCol");
		String sortMod = req.getParameter("sortMod");
		if (page != null)
			map.put("page", page);
		else
			map.put("page", "1");

		if (sortCol != null)
			map.put("sortCol", sortCol);
		else
			map.put("sortCol", "title");
		
		if (sortMod != null)
			map.put("sortMod", sortMod);
		else
			map.put("sortMod", "desc");
		

		req.setAttribute("list", service.getBookList(map));

		return "book/bookGrid.tiles";
	}

}
