package com.yedam.book.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.book.service.BookService;
import com.yedam.book.service.BookServiceImpl;
import com.yedam.common.Command;
import com.yedam.common.PagingVO;
import com.yedam.review.service.ReviewService;
import com.yedam.review.service.ReviewServiceImpl;

public class BookDetailControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String sbid=req.getParameter("bid");
		int bid = Integer.parseInt(sbid) ;
		BookService service = new BookServiceImpl();
		ReviewService reviewSer = new ReviewServiceImpl();
		
		req.setAttribute("book", service.getBook(bid));
		req.setAttribute("related", service.getRelatedBook(bid));
		
		String nowPage = req.getParameter("nowPage");
		if(nowPage == null) {
			nowPage = "1";
		}
		PagingVO vo = new PagingVO(reviewSer.getReviewTotal(bid).size(), Integer.parseInt(nowPage), 1);
		req.setAttribute("review", reviewSer.getReview(bid, Integer.parseInt(nowPage)));
		req.setAttribute("paging", vo);
		
		return "book/bookDetail.tiles";
	}

}
