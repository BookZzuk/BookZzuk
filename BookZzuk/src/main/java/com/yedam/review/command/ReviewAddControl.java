package com.yedam.review.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.review.service.ReviewService;
import com.yedam.review.service.ReviewServiceImpl;
import com.yedam.review.vo.ReviewVO;

public class ReviewAddControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("logId");

		String bid = req.getParameter("itemId");
		String orderNum = req.getParameter("orderNum");
		String rating = req.getParameter("rating");
		String review = req.getParameter("review");
		
		
		ReviewVO vo = new ReviewVO();
		vo.setItemId(Integer.parseInt(bid));
		vo.setUserId(id);
		vo.setOrderNum(orderNum);
		vo.setRating(Integer.parseInt(rating));
		vo.setReviewSubject(review);
		
		ReviewService service = new ReviewServiceImpl();
		service.addReview(vo);
		
		return "main.do";
	}

}
