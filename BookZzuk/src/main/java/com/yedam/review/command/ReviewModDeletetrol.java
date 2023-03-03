package com.yedam.review.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.review.service.ReviewService;
import com.yedam.review.service.ReviewServiceImpl;

public class ReviewModDeletetrol implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String delNum = req.getParameter("delNum");
		
		ReviewService service = new ReviewServiceImpl();
		if(service.deleteReview(delNum) > 0) {
			return "{\"retCode\":\"Success\"}" + ".json";
		} else {
			return "{\"retCode\":\"Fail\"}" + ".json";
		}
	}

}
