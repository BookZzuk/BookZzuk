package com.yedam.review.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;

public class ReviewAddFormControl implements Command {
	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String bid = req.getParameter("itemId");
		String title = req.getParameter("title");
		String orderNum = req.getParameter("orderNum");
		req.setAttribute("itemId", bid);
		req.setAttribute("title", title);
		req.setAttribute("orderNum", orderNum);
		
		return "review/reviewAddForm.tiles";
	}

}
