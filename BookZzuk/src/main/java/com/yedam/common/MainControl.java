package com.yedam.common;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;
import com.yedam.book.vo.BookVO;

public class MainControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		BookService service = new BookServiceImpl();
		HttpSession session = req.getSession();
		
		String uid = (String) session.getAttribute("logId");
		
		List<BookVO> reco = service.recomanList(uid);
		if(reco.size() == 0) {
			req.setAttribute("recomanList", service.recomanList2());
		} else {
			req.setAttribute("recomanList", reco);			
		}
		List<BookVO> list = service.muchSellList();
		for(BookVO temp : list) {
			String category = temp.getCategory();
			String newCate = category.replace("/", "_");
			temp.setCategory(newCate);
		}
		req.setAttribute("muchSellList", list);
		req.setAttribute("newBookList", service.newBookList());
		req.setAttribute("review", service.getReview());
		
		req.setAttribute("main", "main");
		
		return "main/main.tiles";
	}

}
