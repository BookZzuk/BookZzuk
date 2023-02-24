package com.yedam.like.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.yedam.common.Command;
import com.yedam.like.service.LikeService;
import com.yedam.like.service.LikeServiceImpl;

public class LikeBookControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		String uid = (String) session.getAttribute("uid");
		
		LikeService service = new LikeServiceImpl();
		req.setAttribute("list", service.getLikeList(uid));
		
		return "main/likeBook.tiles";
	}

}
