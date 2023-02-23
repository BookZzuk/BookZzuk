package com.yedam.like.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.yedam.common.Command;
import com.yedam.like.service.LikeService;
import com.yedam.like.service.LikeServiceImpl;

public class LikeBookControl implements Command {

	@Override
	public String exec(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		LikeService service = new LikeServiceImpl();
		req.setAttribute("list", service.getLikeList());
		
		return "main/likeBook.tiles";
	}

}
